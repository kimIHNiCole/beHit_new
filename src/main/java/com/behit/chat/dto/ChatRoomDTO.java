package com.behit.chat.dto;

import java.sql.Date;
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
	private Date chat_room_date;
	private List<String> members;
	private ArrayList<ChatRoomDTO> chatMb;
	
	
    
	
}
