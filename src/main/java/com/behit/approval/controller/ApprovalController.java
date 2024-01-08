package com.behit.approval.controller;

import java.util.HashMap;
import java.util.List;

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
		
		return service.approval_write(loginInfo,params,files);
	}
	
	@GetMapping(value="/approval/getApproval_list.do")
	@ResponseBody
	public List<ApprovalDTO> getApproval_list(HttpSession session) {
		EmployeeDTO loginInfo = (EmployeeDTO) session.getAttribute("loginInfo");
		String emp_id = loginInfo.getEmp_id();

		return service.getApproval_list(emp_id);
	}
	
	@GetMapping(value="/approval/getApproval_detail.go/{apv_code}/{apv_idx}")
	public ModelAndView approval_detail(@PathVariable String apv_code, @PathVariable String apv_idx,HttpSession session) {
		EmployeeDTO loginInfo = (EmployeeDTO) session.getAttribute("loginInfo");
		String emp_id = loginInfo.getEmp_id();
		String login_name = loginInfo.getEmp_name();

		return service.approval_detail(apv_code,apv_idx,emp_id,login_name);
	}
	
	


}
