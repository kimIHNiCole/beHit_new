package com.behit.employee.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
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
	

	@GetMapping(value = "/")
	public String home() {
		return "login";
	}
	@GetMapping(value = "/logout.go")
	public String loginGo() {
		return "login";
	}
	
	@PostMapping(value="/login.do")
	public ModelAndView login(@RequestParam String emp_id, @RequestParam String password,
		RedirectAttributes rAttr, HttpSession session) { 
		
		logger.info(emp_id+" / "+ password);
		
		ModelAndView mav = new ModelAndView("redirect:/");
		int lockCnt = 0;
		// 로그인 시도가 5회를 이미 초과했을때
		try {
			lockCnt = service.getLockChk(emp_id);
			if(lockCnt >= 5) {
				logger.info("@@@ 로그인 시도 5회 이상 @@@");
				rAttr.addFlashAttribute("warningMsg", "비밀번호 5회 이상 오류::인사팀에 문의하세요");
				return mav;
			} 
		} catch (Exception e) {
			System.out.println(e.getStackTrace());
			logger.warn("등록되지 않은 아이디");
			rAttr.addFlashAttribute("warningMsg", "아이디 또는 비밀번호를 확인해주세요.");
			return mav;
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
			mav.setViewName("redirect:/home.go");
		}else {
			logger.info("로그인 에러");
			lockCnt = service.lockCnt(params);
			logger.info("lockCnt = "+lockCnt);
			if(lockCnt < 5) {
				logger.info("lockCnt="+lockCnt);
				rAttr.addFlashAttribute("warningMsg","비밀번호를 "+lockCnt+"회 잘못 입력하였습니다"
						+ " 비밀번호를 확인해주세요\\n :: 5회이상 오류시 로그인 불가 :: ");
			}
		}
	 
		return mav; 
	 }
}
