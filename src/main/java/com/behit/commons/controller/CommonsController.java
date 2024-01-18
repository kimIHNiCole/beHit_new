package com.behit.commons.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.behit.commons.dto.OrgChartDTO;
import com.behit.commons.service.CommonsService;
import com.behit.employee.dto.EmployeeDTO;

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
	
	@GetMapping(value = {"/getOrgListNM"})
	public HashMap<String, ArrayList<Object>> getOrgListOM(HttpSession session){
		logger.info("getOrgListNM");
		EmployeeDTO empdto=(EmployeeDTO) session.getAttribute("loginInfo");
		String loginId=empdto.getEmp_id();

		ArrayList<Object> getOrgs = commonsService.getOrgListNM(loginId);
		ArrayList<Object> deptKind = commonsService.getDeptSum();
		HashMap<String, ArrayList<Object>> result = new HashMap<String, ArrayList<Object>>();
		result.put("orgList", getOrgs);
		result.put("deptKind", deptKind);
		logger.info("result : "+getOrgs);
		
		return result;
	}
	
	@GetMapping(value = {"/getOrgListCreP"})
	public HashMap<String, ArrayList<Object>> getOrgListCreP(HttpSession session,
			@RequestParam(name = "cre_idx", required = false) String cre_idx){
		logger.info("getOrgListCreP");
		EmployeeDTO empdto=(EmployeeDTO) session.getAttribute("loginInfo");
		String loginId=empdto.getEmp_id();

		ArrayList<Object> getOrgs = commonsService.getOrgListCreP(loginId, cre_idx);
		ArrayList<Object> deptKind = commonsService.getDeptSum();
		HashMap<String, ArrayList<Object>> result = new HashMap<String, ArrayList<Object>>();
		result.put("orgList", getOrgs);
		result.put("deptKind", deptKind);
		logger.info("result : "+getOrgs);
		
		return result;
	}
	
	@GetMapping(value = {"/getOrgListApvP"})
	public HashMap<String, ArrayList<Object>> getOrgListApvP(HttpSession session,
			@RequestParam(name = "apv_idx", required = false) String apv_idx,
			 @RequestParam(name = "apvReq_empId", required = false) String apvReq_empId){
		logger.info("getOrgListApvP");
		EmployeeDTO empdto=(EmployeeDTO) session.getAttribute("loginInfo");
		String loginId=empdto.getEmp_id();

		ArrayList<Object> getOrgs = commonsService.getOrgListApvP(loginId, apv_idx, apvReq_empId);
		ArrayList<Object> deptKind = commonsService.getDeptSum();
		HashMap<String, ArrayList<Object>> result = new HashMap<String, ArrayList<Object>>();
		result.put("orgList", getOrgs);
		result.put("deptKind", deptKind);
		logger.info("result : "+getOrgs);
		
		return result;
	}

}
