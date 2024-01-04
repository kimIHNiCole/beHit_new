package com.behit.approval.controller;

import java.sql.Date;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.behit.approval.dto.ApprovalDTO;
import com.behit.approval.service.ApprovalService;
import com.behit.employee.dto.EmployeeDTO;

@Controller
public class ApprovalController {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired
	ApprovalService service;

	@GetMapping(value="/approval/approval_write.go/{form}")
	public ModelAndView approval_write_go(@PathVariable String form,HttpSession session) {
		EmployeeDTO loginInfo = (EmployeeDTO) session.getAttribute("loginInfo");
		String emp_id = loginInfo.getEmp_id();
		String login_name = loginInfo.getEmp_name();

		return service.approval_write_go(form,emp_id,login_name);
	}
	
	@GetMapping(value="/org_selected")
	@ResponseBody
	public HashMap<String, Object> org_selected(@RequestParam String emp_id){
		logger.info("선택된 emp_id :"+emp_id);
		return service.org_selected(emp_id);
	}
	
	@PostMapping(value="/approval/approval_write.do")
	public ModelAndView approval_write(HttpSession session, @RequestParam HashMap<String, String> params, MultipartFile[] files) {
		
		ModelAndView mav = new ModelAndView("approval/approval_main");
		EmployeeDTO loginInfo = (EmployeeDTO) session.getAttribute("loginInfo");
		
		String emp_id = loginInfo.getEmp_id();
		String login_name = loginInfo.getEmp_name();
		
		String apv_start_day = params.get("apv_start_day");
		String apv_end_day = params.get("apv_end_day");
		String apv_start_time = params.get("apv_start_time");
		String apv_end_time = params.get("apv_end_time");
		String total_name = params.get("total_name");
		String apv_cnt = params.get("apv_cnt");
		
		logger.info("apv_end_day : "+apv_end_day);
		logger.info("apv_start_day : "+apv_start_day);
		logger.info("apv_start_time : "+apv_start_time);
		logger.info("apv_end_time : "+apv_end_time);
		logger.info("total_name : "+total_name);
		logger.info("apv_cnt : "+apv_cnt);

		return service.approval_write(loginInfo,params,files);
	}
	
	


}
