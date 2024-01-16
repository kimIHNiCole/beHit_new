package com.behit.profile.service;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.behit.approval.dao.ApprovalDAO;
import com.behit.approval.dto.ApprovalDTO;
import com.behit.employee.dao.VacationDAO;
import com.behit.employee.dto.EmployeeDTO;
import com.behit.employee.dto.WorkDTO;
import com.behit.employee.dto.VacationDTO;
import com.behit.profile.dao.DashBoardDAO;
import com.behit.profile.dao.ProfileDAO;
import com.behit.profile.dto.FileDTO;
import com.behit.project.dao.ProjectDAO;
import com.behit.project.dto.ProjectDTO;

@Service
public class DashBoardService {

	Logger logger = LoggerFactory.getLogger(getClass());

	@Autowired ProfileDAO profileDAO;
	@Autowired ApprovalDAO aproDao;
	@Autowired ProjectDAO proDao;
	@Autowired DashBoardDAO dashDao;
	@Autowired VacationDAO vacaDao;
	public EmployeeDTO detail(String login_id) {
		return profileDAO.prodetail(login_id);
	}

	public FileDTO getPhoto(String login_id) {
		return profileDAO.getPhoto(login_id);
	}

	public List<ApprovalDTO> reqAp_list(String login_id) {
		return aproDao.requestApproval_list(login_id);
	}

	public ArrayList<ProjectDTO> projnow(String login_id) {

		return proDao.projnow(login_id);
	}

	public WorkDTO workToday(String login_id) {
		
		// 한국 시간대로 설정
        ZoneId seoulZoneId = ZoneId.of("Asia/Seoul");
        
        // 현재 날짜와 시간을 가져오기
        LocalDateTime now = LocalDateTime.now(seoulZoneId);

        // 원하는 형식으로 포맷팅
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        String todayDate = now.format(formatter);
		logger.info(todayDate);
		return dashDao.workToday(login_id, todayDate);
	}

	public int workStarted(String loginId, String workStartedTime) {
		// 한국 시간대로 설정
        ZoneId seoulZoneId = ZoneId.of("Asia/Seoul");
        
        // 현재 날짜와 시간을 가져오기
        LocalDateTime now = LocalDateTime.now(seoulZoneId);

        // 원하는 형식으로 포맷팅
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        String todayDate = now.format(formatter);

		return dashDao.workStarted(loginId, workStartedTime, todayDate);
	}

	public int workEnded(String loginId, String workEndedTime) {
		// 한국 시간대로 설정
        ZoneId seoulZoneId = ZoneId.of("Asia/Seoul");
        
        // 현재 날짜와 시간을 가져오기
        LocalDateTime now = LocalDateTime.now(seoulZoneId);

        // 원하는 형식으로 포맷팅
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        String todayDate = now.format(formatter);
		return dashDao.workEnded(loginId, workEndedTime, todayDate);
	}

	public boolean startCnk(String loginId) {
		// 한국 시간대로 설정
        ZoneId seoulZoneId = ZoneId.of("Asia/Seoul");
        
        // 현재 날짜와 시간을 가져오기
        LocalDateTime now = LocalDateTime.now(seoulZoneId);

        // 원하는 형식으로 포맷팅
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        String todayDate = now.format(formatter);
        
        return dashDao.startCnk(loginId, todayDate);
	}

	public boolean endCnk(String loginId) {
		// 한국 시간대로 설정
        ZoneId seoulZoneId = ZoneId.of("Asia/Seoul");
        
        // 현재 날짜와 시간을 가져오기
        LocalDateTime now = LocalDateTime.now(seoulZoneId);

        // 원하는 형식으로 포맷팅
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        String todayDate = now.format(formatter);
		return dashDao.endCnk(loginId, todayDate);
	}

	public VacationDTO dashvaca(String login_id) {
		
		return dashDao.dashvaca(login_id);
	}

	public HashMap<String, Object> workTime(String loginId, String dateOnly) {
		
		return dashDao.workTime(loginId, dateOnly);
	}

	public int stateUpdate(String workState, String loginId, String dateOnly) {
		
		return dashDao.stateUpdate(workState, loginId, dateOnly);
	}


	
	
	
	
}
