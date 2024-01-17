package com.behit.employee.dao;

import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import com.behit.employee.dto.EmployeeDTO;

@Mapper
public interface LoginDAO {

	String getPw(String emp_id);
	
	EmployeeDTO login(String emp_id);

	int getLockChk(String emp_id);
	
	void lockCnt(HashMap<String, Object> params);

	Boolean leaveCnt(String emp_id);

	void lockCnkalarm(String emp_id, String lockmsg);
}
