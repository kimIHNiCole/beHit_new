package com.behit.employee.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.web.servlet.ModelAndView;

import com.behit.employee.dto.VacationDTO;
import com.behit.employee.dto.WorkDTO;

@Mapper
public interface WorkDAO {

	ArrayList<WorkDTO> worklist(String date, int offset);

	int totalPage(int i);

	VacationDTO detail(String login_id);

	ArrayList<VacationDTO> usingList(String login_id);

	ArrayList<VacationDTO> createList(String login_id);

	int selectdate(HashMap<String, Object> commute);

	ArrayList<WorkDTO> workmodal(String emp_id, String modaldate);

	boolean workChk(String login_id, String workdate);

	int updatedate(HashMap<String, Object> commute);

}
