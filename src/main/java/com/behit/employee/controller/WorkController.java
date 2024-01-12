package com.behit.employee.controller;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.behit.employee.dto.EmployeeDTO;
import com.behit.employee.service.WorkService;

@Controller
public class WorkController {

	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired
	WorkService workService;
	
	@GetMapping(value="/employee/workHour_list.go")
	public String workHour_list() {
		return "/employee/workHour_list";
	}
	
	// 내 근태관리 시작 리스트
    @GetMapping(value="/myHr/mhr_timeline.go")
    @ResponseBody
    public ModelAndView timeNowList(HttpSession session){
    	
		EmployeeDTO loginInfo = (EmployeeDTO) session.getAttribute("loginInfo");
		String login_id = loginInfo.getEmp_id();
		logger.info("로그인 아이디 : "+login_id);
    	
    	logger.info("컨트롤러 접근");
    	
    	LocalDate currentDate = LocalDate.now();

    	String year = String.valueOf(currentDate.getYear());
    	String month = String.format("%02d", currentDate.getMonthValue());

    	String workmonth = year + '-' + month;
    	logger.info("workmonth : {} ",workmonth);

		return workService.timeNowList(login_id, workmonth);
    }
	
	//근태현황 리스트
	@GetMapping(value="/worklist.do")
	@ResponseBody
	public HashMap<String, Object> worklist(@RequestParam String date, @RequestParam String page){
		
		logger.info("컨트롤러 접근");
		logger.info("date : "+date);
		
		return workService.worklist(date, page);
	}
	
	// 근태현황 상세보기
	@GetMapping(value="/myHr/workdetail")
	public ModelAndView vacadetail(HttpSession session) {
		
		EmployeeDTO loginInfo = (EmployeeDTO) session.getAttribute("loginInfo");
		String login_id = loginInfo.getEmp_id();
		logger.info("로그인 아이디 : "+login_id);
		
		return workService.detail(login_id);
	}
	
	// 근태관리 날짜 선택
	@PostMapping(value="/myHr/selectday")
	public String selectday(@RequestParam String worktime, @RequestParam String workdate, HttpSession session) {
		
		HashMap<String, Object> commute = new HashMap<String, Object>();

		EmployeeDTO loginInfo = (EmployeeDTO) session.getAttribute("loginInfo");
		String login_id = loginInfo.getEmp_id();
		logger.info("로그인 아이디 : "+login_id);
		
		String[] timeArray = worktime.split("~");
		String work_start_time =workdate+" "+timeArray[0].trim();
		String work_end_time = workdate+" "+timeArray[1].trim();
		
		commute.put("login_id", login_id);
		commute.put("workdate", workdate);
		commute.put("work_start_time", work_start_time);
		commute.put("work_end_time", work_end_time);
		
		logger.info("commute : "+commute);
		
		boolean workChk = workService.workChk(login_id, workdate);
		
		logger.info("workChk : "+workChk);
		
		if (workChk) {
			workService.updateday(commute);
		} else {
			workService.selectday(commute);
		}	
		return "redirect:/myHr/mhr_timeline.go";
	}

	// 근태 현황 모달 리스트
	@GetMapping(value="/employee/workmodal.do")
	@ResponseBody
	public HashMap<String, Object> workmodallist(
			@RequestParam String emp_id, @RequestParam String modaldate){
		
		return workService.workmodal(emp_id, modaldate);
	}
	
	// 평일 계산
    @PostMapping("/myHr/selectmonth")
    public String processMonth(@RequestParam String workmonth, @RequestParam String worktime, HttpSession session) {
        // Calendar 객체 생성 및 월 설정
    	HashMap<String, Object> commute = new HashMap<String, Object>();
		EmployeeDTO loginInfo = (EmployeeDTO) session.getAttribute("loginInfo");
		String login_id = loginInfo.getEmp_id();
		logger.info("로그인 아이디 : "+login_id);
		commute.put("login_id", login_id);
    	
		String[] monthArray = workmonth.split("-");
		logger.info("monthArray : " + Arrays.toString(monthArray));
		String stringmonth = monthArray[1].trim();
		int month = Integer.parseInt(stringmonth);
	
		String[] timeArray = worktime.split("~");

		
        Calendar calendar = Calendar.getInstance();
        calendar.set(Calendar.MONTH, month - 1); // Calendar 클래스의 월은 0부터 시작하므로 -1 해줌
        
        
        Calendar today = Calendar.getInstance();
        today.setTime(new Date());

        // 배열에 평일 추가
        List<String> weekdays = new ArrayList<>();

        // 월의 마지막 날짜까지 반복
        int lastDay = calendar.getActualMaximum(Calendar.DAY_OF_MONTH);
        for (int day = 1; day <= lastDay; day++) {
            calendar.set(Calendar.DAY_OF_MONTH, day);

            // 주중(월요일(2)부터 금요일(6)까지)인 경우에만 배열에 추가
            int dayOfWeek = calendar.get(Calendar.DAY_OF_WEEK);
            
            if (dayOfWeek >= Calendar.MONDAY && dayOfWeek <= Calendar.FRIDAY
            			&& calendar.getTime().compareTo(today.getTime()) >= 0) {
            	String formattedDay = String.format("%02d", day);
                weekdays.add(formattedDay);
            }
        }
        logger.info("weekdays : "+weekdays);
        
        for (String day : weekdays) {
            String workdate = workmonth+"-"+day;
            logger.info("workdate : "+workdate);
            
			String work_start_time =workdate+" "+timeArray[0].trim();
			String work_end_time = workdate+" "+timeArray[1].trim();
			commute.put("work_start_time", work_start_time);
			commute.put("work_end_time", work_end_time);
    		commute.put("workdate", workdate);
    		
    		boolean workChk = workService.workChk(login_id, workdate);
    		
    		if (workChk) {
    			workService.updateday(commute);
    		} else {
    			workService.selectday(commute);
    		}
        }
        return "redirect:/myHr/mhr_timeline.go";
    }
	
    @PostMapping(value="/timelineList")
    @ResponseBody
    public HashMap<String, Object> timelineList(HttpSession session, @RequestParam String workmonth){
    	
		EmployeeDTO loginInfo = (EmployeeDTO) session.getAttribute("loginInfo");
		String login_id = loginInfo.getEmp_id();
		logger.info("로그인 아이디 : "+login_id);
    	
    	logger.info("컨트롤러 접근");
    	
		return workService.timelineList(login_id, workmonth);
    	
    }
    


}
