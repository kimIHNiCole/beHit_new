package com.behit.alarm.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.behit.alarm.dto.AlarmDTO;
import com.behit.alarm.service.AlarmService;
import com.behit.employee.dto.EmployeeDTO;

@Controller
public class AlarmController {

	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired AlarmService alarmService;
	
	/*
	@RequestMapping(value= "/alarmList.go")
	public String alarmList(Model model, HttpSession session) {
		EmployeeDTO loginInfo = (EmployeeDTO) session.getAttribute("loginInfo");
		String login_id = loginInfo.getEmp_id();
		logger.info("로그인 아이디 : "+login_id);
		ArrayList <AlarmDTO> alarmList=alarmService.alarmList(login_id);
		logger.info(""+alarmList);
		model.addAttribute("alarmList", alarmList);
		return "header_navbar";
	}
	*/
	
	@RequestMapping(value="/alarmList.go")
	@ResponseBody
	public HashMap<String, Object> alarmList(HttpSession session){
		HashMap<String, Object> result = new HashMap<String, Object>();
		EmployeeDTO loginInfo = (EmployeeDTO) session.getAttribute("loginInfo");
		String login_id = loginInfo.getEmp_id();
		logger.info("로그인 아이디 : "+login_id);
		ArrayList <AlarmDTO> alarmList=alarmService.alarmList(login_id);
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
