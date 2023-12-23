package com.behit.employee.dao;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface LoginDAO {

	String login(String emp_id, String password);

}
