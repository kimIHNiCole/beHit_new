package com.behit.chat.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.DestinationVariable;
import org.springframework.messaging.handler.annotation.Header;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.behit.chat.dto.ChatRoomDTO;
import com.behit.chat.service.ChatService;
import com.behit.employee.dto.EmployeeDTO;

@Controller
public class ChatController {

	@Autowired ChatService chatService;
	Logger logger = LoggerFactory.getLogger(getClass());
	
	// 메신저에서 세션에 저장된 사람(접속 당사자)을 표시하고 그 사람이 포함된 채팅방 리스트를 뿌려줌 
	@GetMapping(value="/chat/messenger_his.go")
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
		mav.setViewName("chat/messenger_his");
		return mav;
	}
	/*
	@GetMapping(value = "/createRoom")
	public void createRoom(@RequestParam(name = "emp_ids") List<String> emp_ids, HttpSession session) {
	    logger.info("" + emp_ids);
	    EmployeeDTO empdto=(EmployeeDTO) session.getAttribute("loginInfo");
		String emp_id=empdto.getEmp_id();
		chatService.createRoom(emp_id, emp_ids);
	    
	}
	*/
	
	@RequestMapping(value = "/createRoom")
	@ResponseBody
	public HashMap<String, Object> createRoom(HttpSession session,
			@RequestParam ArrayList<String> emp_ids) {
			logger.info("" + emp_ids);
			HashMap<String, Object> result = new HashMap<String, Object>();
			EmployeeDTO empdto=(EmployeeDTO) session.getAttribute("loginInfo");
			String emp_id=empdto.getEmp_id();
			int idx=chatService.createRoom(emp_id, emp_ids);

			result.put("idx", idx);
			return result;
		}
		
	}
	

