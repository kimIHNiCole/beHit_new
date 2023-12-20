package com.behit.employee.dao;

import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;


@Mapper
public interface EmployeeDAO {

	int join(HashMap<String, Object> params);

}
