package com.behit.employee.controller;

import java.util.HashMap;

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
		
		ModelAndView mav = new ModelAndView("redirect:/");
		
		// 로그인 시도가 5회를 이미 초과했을때
		int lockCnt = service.getLockChk(emp_id);
		if(lockCnt >= 5) {
			logger.info("@@@ 로그인 시도 5회 이상 @@@");
			rAttr.addFlashAttribute("msg", "비밀번호를 5회 이상 잘못 입력하였습니다./n인사팀에 문의하세요");
			return mav;
		} else if (lockCnt == -1) {
			rAttr.addFlashAttribute("msg", "등록되지 않은 아이디입니다. /n인사팀에 문의해 주세요");
		}
		
		String hashPw = service.getPw(emp_id);
		boolean success = encoder.matches(password, hashPw);
		
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("emp_id", emp_id);
		params.put("success", success);
		
		if(success) {
			lockCnt = service.lockCnt(params);
			logger.info("lockCnt = "+lockCnt);
			EmployeeDTO loginInfo = service.login(emp_id);
			logger.info("login result || "+ loginInfo.getEmp_id());
			session.setAttribute("loginInfo", loginInfo);
			mav.setViewName("redirect:/views/home.jsp");
		}else {
			logger.info("로그인 에러");
			lockCnt = service.lockCnt(params);
			logger.info("lockCnt = "+lockCnt);
			if(lockCnt < 5) {
				rAttr.addFlashAttribute("msg","비밀번호를 "+lockCnt+"회 잘못 입력하였습니다"
						+ " 비밀번호를 확인해주세요");
			}
		}
	 
		return mav; 
	 }
}
