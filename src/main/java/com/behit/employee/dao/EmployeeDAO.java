package com.behit.employee.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.behit.employee.dto.EmployeeDTO;


@Mapper
public interface EmployeeDAO {

	int join(HashMap<String, Object> params);

	ArrayList<EmployeeDTO> elist(int pn);

	int totalPage(int pn);

	EmployeeDTO detail(String emp_id);

	void bupdate(HashMap<String, Object> params);

	void dupdate(HashMap<String, Object> params);
	
	ArrayList<EmployeeDTO> deptList(String dept_name);

	ArrayList<EmployeeDTO> positionList(String position_name);

	ArrayList<EmployeeDTO> gradeList(String grade_name);

	void pupdate(HashMap<String, Object> params);


}
