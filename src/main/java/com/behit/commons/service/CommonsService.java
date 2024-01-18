package com.behit.commons.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.behit.commons.dao.CommonsDAO;
import com.behit.commons.dto.OrgChartDTO;

@Service
public class CommonsService {

	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired CommonsDAO commonsDAO;

	public ArrayList<Object> getOrgList() {
		logger.info("getOrgList() 실행");
		return commonsDAO.getOrgList();
		
	}
	
	public ArrayList<Object> getOrgListNM(String loginId) {
		logger.info("getOrgList() 실행");
		return commonsDAO.getOrgListNM(loginId);
		
	}

	public ArrayList<Object> getDeptSum() {
		logger.info("getDeptSum() 실행");
		return commonsDAO.getDeptSum();
	}

	public ArrayList<Object> getOrgListCreP(String loginId, String cre_idx) {
		logger.info("getOrgListCreP() 실행");
		return commonsDAO.getOrgListCreP(loginId, cre_idx);
	}

	public ArrayList<Object> getOrgListApvP(String loginId, String apv_idx, String apvReq_empId) {
		logger.info("getOrgListApvP() 실행");
		return commonsDAO.getOrgListApvP(loginId, apv_idx, apvReq_empId);
	}


	
}
