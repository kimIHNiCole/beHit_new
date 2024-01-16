package com.behit.employee.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import com.behit.employee.dto.EmployeeDTO;


@Mapper
public interface EmployeeDAO {

	int join(HashMap<String, Object> params);

	ArrayList<EmployeeDTO> eflist(int offset, int login_dept);
	
	ArrayList<EmployeeDTO> eslist(int pn);
	
	ArrayList<EmployeeDTO> eflistall(int offset);
	
	int ftotalPage(int login_dept);
	int stotalPage(int pn);

	EmployeeDTO detail(String emp_id);

	ArrayList<EmployeeDTO> HisList(String emp_id);
	
	void bupdate(HashMap<String, Object> params);

	void dupdate(HashMap<String, Object> params);
	
	ArrayList<EmployeeDTO> deptList(String dept_name);

	ArrayList<EmployeeDTO> positionList(String position_name);

	ArrayList<EmployeeDTO> gradeList(String grade_name);

	void pupdate(HashMap<String, Object> params);

	void bupdateHistory(HashMap<String, Object> params);

	void dupdateHistory(HashMap<String, Object> params);

	void pupdateHistory(HashMap<String, Object> params);

	void chkClear(String emp_id);

	void defaultwork(String emp_id, String day, String workstart, String workend);

	boolean idChk(String emp_id);




}
