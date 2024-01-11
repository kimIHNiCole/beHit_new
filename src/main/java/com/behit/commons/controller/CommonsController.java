package com.behit.commons.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.behit.commons.dto.OrgChartDTO;
import com.behit.commons.service.CommonsService;

@RestController
public class CommonsController {
	
	@Autowired CommonsService commonsService;
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	
	@GetMapping(value = "/orgChart.go")
	public String orgChartGo() {
		logger.info("조직도 창 요청");
		return "org_chart";
	}
	
	@GetMapping(value = {"/creators/getOrgList.ajax", "/project/getOrgList", "/getOrgList"})
	public HashMap<String, ArrayList<Object>> getOrgList(){
		logger.info("getOrgList");
		ArrayList<Object> getOrgs = commonsService.getOrgList();
		ArrayList<Object> deptKind = commonsService.getDeptSum();
		HashMap<String, ArrayList<Object>> result = new HashMap<String, ArrayList<Object>>();
		result.put("orgList", getOrgs);
		result.put("deptKind", deptKind);
		logger.info("result : "+getOrgs);
		
		return result;
	}

}
