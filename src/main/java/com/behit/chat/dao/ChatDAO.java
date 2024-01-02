package com.behit.chat.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.behit.chat.dto.ChatRoomDTO;

@Mapper
public interface ChatDAO {

	String deptName(int emp_dept_idx);

	ArrayList<ChatRoomDTO> chatRoomList(String emp_id);

	ArrayList<ChatRoomDTO> chatMember(int chat_room_idx);

	void createRoom(ChatRoomDTO chatRoom);

	void insertIntoChatPp(int chat_room_idx, String empId);

}
