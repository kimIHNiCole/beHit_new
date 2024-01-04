package com.behit.chat.dto;

import java.sql.Date;

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
	private String message;
	private Date message_date;

	

	

}
