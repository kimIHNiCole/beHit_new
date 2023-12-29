package com.behit.chat.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.behit.chat.dto.ChatRoomDTO;
import com.behit.chat.service.ChatService;
import com.behit.employee.dto.EmployeeDTO;

@Controller
public class ChatController {

	@Autowired ChatService chatService;
	Logger logger = LoggerFactory.getLogger(getClass());
	@GetMapping(value="/chat/messengerT.go")
	public ModelAndView messengerT(HttpSession session) {
		logger.info("메신저 페이지로 이동");
		ModelAndView mav = new ModelAndView();
		EmployeeDTO empdto=(EmployeeDTO) session.getAttribute("loginInfo");
		String emp_id=empdto.getEmp_id();
		String emp_name=empdto.getEmp_name();
		int emp_dept_idx=empdto.getEmp_dept_idx();
		logger.info("emp_dept_idx"+emp_dept_idx);
		String emp_dept_name =chatService.deptName(emp_dept_idx);
		
		ArrayList<ChatRoomDTO> ChatRoomAll=chatService.chatRoomList(emp_id);
		logger.info(""+ChatRoomAll);
		
		mav.addObject("ChatRoomAll", ChatRoomAll);
		
		mav.addObject("emp_id", emp_id);
		mav.addObject("emp_name", emp_name);
		mav.addObject("emp_dept_name", emp_dept_name);
		mav.setViewName("chat/messengerT");
		return mav;
	}
	
}
