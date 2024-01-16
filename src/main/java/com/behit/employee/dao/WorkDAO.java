package com.behit.employee.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import com.behit.employee.dto.VacationDTO;
import com.behit.employee.dto.WorkDTO;

@Mapper
public interface WorkDAO {

	ArrayList<WorkDTO> worklist(String date, int offset, int login_dept);

	int totalPage(int login_dept);

	VacationDTO detail(String login_id);

	ArrayList<VacationDTO> usingList(String login_id);

	ArrayList<VacationDTO> createList(String login_id);

	int selectdate(HashMap<String, Object> commute);

	boolean workChk(String login_id, String workdate);

	int updatedate(HashMap<String, Object> commute);

	ArrayList<WorkDTO> timelineList(String login_id, String workmonth);

	ArrayList<HashMap<String, Object>> timeNowList(String login_id);

	ArrayList<HashMap<String, Object>> vhList(String login_id);

	ArrayList<WorkDTO> worklistall(String date, int offset);

	ArrayList<WorkDTO> workfmodal(String emp_id, String modaldate);

	ArrayList<WorkDTO> worksmodal(String emp_id, String modaldate);

	ArrayList<WorkDTO> worktmodal(String emp_id, String modaldate);

}
