package com.behit.employee.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.behit.employee.service.LoginService;

@Controller
public class LoginController {

	Logger logger = LoggerFactory.getLogger(getClass());

	@Autowired LoginService service;


	@PostMapping(value="login.do")
	public ModelAndView login(@RequestParam String emp_id, @RequestParam String password) { 
		
		ModelAndView mav = new ModelAndView();
		
		boolean success = service.login(emp_id, password);
		
		if (success != false) {
			mav.addObject("msg", "로그인에 성공했습니다.");
			mav.setViewName("redirect:/html/vertical-menu-template/index.go");
		} else {
			mav.addObject("msg", "비밀번호를 확인해주세요");
			mav.setViewName("redirect:/");
		}
	 
		return mav; 
	 }
}
