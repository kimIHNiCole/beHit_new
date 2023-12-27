package com.behit.commons.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.behit.commons.service.CommonsService;
import com.behit.employee.dto.EmployeeDTO;

@Controller
public class CommonsController {
	
	@Autowired CommonsService commonsService;
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@GetMapping(value = "/getOrgList")
	public String getOrgList(){
		logger.info("getOrgList");
		ArrayList<EmployeeDTO> getOrgs = commonsService.getOrgList();
		logger.info(getOrgs.toString());
		return "org_chat";
	}

}
