package com.behit.util.controller;

import java.io.IOException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.behit.util.service.UtilService;

@Controller
public class UtilController {

	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired
	UtilService utilService;
	
	@GetMapping(value="/download.do")
	public ResponseEntity<Resource> download(@RequestParam int idx) throws IOException {
		
		return utilService.download(idx);	
	}
}
