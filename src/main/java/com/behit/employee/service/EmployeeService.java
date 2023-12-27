package com.behit.employee.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.behit.employee.dao.EmployeeDAO;
import com.behit.employee.dto.EmployeeDTO;

@Service
public class EmployeeService {
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired EmployeeDAO employeeDAO;
	
	public int join(HashMap<String, Object> params) {
		
		int department = Integer.parseInt(params.get("department").toString());
		int rank = Integer.parseInt(params.get("rank").toString());
		int job = Integer.parseInt(params.get("job").toString());
		
		int position = department + rank + job;
		
		logger.info("position : "+position);
		
		params.put("position", position);
		
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

	public EmployeeDTO detail(String emp_id) {
		return employeeDAO.detail(emp_id);
	}
}
