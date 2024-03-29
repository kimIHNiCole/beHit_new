package com.behit.employee.controller;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.behit.employee.dto.EmployeeDTO;
import com.behit.employee.service.EmployeeService;
import com.behit.util.service.UtilService;

@Controller
public class EmployeeController {

	Logger logger = LoggerFactory.getLogger(getClass());

	@Autowired
	PasswordEncoder encoder;

	@Autowired
	EmployeeService employeeService;
	
	@Autowired 
	UtilService utilService;

	@GetMapping(value = "/employee/employee_list.go")
	public String empListGo() {
		logger.info("직원 리스트 페이지로 이동");
		return "employee/employee_list";
	}
	

	@GetMapping(value = "/employee/employee_add.go")
	public String empAddGo() {
		logger.info("직원 등록 페이지로 이동");
		return "employee/employee_add";
	}

	// 추후 경로 수정
	@PostMapping(value = "/employee/empadd.do")
	@ResponseBody
	public HashMap<String, Object> empjoin(@RequestParam HashMap<String, Object> params, HttpSession session, 
			@RequestParam("uploadFile") MultipartFile uploadFile, RedirectAttributes rAttr) throws Exception {


		logger.info("params: " + params);
		
		EmployeeDTO loginInfo = (EmployeeDTO) session.getAttribute("loginInfo");
		String login_id = loginInfo.getEmp_id();
		logger.info("로그인 아이디 : "+login_id);
		

		String hash = encoder.encode((CharSequence) params.get("password"));
		params.put("password", hash);
		params.put("login_id", login_id);
		logger.info("encoded password : " + params.get("password"));
		
		
		
			String emp_id = (String) params.get("emp_id");
			HashMap<String, Object> file = new HashMap<String, Object>();
			file.put("login_id", login_id);
			file.put("emp_id", emp_id);
			file.put("file_kind", 5);
			utilService.upload(uploadFile, file);	
			
			employeeService.join(params);
			
			String hiredateString = (String) params.get("hiredate");
			LocalDate currentDate = LocalDate.parse(hiredateString);
			List<String> weekdaysList = calculateWeekdays(currentDate);
			logger.info("weekdaysList : "+weekdaysList);
			for (String day : weekdaysList) {
				String workstart = day+" "+"09:00:00";
				String workend = day+" "+"18:00:00";
				employeeService.defaultwork(emp_id, day, workstart, workend);
			}
			
			HashMap<String, Object> map = new HashMap<>();
			map.put("status", "success");

		return map; 
	}

	@GetMapping(value = "/employee/empflist.do")
	@ResponseBody
	public HashMap<String, Object> empflist(@RequestParam String page, HttpSession session) {
		
		EmployeeDTO loginInfo = (EmployeeDTO) session.getAttribute("loginInfo");
		String login_id = loginInfo.getEmp_id();
		int login_dept = loginInfo.getEmp_dept_idx();
		logger.info("로그인 아이디 : "+login_id);

		return employeeService.flist(page, login_dept);
	}
	
	@GetMapping(value = "/employee/empslist.do")
	@ResponseBody
	public HashMap<String, Object> empslist(@RequestParam String page, HttpSession session) {
		
		EmployeeDTO loginInfo = (EmployeeDTO) session.getAttribute("loginInfo");
		String login_id = loginInfo.getEmp_id();
		logger.info("로그인 아이디 : "+login_id);

		return employeeService.slist(page);
	}


	 @GetMapping(value = "/employee/empdetail") 
	 public ModelAndView empdetail(@RequestParam String emp_id) {
		 
		 return employeeService.detail(emp_id);
	 }
	 
	 // 기본정보 수정
	 @PostMapping(value="/employee/bempupdate.do")
	 public ModelAndView empupdate(@RequestParam HashMap<String, Object> params, HttpSession session) {

		 
		 logger.info("params : "+params);
		 
		 EmployeeDTO loginInfo = (EmployeeDTO) session.getAttribute("loginInfo");
		 String login_id = loginInfo.getEmp_id();
		 logger.info("로그인 아이디 : "+login_id);
		 
		 params.put("login_id", login_id);
		 
		 if (params.get("password") != null) {
			 
			 String hash = encoder.encode((CharSequence) params.get("password"));
			 params.put("password", hash);	
		 }
		 
		 return employeeService.bupdate(params);
	 }
	 
	 // 상세정보 수정
	 @PostMapping(value="/employee/dempupdate.do")
	 public ModelAndView dempupdate(@RequestParam HashMap<String, Object> params, HttpSession session) {

		 
		 logger.info("params : "+params);
		 
		 EmployeeDTO loginInfo = (EmployeeDTO) session.getAttribute("loginInfo");
		 String login_id = loginInfo.getEmp_id();
		 logger.info("로그인 아이디 : "+login_id);
		 
		 params.put("login_id", login_id);
		 
		 return employeeService.dupdate(params);
	 }
	 
	 // 부서정보 수정
	 @PostMapping(value="/employee/pempupdate.do")
	 public ModelAndView pempupdate(@RequestParam HashMap<String, Object> params, HttpSession session) {

		 
		 logger.info("params : "+params);
		 
		 EmployeeDTO loginInfo = (EmployeeDTO) session.getAttribute("loginInfo");
		 String login_id = loginInfo.getEmp_id();
		 logger.info("로그인 아이디 : "+login_id);
		 
		 params.put("login_id", login_id);
		 
		 return employeeService.pupdate(params);
	 }
	 
	 @GetMapping(value="/employee/chkClear.do")
	 public ModelAndView chkClear(@RequestParam String emp_id) {
		 
		 ModelAndView mav = new ModelAndView();
		 
		 logger.info("emp_id : "+ emp_id);	 
		 
		 employeeService.chkClear(emp_id);
		 
		 mav.setViewName("employee/employee_list");
		 
		 return mav;
	 }
	 
	 private List<String> calculateWeekdays(LocalDate startDate) {
	     List<String> weekdaysList = new ArrayList<>();

	     // 한 달 동안 반복
	     for (int i = 0; i < 30; i++) {
	         // 주말이 아니라면 리스트에 추가
	         if (startDate.getDayOfWeek() != DayOfWeek.SATURDAY && startDate.getDayOfWeek() != DayOfWeek.SUNDAY) {
	             weekdaysList.add(startDate.format(DateTimeFormatter.ISO_DATE));
	         }

	         // 다음 날짜로 이동
	         startDate = startDate.plusDays(1);
	     }

	     return weekdaysList;
	 }
	 
	 
	 @GetMapping(value="/employee/idChk.do")
	 @ResponseBody
	 public HashMap<String, Object> idChk(@RequestParam String emp_id){
		 HashMap<String, Object> map = new HashMap<String, Object>();
		 
		 boolean use = employeeService.idChk(emp_id);
		 
		 map.put("use", use);
		 
		 return map;
	 }

}
