package com.behit.employee.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.behit.employee.dao.VacationDAO;
import com.behit.employee.dto.VacationDTO;

@Service
public class VacationService {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired VacationDAO vacationDAO;

	public HashMap<String, Object> vacalist(String page, int login_dept) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		int p = Integer.parseInt(page);
		
		int offset = (p-1) * 10;	
		
		if (login_dept == 2) {
			ArrayList<VacationDTO> vacalistall = vacationDAO.vacalistall(offset);
			map.put("vacalist", vacalistall);
		} else {
			ArrayList<VacationDTO> vacalist = vacationDAO.vacalist(offset, login_dept);
			map.put("vacalist", vacalist);
		}
		
		int pages = vacationDAO.totalPage(login_dept);
		logger.info("만들 수 있는 총 페이지 갯수 : "+pages);
		
		if (p > pages) {
			p = pages;
		}
		
		map.put("currPage", p);
		map.put("pages", pages);
		
		return map;
	}

	public ModelAndView detail(String emp_id) {
		ModelAndView mav = new ModelAndView();
		
		VacationDTO dto = vacationDAO.detail(emp_id);
		
		ArrayList<VacationDTO> usingList = vacationDAO.usingList(emp_id);
		ArrayList<VacationDTO> createList = vacationDAO.createList(emp_id);
		
		mav.addObject("vacadetail", dto);
		mav.addObject("usingList", usingList);
		mav.addObject("createList", createList);
		
		mav.setViewName("/employee/vacation_detail");
		
		return mav;
	}
	
	public ModelAndView vacaChange(HashMap<String, Object> params) {
		
		ModelAndView mav = new ModelAndView();
		
		String change = (String) params.get("change");
		
		if (change.equals("insert")) {
			 vacationDAO.vacainsert(params);
		} else {
			vacationDAO.vacadelete(params);
		}
		
		mav.setViewName("redirect:/employee/vacadetail?emp_id="+params.get("emp_id"));
		
		return mav;
	}

}
