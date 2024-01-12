package com.behit.profile.controller;

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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.behit.employee.dto.EmployeeDTO;
import com.behit.profile.service.ProfileService;
import com.behit.util.service.UtilService;

@Controller
public class ProfileController {

	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired PasswordEncoder encoder;
	@Autowired ProfileService profileService;
	@Autowired UtilService utilService;
	
	@GetMapping(value="/profile/profiledetail")
	public ModelAndView profiledetail(HttpSession session) {
		 
		EmployeeDTO loginInfo = (EmployeeDTO) session.getAttribute("loginInfo");
		String login_id = loginInfo.getEmp_id();
		logger.info("로그인 아이디 : "+login_id);
		 
		return profileService.detail(login_id);
	}
	
	@PostMapping(value="/profile/passChange.do")
	public String passChange(@RequestParam String password, HttpSession session, RedirectAttributes rAttr) {
		
		EmployeeDTO loginInfo = (EmployeeDTO) session.getAttribute("loginInfo");
		String login_id = loginInfo.getEmp_id();
		logger.info("로그인 아이디 : "+login_id);
		
		String hashPw = profileService.getPw(login_id);
		
		boolean same = encoder.matches(password, hashPw);
		
		if (same) {
			logger.info("기존 비밀번호와 일치");
			rAttr.addFlashAttribute("msg", "기존 비밀번호와 일치합니다.");
			return "redirect:/profile/profiledetail";
		} else {
			String hash = encoder.encode((CharSequence) password);
			profileService.passChange(hash, login_id);
			logger.info("비밀번호 변경 성공");
			rAttr.addFlashAttribute("msg", "비밀번호가 변경되었습니다.");
			return "redirect:/";
		}
	}
	
	
	
	// 사진 업로드
	@PostMapping(value="/profile/upload.do")
	public String upload(MultipartFile uploadFile, HttpSession session) throws Exception {
		
		EmployeeDTO loginInfo = (EmployeeDTO) session.getAttribute("loginInfo");
		String login_id = loginInfo.getEmp_id();
		int file_kind = 5;
		logger.info("로그인 아이디 : "+login_id);
		
		logger.info("uploadFile : "+uploadFile);
		HashMap<String, Object> file = new HashMap<String, Object>();
		file.put("login_id", login_id);
		file.put("file_kind", file_kind);
		
		profileService.photoupdate(uploadFile, file);
		
		return "redirect:/profile/profiledetail";
	}
	
	@GetMapping(value="/photodel")
	public ModelAndView photodel(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		EmployeeDTO loginInfo = (EmployeeDTO) session.getAttribute("loginInfo");
		String login_id = loginInfo.getEmp_id();
		logger.info("로그인 아이디 : "+login_id);
		
		profileService.photodel(login_id);
		
		mav.setViewName("/profile/profiledetail");
		
		return mav;
	}
	

}
