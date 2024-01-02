package com.behit.util;

import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.behit.employee.dao.LoginDAO;
import com.behit.employee.dto.EmployeeDTO;

@Component
public class LoginCheck implements HandlerInterceptor {

	
	 Logger logger = LoggerFactory.getLogger(getClass());
	 
	 @Autowired LoginDAO loginDAO;
	 
	 // false 반환시 데이터 객체 전달 방법... ?
	 
	 @Override 
	 public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
	 
		logger.info("############## PRE-HANDLER ##############"); 
		boolean pass = true;
			 
		HttpSession session = request.getSession();
		if(session.getAttribute("loginInfo")==null) {
			logger.info("[session : loginInfo ] IS NULL"); 
			pass = false;
			 
			String encodedMessage = URLEncoder.encode("로그인이 필요한 서비스 입니다.", "UTF-8");
			response.sendRedirect("/?msg=" + encodedMessage); 
		} 
		return pass; 
	}
	
	 // Controller 에서 나온 후 오는곳 // ModelAndView 를 통해 원하는 값을 추가하여 보낼때 활용
	  
	 @Override 
	 public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView mav) throws Exception { 
		 
		 logger.info("############## POST-HANDLER ##############");
		 HttpSession session = request.getSession(); 
		 EmployeeDTO employeeDTO = (EmployeeDTO) session.getAttribute("loginInfo"); 
	 
		 if(employeeDTO == null) {
			 logger.info("employeeDTO IS NULL");
			 mav.addObject("loginCheck","로그인이 필요한 서비스 입니다."); 
		}
	  
	 }
	 

}
