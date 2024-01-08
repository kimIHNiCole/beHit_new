package com.behit.project.controller;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.behit.creator.service.CreatorStatService;
import com.behit.employee.dto.EmployeeDTO;
import com.behit.project.dto.ProjectDTO;
import com.behit.project.service.ProjectService;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class ProjectController {

	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired ProjectService service;
	
	@GetMapping(value = "/views/project_main.go")
	public String projectMainGo() {
		logger.info("프로젝트 메인 홈 이동");
		return "project_main";
	}
	
	// 프로젝트 작성
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
	
	// 사이드 프로젝트 전체리스트
	@GetMapping(value="/project/projList.do")
	@ResponseBody
	public Map<String, Object> projListDo(HttpSession session, @RequestParam String whatlist){
		EmployeeDTO dto = (EmployeeDTO) session.getAttribute("loginInfo");
		String emp_id = dto.getEmp_id();
		Map<String, Object> map = new HashMap<String, Object>();
		
		if(whatlist == "") {			
			ArrayList<ProjectDTO> list = service.projList(emp_id);
			map.put("list", list);
		}else {
			ArrayList<ProjectDTO> list = service.projwhatList(emp_id, whatlist);
			map.put("list", list);
		}
		
		
		
		// LocalDate now = LocalDate.now(); 현재 날짜
		// logger.info("현재날짜: "+now);
		
		return map;
	}
	
	// 즉시작업 리스트
	@GetMapping(value="/project/projNowList.do")
	@ResponseBody
	public Map<String, Object> projListNowDo(HttpSession session){
		EmployeeDTO dto = (EmployeeDTO) session.getAttribute("loginInfo");
		String emp_id = dto.getEmp_id();
		
		ArrayList<ProjectDTO> list = service.projnow(emp_id);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		
		return map;
	}
	
	// 대기 리스트
	@GetMapping(value="/project/projWaitList.do")
	@ResponseBody
	public Map<String, Object> projListWaitDo(HttpSession session){
		EmployeeDTO dto = (EmployeeDTO) session.getAttribute("loginInfo");
		String emp_id = dto.getEmp_id();
		
		ArrayList<ProjectDTO> list = service.projwait(emp_id);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		
		return map;
	}
	
	// 진행중 리스트
	@GetMapping(value="/project/projWorksList.do")
	@ResponseBody
	public Map<String, Object> projListWorksDo(HttpSession session){
		EmployeeDTO dto = (EmployeeDTO) session.getAttribute("loginInfo");
		String emp_id = dto.getEmp_id();
		
		ArrayList<ProjectDTO> list = service.projworks(emp_id);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		
		return map;
	}
	
	// 지연된 리스트
	@GetMapping(value="/project/projDelayList.do")
	@ResponseBody
	public Map<String, Object> projListDelayDo(HttpSession session){
		EmployeeDTO dto = (EmployeeDTO) session.getAttribute("loginInfo");
		String emp_id = dto.getEmp_id();
		
		ArrayList<ProjectDTO> list = service.projdelay(emp_id);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		
		return map;
	}
	
	@GetMapping(value={"/project/project_detail.go", "/views/project_detail.go"})
	public ModelAndView projectDetailGo(@RequestParam String proj_idx) {
		ModelAndView mav = new ModelAndView();
		logger.info("상세페이지 이동요청 및 proj_idx: "+proj_idx);
		Map<String, String> detailList = service.projDetail(proj_idx);
		// List<ProjectDTO> detailList = service.projDetail(proj_idx);
		logger.info("상세페이지 정보: "+detailList);
		
		mav.addObject("detailList", detailList);
		mav.setViewName("/project/project_detail");
		
		return mav;
	}
	
	@PostMapping(value="/project/projUpStatus.do")
	@ResponseBody
	public Map<String, Object> projUpStatusDo(@RequestParam String projIdx, @RequestParam String projStatus) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		service.projUpStatus(projIdx,projStatus);
		
		map.put("success", "성공");
		
		return map;
	}
}
