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
import com.behit.profile.dao.ProfileDAO;
import com.behit.profile.dto.FileDTO;

@Service
public class ChatService {

	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired ChatDAO chatDao;
	@Autowired ProfileDAO profileDAO;
	public String deptName(int emp_dept_idx) {
		return chatDao.deptName(emp_dept_idx);
		
	}
	public FileDTO getPhoto(String login_id) {
		return profileDAO.getPhoto(login_id);
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
	
	public ArrayList<ChatRoomDTO> chatRListOnChatMs(String loginId) {
		logger.info(loginId);
		// 채팅방 리스트와 그에 속한 멤버들 리스트 합
		ArrayList<ChatRoomDTO> chatROnMsAll=new ArrayList<ChatRoomDTO>();
		// emp_id 가 속한 채팅방 리스트 모두 가져옴
		ArrayList<ChatRoomDTO> chatRListOnChatMs=chatDao.chatRListOnChatMs(loginId);
		
		for(ChatRoomDTO chatROnChatMs: chatRListOnChatMs) {
			int chat_room_idx=chatROnChatMs.getChat_room_idx();
			ArrayList<ChatRoomDTO> chatMb=chatDao.chatMember(chat_room_idx);

			chatROnChatMs.setChatMb(chatMb);
			chatROnMsAll.add(chatROnChatMs);
		}
		
		logger.info("chatROnMsAll:"+chatROnMsAll);
		return chatROnMsAll;
	}
	
	
	public int createRoom(String emp_id, String emp_name, List<Map<String, String>> emp_data) {
		int listSize = emp_data.size();
		logger.info(""+listSize);
		String chat_room_name="";
		
		// 1인만 선택했을 때와 2인 이상 선택했을 때 채팅방 이름 다르게 저장
		if (listSize == 1) {
		    Map<String, String> firstEmployee = emp_data.get(0);
		    String empName = firstEmployee.get("emp_name");
		    chat_room_name = emp_name + ", " + empName;
		} else {
		    chat_room_name = emp_name + " 외 " + listSize + "인";
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
		
		chatDao.insertIntoChatM(chat_room_idx);
		
		// emp_id와 emp_ids를 합친 리스트 생성
		List<String> allEmpIds = new ArrayList<>();

		// emp_id 추가
		allEmpIds.add(emp_id);

		// emp_data에 있는 각 Map에서 emp_id를 추출하여 추가
		for (Map<String, String> empDataMap : emp_data) {
		    String empId = empDataMap.get("emp_id");
		    allEmpIds.add(empId);
		}

	    // chat_pp에 empId를 반복하여 데이터 삽입
	    for (String empId : allEmpIds) {
	        chatDao.insertIntoChatPp(chat_room_idx, empId);
	    }
		return chat_room_idx;
		
	}
	
	//선택된 챗룸의 정보를 가져옴
	public ChatRoomDTO chatRoom(int chatRoomIdx) {
		ChatRoomDTO chatRoom = chatDao.chatRoom(chatRoomIdx);
		logger.info(chatRoom.getChat_room_name());
		ArrayList<ChatRoomDTO> chatMb=chatDao.chatMember(chatRoomIdx);
		for (ChatRoomDTO chatRoomDTO : chatMb) {
		    logger.info("이름들 :"+chatRoomDTO.getEmp_name());
		}
		chatRoom.setChatMb(chatMb);
		return chatRoom;
	}
	//선택된 챗룸의 채팅 리스트를 가져옴
	public List<ChatDTO> chatList(int chatRoomIdx) {
        return chatDao.chatList(chatRoomIdx);
    }

		
	public void saveChat(ChatDTO message) {
		// 채팅 메시지 이력 insert
		chatDao.saveChat(message);
		
		// 제너레이트키로 생성된 메시지idx 가져오기
		int chatMsg_idx = message.getChatMsg_idx();
		logger.info("chatMsg_idx : "+chatMsg_idx);
		
		
		/* 알림 insert */
		// emp_name+" 님으로부터 새 메시지가 도착했습니다."
		
		String sendEmp=message.getEmp_name();
		String sendMsg = message.getMessage();
		
		// sendMsg가 10자 이상인 경우에만 자르기
		if (sendMsg.length() > 10) {
			sendMsg = sendMsg.substring(0, 10) + "...";
		}
		
		String alarm_msg= sendEmp+" 님으로부터 새 메시지 ["+sendMsg+"]가 도착했습니다.";
		
		// 챗룸 idx 값으로 챗pp 뽑아오기	
		int chat_room_idx=message.getChat_room_idx();
		String loginId=message.getEmp_id();
		
		// 챗 pp 들에게 알림 insert 하기
		ArrayList<ChatRoomDTO> chatMb=chatDao.chatMember(chat_room_idx);
		for (ChatRoomDTO chatRoomDTO : chatMb) {
			String emp_id=chatRoomDTO.getEmp_id();
			// loginId와 emp_id가 다를 때만 saveAlarm 메서드 호출
		    if (!loginId.equals(emp_id)) {
		        chatDao.saveAlarm(emp_id, chatMsg_idx, alarm_msg);
		    }
		}
		
		
	}

	
	

	
}
