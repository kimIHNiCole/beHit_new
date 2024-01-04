package com.behit.todo.dto;

import java.sql.Date;
import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("todo")
@Getter
@Setter
public class TodoDTO {
	
	private int todo_idx;
	private String emp_id;
	private String todo_content;
	private Date todo_update;
	private String todo_state;
	private Date todo_date;
	private int todoN;
	private int todoY;
	
}
