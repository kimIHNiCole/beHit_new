package com.behit.employee.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import com.behit.employee.dto.VacationDTO;

@Mapper
public interface VacationDAO {

	ArrayList<VacationDTO> vacalist();

	VacationDTO detail(String emp_id);

	ArrayList<VacationDTO> usingList(String emp_id);

	ArrayList<VacationDTO> createList(String emp_id);

	void vacainsert(HashMap<String, Object> params);

	void vacadelete(HashMap<String, Object> params);

}
