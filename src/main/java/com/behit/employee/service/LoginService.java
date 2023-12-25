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
	
	public EmployeeDTO login(String emp_id, String password) {
		logger.info("login() 실행 || prameter = "+emp_id+" / "+ password);
		return dao.login(emp_id, password);
	}

}
