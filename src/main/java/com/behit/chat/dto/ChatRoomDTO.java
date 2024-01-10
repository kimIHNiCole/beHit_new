package com.behit.chat.dto;


import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("chatRoom")
@Getter
@Setter

public class ChatRoomDTO {

	private int chat_room_idx;
	private String chat_room_name;
	private String emp_id;
	private String emp_name;
	private String emp_dept_name;
	private String chat_room_date;
	private String last_message;
	private String last_message_date;
	private List<String> members;
	private ArrayList<ChatRoomDTO> chatMb;
	private String chat_room_members_id;
	private String chat_room_members_name;
	private int file_idx;
	private int file_kind;
	private String file_kind_idx;
	private String ori_file_name;
	private String new_file_name;
	

	
}
