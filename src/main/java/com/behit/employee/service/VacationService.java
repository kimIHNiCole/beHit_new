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

	public ModelAndView vacalist() {
		
		ModelAndView mav = new ModelAndView();
		
		ArrayList<VacationDTO> vacalist = vacationDAO.vacalist();
		
		mav.addObject("vacalist", vacalist);
		
		mav.setViewName("/employee/vacation_list");
		
		
		return mav;
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
