package com.behit.employee.controller;

import java.util.HashMap;
import java.util.Objects;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.behit.employee.dto.EmployeeDTO;
import com.behit.employee.service.EmployeeService;

@Controller
public class EmployeeController {

	Logger logger = LoggerFactory.getLogger(getClass());

	@Autowired
	PasswordEncoder encoder;

	@Autowired
	EmployeeService employeeService;

	@GetMapping(value = "/home.go")
	public String homeGo() {
		logger.info("home page로 이동");
		return "home";
	}

	@GetMapping(value = "/empadd.go")
	public String empAddGo() {
		logger.info("직원 등록 페이지로 이동");
		return "employee/employee_add";
	}

	// 추후 경로 수정
	@PostMapping(value = "/empadd.do")
	public ModelAndView empjoin(@RequestParam HashMap<String, Object> params) {

		ModelAndView mav = new ModelAndView();

		logger.info("params: " + params);
		logger.info("params: " + params.get("mobile_phone"));

		String hash = encoder.encode((CharSequence) params.get("password"));
		params.put("password", hash);	
		logger.info("encoded password : " + params.get("password"));
		employeeService.join(params);

		mav.setViewName("employee/employee_list");

		return mav;
	}

	@GetMapping(value = "/emplist.go")
	public String emplistgo() {

		return "employee/employee_list";

	}

	@GetMapping(value = "/employee/emplist.do")
	@ResponseBody
	public HashMap<String, Object> emplist(@RequestParam String page, HttpSession session) {
		
		EmployeeDTO loginInfo = (EmployeeDTO) session.getAttribute("loginInfo");
		String login_id = loginInfo.getEmp_id();
		logger.info("로그인 아이디 : "+login_id);

		return employeeService.list(page);
	}


	 @GetMapping(value = "/employee/empdetail") 
	 public ModelAndView empdetail(@RequestParam String emp_id, Model model) {
		 
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
	 
	 

}
