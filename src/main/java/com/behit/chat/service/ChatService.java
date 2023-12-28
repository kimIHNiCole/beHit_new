package com.behit.chat.service;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.behit.chat.dao.ChatDAO;
import com.behit.chat.dto.ChatRoomDTO;

@Service
public class ChatService {

	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired ChatDAO chatDao;
	public String deptName(int emp_dept_idx) {
		return chatDao.deptName(emp_dept_idx);
		
	}
	public ArrayList<ChatRoomDTO> chatRoomList(String emp_id) {
		logger.info(emp_id);
		return chatDao.chatRoomList(emp_id);
	}

}
