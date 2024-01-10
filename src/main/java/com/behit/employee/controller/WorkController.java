package com.behit.employee.controller;

import java.util.HashMap;

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
		return "/myHr/mhr_timeline";
	}

	// 근태 현황 모달 리스트
	@GetMapping(value="/employee/workmodal.do")
	@ResponseBody
	public HashMap<String, Object> workmodallist(@RequestParam String emp_id, HttpSession session){
		
		return workService.workmodal(emp_id);
	}
}
