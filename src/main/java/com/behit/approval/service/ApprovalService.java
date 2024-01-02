package com.behit.approval.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.behit.approval.dao.ApprovalDAO;
import com.behit.employee.dto.EmployeeDTO;

@Service
public class ApprovalService {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired
	ApprovalDAO dao;

	public EmployeeDTO approval_write(String emp_id) {
		return dao.approval_write(emp_id);
	}

}
