package com.behit.employee.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import com.behit.employee.dto.EmployeeDTO;


@Mapper
public interface EmployeeDAO {

	int join(HashMap<String, Object> params);

	ArrayList<EmployeeDTO> elist(int pn);

	int totalPage(int pn);

	EmployeeDTO detail(String emp_id);

}
