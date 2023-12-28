package com.behit.chat.dto;

import java.sql.Date;

public class ChatDTO {
	
	private int chatMsg_idx;
	private int chat_room_idx;
	private String emp_id;
	private String message;
	private Date message_date;
	
	public int getChatMsg_idx() {
		return chatMsg_idx;
	}
	public void setChatMsg_idx(int chatMsg_idx) {
		this.chatMsg_idx = chatMsg_idx;
	}
	public int getChat_room_idx() {
		return chat_room_idx;
	}
	public void setChat_room_idx(int chat_room_idx) {
		this.chat_room_idx = chat_room_idx;
	}
	public String getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(String emp_id) {
		this.emp_id = emp_id;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Date getMessage_date() {
		return message_date;
	}
	public void setMessage_date(Date message_date) {
		this.message_date = message_date;
	}
	

}
