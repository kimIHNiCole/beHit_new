package com.behit.todo.service;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.behit.todo.dao.TodoDAO;
import com.behit.todo.dto.TodoDTO;

@Service
public class TodoService {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired TodoDAO dao;

	public ArrayList<TodoDTO> todoList(String emp_id) {
		return dao.todoList(emp_id);
	}

	public void todowrite(String emp_id, String todoText) {
		dao.todowrite(emp_id, todoText);
	}

	public void tododel(String todoIdx) {
		dao.tododel(todoIdx);
	}

	public void todocheckt(String todoIdx) {
		dao.todocheckt(todoIdx);
	}

	public void todocheckf(String todoIdx) {
		dao.todocheckf(todoIdx);
	}
	
	// 여기서부터 히스토리
	public ArrayList<TodoDTO> todohistory(String emp_id) {
		return dao.todohistory(emp_id);
	}

	public int todohide(String todoIdx) {
		return dao.todohide(todoIdx);
	}
	
	
	
}
