package com.behit.employee.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.behit.employee.dao.WorkDAO;
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
	
	public int selectday(HashMap<String, Object> commute) {
		
		logger.info("commute : "+commute);
		
		return workDAO.selectdate(commute);
	}

	public HashMap<String, Object> workmodal(String emp_id, String modaldate) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		ArrayList<WorkDTO> list = workDAO.workmodal(emp_id, modaldate);
		map.put("list", list);
		
		return map;
	}

	public boolean workChk(String login_id, String workdate) {
		
		return workDAO.workChk(login_id, workdate);
	}

	public int updateday(HashMap<String, Object> commute) {
		
		return workDAO.updatedate(commute);
		
	}

	public HashMap<String, Object> timelineList(String login_id, String workmonth) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		ArrayList<WorkDTO> list = workDAO.timelineList(login_id, workmonth);
		map.put("list", list);
		
		return map;
	}

	public ModelAndView timeNowList(String login_id, String workmonth) {
		
    	ModelAndView mav = new ModelAndView();
    	
    	ArrayList<HashMap<String, Object>> list = workDAO.timeNowList(login_id, workmonth);
    	
    	logger.info("list : "+list);
    	
    	mav.addObject("list", list);
    	mav.setViewName("/myHr/mhr_timeline");
		
		return mav;
	}



}
