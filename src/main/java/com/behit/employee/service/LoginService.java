package com.behit.employee.service;

import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.behit.employee.dao.LoginDAO;
import com.behit.employee.dto.EmployeeDTO;

@Service
public class LoginService {
	
	@Autowired LoginDAO dao;
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	// DB의 Encoding된 비밀번호 가져오기
	public String getPw(String emp_id) {
		logger.info("getPw() 실행");
		return dao.getPw(emp_id);
	}
	
	// employee 정보 가져오기
	public EmployeeDTO login(String emp_id) {
		logger.info("login() 실행 || prameter = "+emp_id);
		return dao.login(emp_id);
	}
	
	// 로그인 락 카운트 가져오기
	public int getLockChk(String emp_id) {
		logger.info("get loginLock count");
		return dao.getLockChk(emp_id);
	}
	
	// 로그인 락 카운트 수정하기
	public int lockCnt(HashMap<String, Object> params) {
		logger.info("loginLock count update");
		dao.lockCnt(params);
		int resultCnt = (int) params.get("lockCnt");
		return resultCnt;
	}

	public boolean leaveCnt(String emp_id) {
		
		return dao.leaveCnt(emp_id);
	}

	public void lockCnkalarm(String emp_id, String lockmsg) {
		dao.lockCnkalarm(emp_id, lockmsg);
	}
	
	



}
