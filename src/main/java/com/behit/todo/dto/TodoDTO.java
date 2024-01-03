package com.behit.todo.dto;

import java.sql.Date;
import org.apache.ibatis.type.Alias;

@Alias("todo")
public class TodoDTO {
	
	private int todo_idx;
	private String emp_id;
	private String todo_content;
	private Date todo_update;
	private String todo_state;
	private Date todo_date;
	private int todoN;
	private int todoY;
	
	public int getTodoN() {
		return todoN;
	}
	public void setTodoN(int todoN) {
		this.todoN = todoN;
	}
	public int getTodoY() {
		return todoY;
	}
	public void setTodoY(int todoY) {
		this.todoY = todoY;
	}
	public int getTodo_idx() {
		return todo_idx;
	}
	public void setTodo_idx(int todo_idx) {
		this.todo_idx = todo_idx;
	}
	public String getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(String emp_id) {
		this.emp_id = emp_id;
	}
	public String getTodo_content() {
		return todo_content;
	}
	public void setTodo_content(String todo_content) {
		this.todo_content = todo_content;
	}
	public Date getTodo_update() {
		return todo_update;
	}
	public void setTodo_update(Date todo_update) {
		this.todo_update = todo_update;
	}
	public String getTodo_state() {
		return todo_state;
	}
	public void setTodo_state(String todo_state) {
		this.todo_state = todo_state;
	}
	public Date getTodo_date() {
		return todo_date;
	}
	public void setTodo_date(Date todo_date) {
		this.todo_date = todo_date;
	}

		
}
