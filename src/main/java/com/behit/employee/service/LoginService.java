package com.behit.employee.service;

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
	
	// 로그인 락 카운트 수정하기
	public int lockCnt(String emp_id) {
		logger.info("loginLock count update");
		return dao.lockCnt(emp_id);
	}


}
