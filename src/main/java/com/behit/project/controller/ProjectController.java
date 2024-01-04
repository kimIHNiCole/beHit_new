package com.behit.project.controller;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.behit.project.service.ProjectService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class ProjectController {

	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired ProjectService service;
	
	@GetMapping(value = "/project_main.go")
	public String projectMainGo() {
		logger.info("프로젝트 메인 홈 이동");
		return "project_main";
	}
	
	@PostMapping(value = "/project/project_add.do")
	@ResponseBody
	public Map<String, Object> projectAddDo(
	        @RequestParam("createId") String createId,
	        @RequestParam("textsubject") String textsubject,
	        @RequestParam("startproj") String startproj,
	        @RequestParam("endproj") String endproj,
	        @RequestParam("textContent") String textContent,
	        @RequestParam(value = "files[]", required = false) MultipartFile[] files,
	        @RequestParam("selectedNodes") String selectedNodes,
	        @RequestParam("selectedNodes1") String selectedNodes1) throws Exception {
	    
		logger.info("createId: {}", createId);
        logger.info("textsubject: {}", textsubject);
        logger.info("startproj: {}", startproj);
        logger.info("endproj: {}", endproj);
        logger.info("textContent: {}", textContent);
        logger.info("selectedNodes: {}", selectedNodes);
        logger.info("selectedNodes1: {}", selectedNodes1);
        
        ObjectMapper objectMapper = new ObjectMapper();
        List<String> selectedNodesList = null;
        List<String> selectedNodesList1 = null;
        try {
        	if("[]".equals(selectedNodes)) {
        	}else {        		
        		selectedNodesList = objectMapper.readValue(selectedNodes, new TypeReference<List<String>>() {});
        	}
        	if("[]".equals(selectedNodes1)) {
        	}else {
        		selectedNodesList1 = objectMapper.readValue(selectedNodes1, new TypeReference<List<String>>() {});
        	}
        } catch (Exception e) {
            logger.error("JSON error: "+e);
        }
        
        if(createId != "") {
        	int insert = 0;
        	insert = service.projwrite(createId,textsubject,startproj,endproj,textContent);
        	logger.info("insert된 proj_idx 번호값: "+insert);
        	if(insert != 0) {        		
        		int lastIdx = service.projIdx();
        		if(selectedNodesList != null) {
        			for (String nodeD : selectedNodesList) {
        				logger.info("담당자: {}", nodeD);
        				service.projteamD(lastIdx,nodeD);
        			}
        		}
        		if(selectedNodesList1 != null) {
        			for (String nodeC : selectedNodesList1) {
        				logger.info("참조자: {}", nodeC);
        				service.projteamC(lastIdx,nodeC);
        			}
        		}
        		if (files != null) {
        			for (MultipartFile file : files) {
        				logger.info("File name: {}", file.getOriginalFilename());
        				service.upload(lastIdx, file, createId);
        			}
        		}
        	}
        }
		
	    Map<String, Object> map = new HashMap<>();
	    map.put("success", "성공");
	    return map;
	}
	
}
