package com.behit.employee.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.behit.employee.dto.EmployeeDTO;
import com.behit.employee.service.WorkService;

@Controller
public class WorkController {

	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired
	WorkService workService;
	
	@GetMapping(value="/worklist.do")
	@ResponseBody
	public HashMap<String, Object> worklist(@RequestParam String date, @RequestParam String page){
		
		logger.info("컨트롤러 접근");
		logger.info("date : "+date);
		
		return workService.worklist(date, page);
	}
	
	@PostMapping(value="/myHr/caldate")
	public ModelAndView caldate(@RequestParam String date, HttpSession session) {
		
		ModelAndView mav = new ModelAndView();
		logger.info("date : "+date);
		
		session.setAttribute("caldate", date);
		
		mav.setViewName("/myHr/mhr_timeline");
		return mav;
	}
	
	@GetMapping(value="/myHr/workdetail")
	public ModelAndView vacadetail(HttpSession session) {
		
		EmployeeDTO loginInfo = (EmployeeDTO) session.getAttribute("loginInfo");
		String login_id = loginInfo.getEmp_id();
		logger.info("로그인 아이디 : "+login_id);
		
		return workService.detail(login_id);
	}
}
