package com.behit.creator.controller;

import java.net.URI;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.context.annotation.RequestScope;
import org.springframework.web.servlet.ModelAndView;

import com.behit.creator.dto.ChannelDTO;
import com.behit.creator.dto.CommCreDTO;
import com.behit.creator.dto.CreHistDTO;
import com.behit.creator.dto.CreatorDTO;
import com.behit.creator.dto.CreatorRequestDTO;
import com.behit.creator.dto.CreatorStatDTO;
import com.behit.creator.dto.SnsDTO;
import com.behit.creator.service.CreatorService;
import com.behit.employee.dto.EmployeeDTO;

import lombok.extern.slf4j.Slf4j;

@RestController
public class CreatorController {
	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired
	CreatorService creatorService;

	@GetMapping(value = "/creatorAdd.go")
	public ModelAndView creatorAddGo(ModelAndView mav) {
		logger.info("크리에이터 등록 페이지로 이동 요청");

		ArrayList<CommCreDTO> genders = creatorService.getGenders();
		ArrayList<CommCreDTO> countries = creatorService.getCountries();
		logger.info("genders : " + genders.toString());
		logger.info("countries : " + countries.toString());
		mav.addObject("genders", genders);
		mav.addObject("countries", countries);

		mav.setViewName("creators/creator_add");
		return mav;
	}

	@GetMapping(value = "/getChCate.ajax.do")
	public HashMap<String, Object> getChCateDo() {
		logger.info("채널카테고리 데이터 요청");

		ArrayList<String> chCategory = creatorService.getChCategory();
		logger.info("chCategory : " + chCategory.size());

		HashMap<String, Object> result = new HashMap<String, Object>();
		result.put("chCategory", chCategory);

		return result;
	}
	
	@PostMapping(value = "/getChInfo.ajax.do")
	public HashMap<String, Object> getChInfo(@RequestParam String videoURL){
		logger.info("videoURL = "+videoURL);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {
			HashMap<String, String> chInfo = creatorService.getChannelInfo(videoURL);
			result.put("chInfo", chInfo);
		} catch (Exception e) {
			result.put("msg","영상의 주소를 확인해주세요");
			e.printStackTrace();
		}
		return result;
	}

	@PostMapping(value = "/creatorAdd.ajax.do", consumes = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<Void> creatorAddDO(@RequestBody CreatorRequestDTO creatorRequestDTO, HttpSession session) {
		logger.info("크리에이터 등록 요청 || prarms = {}", creatorRequestDTO);
		try {
			// creatorAdd()가 정상적으로 수행되었을때
			creatorService.creatorAdd(creatorRequestDTO, session);
			return new ResponseEntity<>(HttpStatus.OK);
		} catch (Exception e) {
			// 그렇지 않을때
			logger.info("creatorAdd()에서 오류 발생");
			logger.error(e.getMessage(), e);
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
		}

	}

//	@GetMapping(value = "/creatorListAll.go")
//	public ModelAndView creatorlistMy(HttpSession session, ModelAndView mav) {
//		logger.info("전체 크리에이터 리스트 페이지로 이동");
//		
//		EmployeeDTO loginInfo = (EmployeeDTO)session.getAttribute("loginInfo");
//		String loginId = loginInfo.getEmp_id();
//		
//		HashMap<String, Object> totalInfo = creatorService.getTotalInfo();
//		ArrayList<HashMap<String, Object>> allList = creatorService.getAllList();
//		ArrayList<HashMap<String,Object>> myList = creatorService.getMyList(loginId);
//		
//		mav.setViewName("creators/creator_list_all");
//		mav.addObject("totalInfo", totalInfo);
//		mav.addObject("allList", allList);
//		mav.addObject("myList", myList);
//		return mav;
//	}
	
	@GetMapping(value = "/creatorListAll.go")
	public HashMap<String, Object> creatorlistMy(HttpSession session) {
		logger.info("전체 크리에이터 리스트 페이지로 이동");
		
		EmployeeDTO loginInfo = (EmployeeDTO)session.getAttribute("loginInfo");
		String loginId = loginInfo.getEmp_id();
		
		HashMap<String, Object> totalInfo = creatorService.getTotalInfo();
		ArrayList<HashMap<String, Object>> allList = creatorService.getAllList();
		ArrayList<HashMap<String,Object>> myList = creatorService.getMyList(loginId);
		
		HashMap<String, Object> result = new HashMap<String, Object>();
		result.put("totalInfo", totalInfo);
		result.put("allList", allList);
		result.put("myList", myList);
		return result;
	}


}
