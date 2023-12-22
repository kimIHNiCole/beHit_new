package com.behit.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class MoveController {
	
Logger logger = LoggerFactory.getLogger(getClass());
	
	
	// ctrl + shift + R : 파일 찿기
	// ctrl + H : 문장 찾아 바꾸기 (찾을 내용, 대상 파일 패턴) -> replace 클릭해서 .html 을 .go 로 바꿀 수 있음 
	// 1. .html 을 찾아라 *.jsp 에서 
	// 2. .go( 을 찾아라 *.jsp 에서 
	// ctrl+shift+alt+L : 퀵 서치
	
	
	@GetMapping(value="/")
	public String home() {
		return "index";
	}
	
	@GetMapping(value="/{page}.go")
	public String pageMove(@PathVariable String page) {
		logger.info("page : "+page);
		return page;
	}
	
	@GetMapping(value="/{root}/{page}.go")
	public String pageMove(@PathVariable String root, @PathVariable String page) {
		return root+"/"+page;
	}
	
	@GetMapping(value="/{root}/{sub}/{page}.go")
	public String pageMove(@PathVariable String root, @PathVariable String page,@PathVariable String sub) {
		return root+"/"+sub+"/"+page;
	}

}
