package com.behit.employee.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.ModelAndViewDefiningException;

import com.behit.employee.dao.EmployeeDAO;
import com.behit.employee.dto.EmployeeDTO;

@Service
public class EmployeeService {
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired EmployeeDAO employeeDAO;
	
	public int join(HashMap<String, Object> params) {
		
		return employeeDAO.join(params);
	}

	public HashMap<String, Object> list(String page) {
		
		int p = Integer.parseInt(page);
		
		int offset = (p-1) * 10;	
		
		ArrayList<EmployeeDTO> elist = employeeDAO.elist(offset);
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		int pages = employeeDAO.totalPage(10);
		logger.info("만들 수 있는 총 페이지 갯수 : "+pages);
		
		if (p > pages) {
			p = pages;
		}
		
		map.put("currPage", p);
		map.put("pages", pages);
		map.put("elist", elist);
		
		return map;
	}

	public ModelAndView detail(String emp_id) {
		
		ModelAndView mav = new ModelAndView();
		
		EmployeeDTO dto = employeeDAO.detail(emp_id);
		
		String dept_name = dto.getDept_name();
		String position_name = dto.getPosition_name();
		String grade_name = dto.getGrade_name();

		logger.info("1"+dept_name+position_name+grade_name);		
		
		
		ArrayList<EmployeeDTO> deptList = employeeDAO.deptList(dept_name);	
		ArrayList<EmployeeDTO> positionList = employeeDAO.positionList(position_name);
		ArrayList<EmployeeDTO> gradeList = employeeDAO.gradeList(grade_name);
		
		mav.addObject("empdetail", dto);
		mav.addObject("deptList", deptList);
		mav.addObject("positionList", positionList);
		mav.addObject("gradeList", gradeList);

		mav.setViewName("/employee/employee_detail");
		
		return mav;
	}

	public ModelAndView bupdate(HashMap<String, Object> params) {
		ModelAndView mav = new ModelAndView();
		logger.info("params : "+params);
		
		mav.setViewName("redirect:/employee/empdetail?emp_id="+params.get("emp_id"));
		
		employeeDAO.bupdate(params);
		
		return mav;
		
	}

	public ModelAndView dupdate(HashMap<String, Object> params) {
		ModelAndView mav = new ModelAndView();
		logger.info("params : "+params);
		
		mav.setViewName("redirect:/employee/empdetail?emp_id="+params.get("emp_id"));
		
		employeeDAO.dupdate(params);
		
		return mav;
	}

	public ModelAndView pupdate(HashMap<String, Object> params) {
		ModelAndView mav = new ModelAndView();
		logger.info("params : "+params);
		
		mav.setViewName("redirect:/employee/empdetail?emp_id="+params.get("emp_id"));
		
		employeeDAO.pupdate(params);
		
		return mav;
	}
}
