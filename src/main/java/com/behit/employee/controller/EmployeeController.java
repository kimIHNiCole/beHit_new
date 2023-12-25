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

import com.behit.employee.service.EmployeeService;

@Controller
public class EmployeeController {

	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired EmployeeService employeeService;
	
	@PostMapping(value = "/join.do")
	public String joinDo(@RequestParam HashMap<String, Object> params) {
		logger.info("직원 등록 요청 || params = "+params);
		String page = "redirect:/";
		int row = employeeService.join(params);
		if(row > 0 ) {
			page="home";
		}
		return "home";
	}
	
	
}
