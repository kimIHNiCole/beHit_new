package com.behit.chat.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.behit.chat.dto.ChatDTO;
import com.behit.chat.dto.ChatRoomDTO;

@Mapper
public interface ChatDAO {

	String deptName(int emp_dept_idx);

	ArrayList<ChatRoomDTO> chatRoomList(String emp_id);

	ArrayList<ChatRoomDTO> chatMember(int chat_room_idx);

	void createRoom(ChatRoomDTO chatRoom);

	void insertIntoChatPp(int chat_room_idx, String empId);

	List<ChatDTO> chatList(int chatRoomIdx);

	void saveChat(ChatDTO message);

}
