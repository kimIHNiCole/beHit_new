package com.behit.approval.dao;

import org.apache.ibatis.annotations.Mapper;

import com.behit.approval.dto.ApprovalDTO;
import com.behit.employee.dto.EmployeeDTO;

@Mapper
public interface ApprovalDAO {

	EmployeeDTO approval_write_go(String emp_id);

	int approval_write(ApprovalDTO dto);

	void apv_line(ApprovalDTO dto);
	
}
