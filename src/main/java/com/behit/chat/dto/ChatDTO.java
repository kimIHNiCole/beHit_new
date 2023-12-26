package com.behit.chat.dto;

public class ChatDTO {
	
	private String content;
    public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getSender() {
		return sender;
	}
	public void setSender(String sender) {
		this.sender = sender;
	}
	private String sender;

}
