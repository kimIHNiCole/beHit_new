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
		
		int department = Integer.parseInt(params.get("department").toString());
		int rank = Integer.parseInt(params.get("rank").toString());
		int job = Integer.parseInt(params.get("job").toString());
		
		int position = department + rank + job;
		
		logger.info("position : "+position);
		
		params.put("position", position);
		
		return employeeDAO.join(params);
	}
}
