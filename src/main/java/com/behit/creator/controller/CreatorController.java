package com.behit.creator.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.behit.creator.dto.ChannelDTO;
import com.behit.creator.dto.CommCreDTO;
import com.behit.creator.dto.CreHistDTO;
import com.behit.creator.dto.CreatorDTO;
import com.behit.creator.dto.CreatorRequestDTO;
import com.behit.creator.dto.CreatorStatDTO;
import com.behit.creator.dto.SnsDTO;
import com.behit.creator.service.CreatorService;

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

	@PostMapping(value = "/creatorAdd.ajax.do"
			, consumes = MediaType.APPLICATION_JSON_VALUE)
	public HashMap<String, Object> creatorAddDO(
			@RequestBody CreatorRequestDTO creatorRequestDTO
			, HttpSession session) {
		logger.info("크리에이터 등록 요청 || prarms = {}", creatorRequestDTO);

		creatorService.creatorAdd(creatorRequestDTO, session);

		return null;
	}

}
