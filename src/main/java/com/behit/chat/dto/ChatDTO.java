package com.behit.chat.dto;


import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Alias("chat")
public class ChatDTO {
	
	private int chatMsg_idx;
	private int chat_room_idx;
	private String emp_id;
	private String emp_name;
	private String message;
	private String message_date;


	

}
