package com.behit.chat.dto;

import java.sql.Date;
import java.util.List;

import org.apache.ibatis.type.Alias;

@Alias("chatRoom")
public class ChatRoomDTO {

	private int chat_room_idx;
	private String chat_room_name;
	private String emp_id;
	private String emp_name;
	private String emp_dept_name;
	private Date chat_room_date;
	private List<String> members;
	
	public int getChat_room_idx() {
		return chat_room_idx;
	}
	public void setChat_room_idx(int chat_room_idx) {
		this.chat_room_idx = chat_room_idx;
	}
	public String getEmp_name() {
		return emp_name;
	}
	public void setEmp_name(String emp_name) {
		this.emp_name = emp_name;
	}
	public String getEmp_dept_name() {
		return emp_dept_name;
	}
	public void setEmp_dept_name(String emp_dept_name) {
		this.emp_dept_name = emp_dept_name;
	}
	public String getChat_room_name() {
		return chat_room_name;
	}
	public void setChat_room_name(String chat_room_name) {
		this.chat_room_name = chat_room_name;
	}
	public String getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(String emp_id) {
		this.emp_id = emp_id;
	}
	public Date getChat_room_date() {
		return chat_room_date;
	}
	public void setChat_room_date(Date chat_room_date) {
		this.chat_room_date = chat_room_date;
	}
	public List<String> getMembers() {
		return members;
	}
	public void setMembers(List<String> members) {
		this.members = members;
	}
	
	public void addMember(String emp_id) {
        members.add(emp_id);
    }

    
	
}
