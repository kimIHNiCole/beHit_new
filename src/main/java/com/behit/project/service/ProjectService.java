package com.behit.project.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.behit.project.dao.ProjectDAO;

@Service
public class ProjectService {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired ProjectDAO dao;
	
	
	
}
