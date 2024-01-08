package com.behit.alarm.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.behit.alarm.dto.AlarmDTO;
import com.behit.alarm.service.AlarmService;
import com.behit.employee.dto.EmployeeDTO;

@Controller
public class AlarmController {

	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired AlarmService alarmService;
	
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
}
