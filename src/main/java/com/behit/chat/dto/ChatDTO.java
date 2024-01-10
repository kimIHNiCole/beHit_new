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
	private int file_idx;
	private int file_kind;
	private String file_kind_idx;
	private String ori_file_name;
	private String new_file_name;


	

}
