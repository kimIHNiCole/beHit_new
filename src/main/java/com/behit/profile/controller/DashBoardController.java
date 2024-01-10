package com.behit.profile.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.behit.employee.dto.EmployeeDTO;
import com.behit.profile.dto.FileDTO;
import com.behit.profile.service.DashBoardService;

@Controller
public class DashBoardController {

	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired DashBoardService dashService;
	
	@GetMapping(value = "/home.go")
	public String homeGo(HttpSession session, Model model) {
		logger.info("home page로 이동");
		EmployeeDTO loginInfo = (EmployeeDTO) session.getAttribute("loginInfo");
		String login_id = loginInfo.getEmp_id();
		logger.info("로그인 아이디 : "+login_id);
		EmployeeDTO dashProfile=dashService.detail(login_id);
		FileDTO photo = dashService.getPhoto(login_id);

		model.addAttribute("dashProfile", dashProfile);
		model.addAttribute("photo", photo);
		return "home";
	}
}
