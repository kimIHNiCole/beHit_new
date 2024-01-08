package com.behit.employee.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.behit.employee.dao.WorkDAO;
import com.behit.employee.dto.EmployeeDTO;
import com.behit.employee.dto.VacationDTO;
import com.behit.employee.dto.WorkDTO;

@Service
public class WorkService {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired WorkDAO workDAO;

	public HashMap<String, Object> worklist(String date, String page) {
		
		int p = Integer.parseInt(page);
		
		int offset = (p-1) * 10;	
		
		ArrayList<WorkDTO> worklist = workDAO.worklist(date, offset);
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		int pages = workDAO.totalPage(10);
		logger.info("만들 수 있는 총 페이지 갯수 : "+pages);
		
		if (p > pages) {
			p = pages;
		}
		
		map.put("currPage", p);
		map.put("pages", pages);
		map.put("worklist", worklist);
		
		return map;
	}

	public ModelAndView detail(String login_id) {
		ModelAndView mav = new ModelAndView();
		
		VacationDTO dto = workDAO.detail(login_id);
		
		ArrayList<VacationDTO> usingList = workDAO.usingList(login_id);
		ArrayList<VacationDTO> createList = workDAO.createList(login_id);
		
		mav.addObject("workdetail", dto);
		mav.addObject("usingList", usingList);
		mav.addObject("createList", createList);
		
		mav.setViewName("/myHr/mhr_vacation");
		
		return mav;
	}

}
