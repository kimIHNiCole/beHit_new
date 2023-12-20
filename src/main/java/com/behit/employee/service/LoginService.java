package com.behit.employee.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.behit.employee.dao.LoginDAO;

@Service
public class LoginService {
	
	@Autowired LoginDAO dao;

	public boolean login(String emp_id, String password) {
		return dao.login(emp_id, password);
	}

}
