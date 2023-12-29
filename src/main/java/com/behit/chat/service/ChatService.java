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
		
		// 채팅방 리스트와 그에 속한 멤버들 리스트 합
		ArrayList<ChatRoomDTO> chatRoomAll=new ArrayList<ChatRoomDTO>();
		
		// emp_id 가 속한 채팅방 리스트 모두 가져옴
		ArrayList<ChatRoomDTO> chatRooms=chatDao.chatRoomList(emp_id);
		
		// 가져온 리스트를 각각 DTO 에 담음
		for (ChatRoomDTO chatRoomDTO : chatRooms) {
			// 각각의 채팅방 넘버를 뽑아서 해당 채팅방의 멤버들을 가져와야 함
			int chat_room_idx=chatRoomDTO.getChat_room_idx();
			ArrayList<ChatRoomDTO> chatMb=chatDao.chatMember(chat_room_idx);
			chatRoomDTO.setChatMb(chatMb);
			chatRoomAll.add(chatRoomDTO);
			
		}
		
		return chatRoomAll;	
		
	}

}
