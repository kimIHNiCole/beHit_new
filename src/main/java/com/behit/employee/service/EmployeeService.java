package com.behit.employee.service;

import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.behit.employee.dao.EmployeeDAO;

@Service
public class EmployeeService {
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired EmployeeDAO employeeDAO;
	
	public int join(HashMap<String, Object> params) {
		logger.info("join() 실행");
		int row = employeeDAO.join(params);
		return row;
	}
}
