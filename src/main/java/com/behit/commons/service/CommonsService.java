package com.behit.commons.service;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.behit.commons.dao.CommonsDAO;
import com.behit.employee.dto.EmployeeDTO;

@Service
public class CommonsService {

	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired CommonsDAO commonsDAO;

	public ArrayList<EmployeeDTO> getOrgList() {
		logger.info("getOrgList() 실행");
		commonsDAO.getOrgList();
		return null;
	}
	
}
