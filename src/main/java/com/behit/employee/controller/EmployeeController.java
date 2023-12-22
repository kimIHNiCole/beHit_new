package com.behit.employee.controller;

import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.behit.employee.service.EmployeeService;

@Controller
public class EmployeeController {

	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired EmployeeService employeeService;
	
	// 추후 경로 수정
	@PostMapping(value = "/views/employee/join.do")
	public ModelAndView empjoin(@RequestParam HashMap<String, Object> params) {
		
		ModelAndView mav = new ModelAndView();
		
		logger.info("params: "+params);
		logger.info("params: "+params.get("mobile_phone"));
		
		employeeService.join(params);
		
		mav.setViewName("employee/employee_list");

		
		return mav;
	}
	
}
