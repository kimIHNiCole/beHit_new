package com.behit.employee.dao;

import org.apache.ibatis.annotations.Mapper;

import com.behit.employee.dto.EmployeeDTO;

@Mapper
public interface LoginDAO {

	EmployeeDTO login(String emp_id, String password);

}
