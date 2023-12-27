package com.behit.todo.service;

import org.mybatis.spring.annotation.MapperScan;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.behit.todo.dao.TodoDAO;

@Service
@MapperScan(value={"com.behit.todo.dao"})
public class TodoService {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired TodoDAO dao;
	
	
	
}
