package com.behit.employee.controller;

import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.behit.employee.service.EmployeeService;

@Controller
public class EmployeeController {

	Logger logger = LoggerFactory.getLogger(getClass());

	@Autowired
	EmployeeService employeeService;

	@GetMapping(value = "/empadd.go")
	public String empaddgo() {
		return "redirect:/views/employee/employee_add.jsp";
	}

	// 추후 경로 수정
	@PostMapping(value = "/views/employee/join.do")
	public ModelAndView empjoin(@RequestParam HashMap<String, Object> params) {

		ModelAndView mav = new ModelAndView();

		logger.info("params: " + params);
		logger.info("params: " + params.get("mobile_phone"));

		employeeService.join(params);

		mav.setViewName("redirect:/emplist.go");

		return mav;
	}

	@GetMapping(value = "/emplist.go")
	public String emplistgo() {
		return "redirect:/views/employee/employee_list.jsp";
	}

	@GetMapping(value = "/views/employee/emplist.do")
	@ResponseBody
	public HashMap<String, Object> emplist(@RequestParam String page) {

		return employeeService.list(page);
	}

	@GetMapping(value = "/empdetail.go")
	public String empdetailgo() {
		return "redirect:/views/employee/employee_detail.jsp";
	}
}
