package com.behit.todo.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.behit.todo.dto.TodoDTO;

@Mapper
public interface TodoDAO {

	ArrayList<TodoDTO> todoList(String emp_id);

	void todowrite(String emp_id, String todoText);

	void tododel(String todoIdx);

	void todocheckt(String todoIdx);

	void todocheckf(String todoIdx);

	ArrayList<TodoDTO> todohistory(String emp_id);

	int todohide(String todoIdx);
	
	
	
}
