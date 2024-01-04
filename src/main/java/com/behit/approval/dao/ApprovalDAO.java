package com.behit.approval.dao;

import org.apache.ibatis.annotations.Mapper;

import com.behit.employee.dto.EmployeeDTO;

@Mapper
public interface ApprovalDAO {

	EmployeeDTO approval_write_go(String emp_id);
	
}
