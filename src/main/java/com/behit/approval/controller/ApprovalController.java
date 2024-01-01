package com.behit.approval.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.behit.approval.dto.ApprovalDTO;
import com.behit.approval.service.ApprovalService;

@Controller
public class ApprovalController {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired
	ApprovalService service;
	
	
	
	@GetMapping(value="/approval/approval_write.go/{form}")
	public ModelAndView pageMove(@PathVariable String form) {
		ModelAndView mav = new ModelAndView("approval/approval_write");
		mav.addObject("form",form);
		logger.info("form : "+form);
		return mav;
	}
	


}
