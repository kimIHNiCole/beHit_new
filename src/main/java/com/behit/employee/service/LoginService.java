package com.behit.employee.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.behit.employee.dao.LoginDAO;
import com.behit.employee.dto.EmployeeDTO;

@Service
public class LoginService {
	
	@Autowired LoginDAO dao;
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	public String getPw(String emp_id) {
		logger.info("getPw() 실행");
		return dao.getPw(emp_id);
	}
	
	public EmployeeDTO login(String emp_id) {
		logger.info("login() 실행 || prameter = "+emp_id);
		return dao.login(emp_id);
	}


}
