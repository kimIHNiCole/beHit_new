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
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.behit.chat.dto.ChatDTO;
import com.behit.chat.dto.ChatRoomDTO;
import com.behit.chat.service.ChatService;
import com.behit.employee.dto.EmployeeDTO;
import com.behit.profile.dto.FileDTO;

@Controller
public class ChatController {

	@Autowired ChatService chatService;
	Logger logger = LoggerFactory.getLogger(getClass());
	
	// 메신저에서 세션에 저장된 사람(접속 당사자)을 표시하고 그 사람이 포함된 채팅방 리스트를 뿌려줌 
	@GetMapping(value="/chat/messenger.go")
	public ModelAndView messenger_his(HttpSession session) {
		logger.info("메신저 페이지로 이동");
		ModelAndView mav = new ModelAndView();
		EmployeeDTO empdto=(EmployeeDTO) session.getAttribute("loginInfo");
		String emp_id=empdto.getEmp_id();
		String emp_name=empdto.getEmp_name();
		int emp_dept_idx=empdto.getEmp_dept_idx();
		logger.info("emp_dept_idx"+emp_dept_idx);
		String emp_dept_name =chatService.deptName(emp_dept_idx);
		FileDTO photo=chatService.getPhoto(emp_id);
		//아래 리스트는 채팅방 최신 생성순으로 el 태그 사용해서 뿌렸던 list로 혹시 몰라서 남겨둠
		// 실제 채팅방 리스트는 채팅방별 최신 메시지 순으로 아래서 list ajax로 뿌리고 있음
		/*
		ArrayList<ChatRoomDTO> ChatRoomAll=chatService.chatRoomList(emp_id);
		logger.info(""+ChatRoomAll);
		*/
		mav.addObject("photo", photo);
		mav.addObject("emp_id", emp_id);
		mav.addObject("emp_id", emp_id);
		mav.addObject("emp_name", emp_name);
		mav.addObject("emp_dept_name", emp_dept_name);
		mav.setViewName("chat/messenger");
		return mav;
	}
	
	@RequestMapping(value="/chatRListOnChatMs")
	@ResponseBody
	public HashMap<String, Object> chatRListOnChatMs(HttpSession session){
		HashMap<String, Object> result = new HashMap<String, Object>();
		EmployeeDTO empdto=(EmployeeDTO) session.getAttribute("loginInfo");
		String loginId=empdto.getEmp_id();
		ArrayList<ChatRoomDTO>chatRListOnChatMs=chatService.chatRListOnChatMs(loginId);
		result.put("chatRListOnChatMs", chatRListOnChatMs);
		result.put("loginId", loginId);
		return result;
	}

	
	
	@RequestMapping(value = "/createRoom", method = RequestMethod.POST)
	@ResponseBody
	public HashMap<String, Object> createRoom(HttpSession session,
			@RequestBody List<Map<String, String>> emp_data) {
			logger.info("" + emp_data);
			HashMap<String, Object> result = new HashMap<String, Object>();
			EmployeeDTO empdto=(EmployeeDTO) session.getAttribute("loginInfo");
			String emp_id=empdto.getEmp_id();
			String emp_name=empdto.getEmp_name();
			int idx=chatService.createRoom(emp_id, emp_name, emp_data);

			result.put("idx", idx);
			return result;
		}
	
	@RequestMapping(value = "/chatList")
    @ResponseBody
    public HashMap<String, Object> chatList(HttpSession session,
    		@RequestParam int chatRoomIdx){
		HashMap<String, Object> result = new HashMap<String, Object>();
		logger.info("db저장리스트불러올idx"+chatRoomIdx);
		EmployeeDTO empdto=(EmployeeDTO) session.getAttribute("loginInfo");
		String loginId=empdto.getEmp_id();
		String loginName=empdto.getEmp_name();
		FileDTO loginPhoto = chatService.getPhoto(loginId);
        // chatRoomIdx를 이용하여 채팅 리스트를 가져오는 서비스 메서드 호출
        List<ChatDTO> chatList = chatService.chatList(chatRoomIdx);
        ChatRoomDTO chatRoom = chatService.chatRoom(chatRoomIdx);
        logger.info(""+chatRoom.getChatMb());
		/* chatRoom.getChatMb(); */
        result.put("loginId", loginId);
        result.put("loginName", loginName);
        result.put("loginPhoto", loginPhoto);
		result.put("chatRoomName", chatRoom.getChat_room_name());
		result.put("chatMbListInRoom", chatRoom.getChatMb());
        result.put("chatList", chatList);
        return result;
    }
	
	@MessageMapping("/chatRoom/{roomId}")
	@SendTo("/topic/chatRoom/{roomId}")
	public ChatDTO sendMessageToRoom(@DestinationVariable String roomId, ChatDTO message) {
        // sendMessageToRoom 메서드는 클라이언트가 채팅방에 메시지를 전송할 때 호출되는 메서드
    	// @DestinationVariable 어노테이션을 사용하여 URL 패턴에서 변수(roomId)를 추출
    	// 메시지 객체를 반환
    	// 이는 /topic/chatRoom/{roomId} 토픽으로 전송되어 클라이언트에게 메시지가 전달
    	logger.info(roomId);
    	logger.info(message.getEmp_id());
    	logger.info(message.getMessage());
		/* logger.info(""+message.getFormattedDate()); */
    	
    	chatService.saveChat(message);
    	
        return message;
    }


}
	

