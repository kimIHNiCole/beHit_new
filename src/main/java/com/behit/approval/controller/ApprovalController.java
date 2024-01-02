package com.behit.approval.controller;

import java.sql.Date;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import com.behit.approval.service.ApprovalService;
import com.behit.employee.dto.EmployeeDTO;

@Controller
public class ApprovalController {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired
	ApprovalService service;

	@GetMapping(value="/approval/approval_write.go/{form}")
	public ModelAndView approval_write(@PathVariable String form,HttpSession session) {
		ModelAndView mav = new ModelAndView("approval/approval_write");
		EmployeeDTO loginInfo = (EmployeeDTO) session.getAttribute("loginInfo");
		String emp_id = loginInfo.getEmp_id();
		
		EmployeeDTO dto = service.approval_write(emp_id);
		
		String dept_name = dto.getDept_name();
		String login_name = loginInfo.getEmp_name();
		Date emp_date = dto.getEmp_date();
		
		logger.info("로그인 아이디 : "+login_name);
		logger.info("직급 : "+ dept_name);
		logger.info("form : "+form);
		
		mav.addObject("form",form);
		mav.addObject("login_name",login_name);
		mav.addObject("dept_name",dept_name);
		mav.addObject("emp_date",emp_date);
		
		return mav;
	}
	


}
