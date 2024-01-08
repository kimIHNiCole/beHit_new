package com.behit.employee.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.behit.employee.dto.VacationDTO;
import com.behit.employee.dto.WorkDTO;

@Mapper
public interface WorkDAO {

	ArrayList<WorkDTO> worklist(String date, int offset);

	int totalPage(int i);

	VacationDTO detail(String login_id);

	ArrayList<VacationDTO> usingList(String login_id);

	ArrayList<VacationDTO> createList(String login_id);

}
