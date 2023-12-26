package com.behit.employee.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.behit.employee.dto.EmployeeDTO;
import com.behit.employee.service.LoginService;

@Controller
public class LoginController {

	Logger logger = LoggerFactory.getLogger(getClass());

	@Autowired PasswordEncoder encoder;
	@Autowired LoginService service;


	@PostMapping(value="/login.do")
	public ModelAndView login(@RequestParam String emp_id, @RequestParam String password,
		RedirectAttributes rAttr, HttpSession session) { 
		logger.info(emp_id+" / "+ password);
		ModelAndView mav = new ModelAndView();
		
		String hashPw = service.getPw(emp_id);
		boolean success = encoder.matches(password, hashPw);
		if(success) {
			EmployeeDTO loginInfo = service.login(emp_id);
			logger.info("login result || "+ loginInfo.getEmp_id());
			session.setAttribute("loginInfo", loginInfo);
			mav.setViewName("redirect:/views/home.jsp");
			
		}else {
			logger.info("로그인 에러");
			rAttr.addFlashAttribute("msg","비밀번호를 확인해주세요");
			mav.setViewName("redirect:/");
		}
	 
		return mav; 
	 }
}
