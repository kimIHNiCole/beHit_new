package com.behit.employee.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import com.behit.employee.dto.VacationDTO;

@Mapper
public interface VacationDAO {

	VacationDTO detail(String emp_id);

	ArrayList<VacationDTO> usingList(String emp_id);

	ArrayList<VacationDTO> createList(String emp_id);

	void vacainsert(HashMap<String, Object> params);

	void vacadelete(HashMap<String, Object> params);

	ArrayList<VacationDTO> vacalist(int offset, int login_dept);

	int totalPage(int login_dept);

	ArrayList<VacationDTO> vacalistall(int offset);


}
