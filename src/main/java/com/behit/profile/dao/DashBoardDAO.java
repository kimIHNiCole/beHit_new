package com.behit.profile.dao;

import org.apache.ibatis.annotations.Mapper;

import com.behit.employee.dto.VacationDTO;
import com.behit.employee.dto.WorkDTO;

@Mapper
public interface DashBoardDAO {

	WorkDTO workToday(String login_id, String todayDate);

	int workStarted(String loginId, String workStartedTime, String todayDate);

	int workEnded(String loginId, String workEndedTime, String todayDate);

	boolean startCnk(String loginId, String todayDate);

	boolean endCnk(String loginId, String todayDate);

	VacationDTO dashvaca(String login_id);

}
