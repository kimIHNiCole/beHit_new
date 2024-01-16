package com.behit.employee.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.behit.employee.dao.EmployeeDAO;
import com.behit.employee.dto.EmployeeDTO;

@Service
public class EmployeeService {
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired EmployeeDAO employeeDAO;
	
	public int join(HashMap<String, Object> params) {
		
		return employeeDAO.join(params);
	}

	public HashMap<String, Object> flist(String page, int login_dept) {
		
		int p = Integer.parseInt(page);
		
		int offset = (p-1) * 10;	
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		if (login_dept == 2) {
			ArrayList<EmployeeDTO> eflistall = employeeDAO.eflistall(offset);
			map.put("eflist", eflistall);
		} else {
			ArrayList<EmployeeDTO> eflist = employeeDAO.eflist(offset, login_dept);
			map.put("eflist", eflist);
		}
		
		
		int pages = employeeDAO.ftotalPage(login_dept);
		logger.info("만들 수 있는 총 페이지 갯수 : "+pages);
		
		if (p > pages) {
			p = pages;
		}
		
		map.put("currPage", p);
		map.put("pages", pages);
		
		
		return map;
	}
	
public HashMap<String, Object> slist(String page) {
		
		int p = Integer.parseInt(page);
		
		int offset = (p-1) * 10;	
		
		ArrayList<EmployeeDTO> eslist = employeeDAO.eslist(offset);
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		int pages = employeeDAO.stotalPage(10);
		logger.info("만들 수 있는 총 페이지 갯수 : "+pages);
		
		if (p > pages) {
			p = pages;
		}
		
		map.put("currPage", p);
		map.put("pages", pages);
		map.put("eslist", eslist);
		
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
		
		ArrayList<EmployeeDTO> HisList = employeeDAO.HisList(emp_id);
		
		mav.addObject("empdetail", dto);
		mav.addObject("deptList", deptList);
		mav.addObject("positionList", positionList);
		mav.addObject("gradeList", gradeList);
		mav.addObject("HisList", HisList);

		mav.setViewName("/employee/employee_detail");
		
		return mav;
	}

	public ModelAndView bupdate(HashMap<String, Object> params) {
		ModelAndView mav = new ModelAndView();
		logger.info("params : "+params);
		
		mav.setViewName("redirect:/employee/empdetail?emp_id="+params.get("emp_id"));
		
		employeeDAO.bupdate(params);
		employeeDAO.bupdateHistory(params);
		
		return mav;
		
	}

	public ModelAndView dupdate(HashMap<String, Object> params) {
		ModelAndView mav = new ModelAndView();
		logger.info("params : "+params);
		
		mav.setViewName("redirect:/employee/empdetail?emp_id="+params.get("emp_id"));
		
		employeeDAO.dupdate(params);
		employeeDAO.dupdateHistory(params);
		
		
		return mav;
	}

	public ModelAndView pupdate(HashMap<String, Object> params) {
		ModelAndView mav = new ModelAndView();
		logger.info("params : "+params);
		
		mav.setViewName("redirect:/employee/empdetail?emp_id="+params.get("emp_id"));
		
		employeeDAO.pupdate(params);
		employeeDAO.pupdateHistory(params);
		
		return mav;
	}

	public void chkClear(String emp_id) {
		employeeDAO.chkClear(emp_id);		
	}

	public void defaultwork(String emp_id, String day, String workstart, String workend) {
		employeeDAO.defaultwork(emp_id, day, workstart, workend);
		
	}

}
