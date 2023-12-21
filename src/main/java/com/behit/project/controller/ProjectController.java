package com.behit.project.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProjectController {

	Logger logger = LoggerFactory.getLogger(getClass());
	
	@GetMapping(value = "/project_main.go")
	public String projectMainGo() {
		logger.info("프로젝트 메인 홈 이동");
		return "project_main";
	}
}
