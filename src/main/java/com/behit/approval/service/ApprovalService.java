package com.behit.approval.service;

import java.sql.Date;
import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.behit.approval.dao.ApprovalDAO;
import com.behit.employee.dto.EmployeeDTO;

@Service
public class ApprovalService {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired
	ApprovalDAO dao;

	public ModelAndView approval_write_go(String form,String emp_id, String login_name) {
		
		ModelAndView mav = new ModelAndView("approval/approval_write");
		
		EmployeeDTO dto = dao.approval_write_go(emp_id);
		
		String dept_name = dto.getDept_name();
		Date emp_date = dto.getEmp_date();
		
		logger.info("로그인 아이디 : "+login_name);
		logger.info("직급 : "+ dept_name);
		logger.info("form : "+form);
		
		mav.addObject("form",form);
		mav.addObject("login_name",login_name);
		mav.addObject("dept_name",dept_name);
		mav.addObject("emp_date",emp_date);
		
		
		return mav;
	}

	public HashMap<String, Object> org_selected(String emp_id) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
	
		EmployeeDTO dto = dao.approval_write_go(emp_id);
		
		map.put("dept_name",dto.getDept_name());
		map.put("position_name",dto.getPosition_name());
		map.put("emp_name",dto.getEmp_name());
		
		return map;
	}

	public ModelAndView approval_write(EmployeeDTO loginInfo, HashMap<String, String> params, MultipartFile[] files) {
		
		ModelAndView mav = new ModelAndView("approval/approval_main");
		
		dao.approval_write(loginInfo,params);
		
		String emp_id = loginInfo.getEmp_id();
		String login_name = loginInfo.getEmp_name();
		
		String apv_start_day = params.get("apv_start_day");
		String apv_end_day = params.get("apv_end_day");
		String apv_start_time = params.get("apv_start_time");
		String apv_end_time = params.get("apv_end_time");
		String total_name = params.get("total_name");
		String apv_cnt = params.get("apv_cnt");
		String apv_code = params.get("apv_code");
		String apv_vac_type = params.get("apv_vac_type");
		
		logger.info("apv_end_day : "+apv_end_day);
		logger.info("apv_start_day : "+apv_start_day);
		logger.info("apv_start_time : "+apv_start_time);
		logger.info("apv_end_time : "+apv_end_time);
		logger.info("total_name : "+total_name);
		logger.info("apv_cnt : "+apv_cnt);
		logger.info("apv_vac_type : "+apv_vac_type);
		
		
		return mav;
	}

}
