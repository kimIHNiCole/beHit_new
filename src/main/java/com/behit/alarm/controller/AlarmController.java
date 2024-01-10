package com.behit.alarm.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.behit.alarm.dto.AlarmDTO;
import com.behit.alarm.service.AlarmService;
import com.behit.employee.dto.EmployeeDTO;
import com.behit.profile.dto.FileDTO;
import com.behit.profile.service.DashBoardService;

@Controller
public class AlarmController {

	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired AlarmService alarmService;
	@Autowired DashBoardService dashService;
	
	//네비바에 있는 드롭다운 프로필
	@RequestMapping(value="/navProfile.go")
	@ResponseBody
	public HashMap<String, Object> navProfile(HttpSession session){
		HashMap<String, Object> result = new HashMap<String, Object>();
		EmployeeDTO loginInfo = (EmployeeDTO) session.getAttribute("loginInfo");
		String login_id = loginInfo.getEmp_id();
		logger.info("로그인 아이디 : "+login_id);
		EmployeeDTO navProfile=dashService.detail(login_id);
		FileDTO navPhoto = dashService.getPhoto(login_id);
		
		result.put("navProfile", navProfile);
		result.put("navPhoto", navPhoto);
		return result;
	}
	

	
	@RequestMapping(value="/alarmList.go")
	@ResponseBody
	public HashMap<String, Object> alarmList(HttpSession session){
		HashMap<String, Object> result = new HashMap<String, Object>();
		EmployeeDTO loginInfo = (EmployeeDTO) session.getAttribute("loginInfo");
		ArrayList <AlarmDTO> alarmList = new ArrayList<AlarmDTO>();
		if (loginInfo == null) {
		    logger.info("왜 널이야");
		} else {
		    String login_id = loginInfo.getEmp_id();
		    logger.info("로그인 아이디 : "+login_id);
			alarmList=alarmService.alarmList(login_id);
		}
		
		
		logger.info(""+alarmList);
		result.put("alarmList", alarmList);
		return result;
	}
	
	@RequestMapping(value="/deleteAlarm.go")
	@ResponseBody
	public HashMap<String, Object> deleteAlarm(HttpSession session,
			@RequestParam("alarmType") int alarmType,
            @RequestParam("alarmTypeIdx") int alarmTypeIdx){
		HashMap<String, Object> result = new HashMap<String, Object>();
		EmployeeDTO loginInfo = (EmployeeDTO) session.getAttribute("loginInfo");
		String login_id = loginInfo.getEmp_id();
		logger.info("로그인 아이디 : "+login_id);
		int idx=alarmService.deleteAlarm(login_id, alarmType, alarmTypeIdx);
		result.put("idx", idx); // 성공 여부를 클라이언트에 전달
		return result;
	}
	@RequestMapping(value="/deleteAllAlarms.go")
	@ResponseBody
	public HashMap<String, Object> deleteAllAlarms(HttpSession session){
		HashMap<String, Object> result = new HashMap<String, Object>();
		EmployeeDTO loginInfo = (EmployeeDTO) session.getAttribute("loginInfo");
		String login_id = loginInfo.getEmp_id();
		logger.info("로그인 아이디 : "+login_id);
		int idx=alarmService.deleteAllAlarms(login_id);
		result.put("idx", idx); // 성공 여부를 클라이언트에 전달
		return result;
	}
	@RequestMapping(value="/updateAlarmRead.go")
	@ResponseBody
	public HashMap<String, Object> updateAlarmRead(HttpSession session,
			@RequestParam("alarmType") int alarmType,
            @RequestParam("alarmTypeIdx") int alarmTypeIdx){
		HashMap<String, Object> result = new HashMap<String, Object>();
		EmployeeDTO loginInfo = (EmployeeDTO) session.getAttribute("loginInfo");
		String login_id = loginInfo.getEmp_id();
		logger.info("로그인 아이디 : "+login_id);
		int idx=alarmService.updateAlarmRead(login_id, alarmType, alarmTypeIdx);
		result.put("idx", idx); // 성공 여부를 클라이언트에 전달
		return result;
	}
	@RequestMapping(value="/readAllAlarm.go")
	@ResponseBody
	public HashMap<String, Object> readAllAlarm(HttpSession session){
		HashMap<String, Object> result = new HashMap<String, Object>();
		EmployeeDTO loginInfo = (EmployeeDTO) session.getAttribute("loginInfo");
		String login_id = loginInfo.getEmp_id();
		logger.info("로그인 아이디 : "+login_id);
		int idx=alarmService.readAllAlarm(login_id);
		result.put("idx", idx); // 성공 여부를 클라이언트에 전달
		return result;
	}
	
}
