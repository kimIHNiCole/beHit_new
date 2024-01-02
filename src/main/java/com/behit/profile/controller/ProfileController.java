package com.behit.profile.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.behit.employee.dto.EmployeeDTO;
import com.behit.profile.service.ProfileService;

@Controller
public class ProfileController {

	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired PasswordEncoder encoder;
	@Autowired ProfileService profileService;
	
	@GetMapping(value="/profile/profiledetail")
	public ModelAndView profiledetail(HttpSession session) {
		 
		EmployeeDTO loginInfo = (EmployeeDTO) session.getAttribute("loginInfo");
		String login_id = loginInfo.getEmp_id();
		logger.info("로그인 아이디 : "+login_id);
		 
		return profileService.detail(login_id);
	}
	
	@PostMapping(value="/profile/passChange.do")
	public ModelAndView passChange(@RequestParam String password, HttpSession session,
		RedirectAttributes rAttr) {
		
		ModelAndView mav = new ModelAndView();
		
		EmployeeDTO loginInfo = (EmployeeDTO) session.getAttribute("loginInfo");
		String login_id = loginInfo.getEmp_id();
		logger.info("로그인 아이디 : "+login_id);
		
		String hashPw = profileService.getPw(login_id);
		
		boolean same = encoder.matches(password, hashPw);
		
		if (same) {
			logger.info("기존 비밀번호와 일치");
			mav.addObject("success", false);
		} else {
			String hash = encoder.encode((CharSequence) password);
			profileService.passChange(hash, login_id);
			logger.info("비밀번호 변경 성공");
			mav.addObject("success", true);
		}
		
		mav.setViewName("profile/profile_detail");
		
		
		return mav; 
	}
	
	@PostMapping(value="/profile/upload.do")
	public String upload(MultipartFile uploadFile, HttpSession session) throws Exception {
		
		EmployeeDTO loginInfo = (EmployeeDTO) session.getAttribute("loginInfo");
		String login_id = loginInfo.getEmp_id();
		logger.info("로그인 아이디 : "+login_id);
		
		logger.info("uploadFile : "+uploadFile);
		
		profileService.upload(uploadFile, login_id);
		return "redirect:/profile/profiledetail";
	}
	

}
