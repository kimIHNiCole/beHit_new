package com.behit.todo.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import com.behit.todo.service.TodoService;

@Controller
public class TodoController {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired TodoService service;
	/*
		@GetMapping(value="/todolist")
		public
	*/
	
}
