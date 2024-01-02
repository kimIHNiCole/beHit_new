package com.behit.chat.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.behit.chat.dao.ChatDAO;
import com.behit.chat.dto.ChatDTO;
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
	public int createRoom(String emp_id, List<String> emp_ids) {
		int listSize = emp_ids.size();
		logger.info(""+listSize);
		String chat_room_name="";
		
		// 1인만 선택했을 때와 2인 이상 선택했을 때 채팅방 이름 다르게 저장
		if(listSize == 1) {
			chat_room_name = emp_id + ", " + emp_ids.get(0);
		}else {
			chat_room_name = emp_id + " 외 " + listSize + "인";
		}
		logger.info(chat_room_name);
		logger.info(emp_id);
		// 생성자, 채팅방 이름 저장(매퍼에서 타임스탬프 insert 하기)
		ChatRoomDTO chatRoom=new ChatRoomDTO();
		chatRoom.setChat_room_name(chat_room_name);
		chatRoom.setEmp_id(emp_id);
		chatDao.createRoom(chatRoom); 
		
		// 제너레이트키로 생성된 룸idx 가져오기
		int chat_room_idx = chatRoom.getChat_room_idx();
		logger.info("chat_room_idx : "+chat_room_idx);
		
		// emp_id와 emp_ids를 합친 리스트 생성
	    List<String> allEmpIds = new ArrayList<>(emp_ids);
	    allEmpIds.add(emp_id);

	    // chat_pp에 empId를 반복하여 데이터 삽입
	    for (String empId : allEmpIds) {
	        chatDao.insertIntoChatPp(chat_room_idx, empId);
	    }
		return chat_room_idx;
		
	}
	
	public List<ChatDTO> chatList(int chatRoomIdx) {
        return chatDao.chatList(chatRoomIdx);
    }


	public void saveChat(ChatDTO message) {
		chatDao.saveChat(message);
		
	}
}
