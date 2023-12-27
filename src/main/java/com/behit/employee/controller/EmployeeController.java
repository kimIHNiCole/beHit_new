package com.behit.employee.controller;

import java.util.HashMap;

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
	public HashMap<String, Object> emplist(@RequestParam String page) {

		return employeeService.list(page);
	}


	 @GetMapping(value = "/employee/empdetail") 
	 public String empdetail(@RequestParam String emp_id, Model model) {
		 
		 EmployeeDTO dto = employeeService.detail(emp_id);
		 
		 model.addAttribute("empdetail", dto);
		 
		 return "employee/employee_detail"; 
	 }
	 
	 

}
