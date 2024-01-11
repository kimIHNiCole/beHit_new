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
import com.behit.employee.service.VacationService;

@Controller
public class VacationController {

	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired VacationService vacationService;
	
	@GetMapping(value="/employee/vacation_list.go")
	@ResponseBody
	public ModelAndView vacalist(HttpSession session) {
		
		EmployeeDTO loginInfo = (EmployeeDTO) session.getAttribute("loginInfo");
		String login_id = loginInfo.getEmp_id();
		logger.info("로그인 아이디 : "+login_id);
		
		return vacationService.vacalist();
	}
	
	@GetMapping(value="/employee/vacadetail")
	public ModelAndView vacadetail(@RequestParam String emp_id) {
		return vacationService.detail(emp_id);
	}
	
	@PostMapping(value="/employee/vacaChange.do")
	public ModelAndView vacaChange(@RequestParam HashMap<String, Object> params, HttpSession session) {
		
		logger.info("params : "+params);
		
		EmployeeDTO loginInfo = (EmployeeDTO) session.getAttribute("loginInfo");
		String login_id = loginInfo.getEmp_id();
		logger.info("로그인 아이디 : "+login_id);
		
		params.put("login_id", login_id);
		
		return vacationService.vacaChange(params);
	}
}
