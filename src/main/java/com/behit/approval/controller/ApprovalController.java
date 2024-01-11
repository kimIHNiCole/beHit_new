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
	public String approval_write(HttpSession session, ApprovalDTO dto, MultipartFile[] files) {
		EmployeeDTO loginInfo = (EmployeeDTO) session.getAttribute("loginInfo");
		
		return service.approval_write(loginInfo,dto,files);
	}
	
	@PostMapping(value="/approval/temporaryApproval_write.do")
	public String temporaryApproval_write(HttpSession session, ApprovalDTO dto, MultipartFile[] files) {
		EmployeeDTO loginInfo = (EmployeeDTO) session.getAttribute("loginInfo");
		
		return service.approval_write(loginInfo,dto,files);
	}
	
	@GetMapping(value="/approval/getApproval_list.do")
	@ResponseBody
	public List<ApprovalDTO> getApproval_list(HttpSession session) {
		EmployeeDTO loginInfo = (EmployeeDTO) session.getAttribute("loginInfo");
		String emp_id = loginInfo.getEmp_id();

		return service.getApproval_list(emp_id);
	}
	
	@GetMapping(value="/approval/getApproval_detail.go/{apv_idx}")
	public ModelAndView getApproval_detail(@PathVariable String apv_idx,HttpSession session) {
		EmployeeDTO loginInfo = (EmployeeDTO) session.getAttribute("loginInfo");
		String emp_id = loginInfo.getEmp_id();
		return service.getApproval_detail(apv_idx,emp_id);
	}
	
	@PostMapping(value="/approval/getApproval_detail.do")
	public String getApproval_detail_do(ApprovalDTO dto) {
		
		return service.getApproval_detail_do(dto);
	}
	
	@GetMapping(value="/approval/temporaryApproval_detail.go/{apv_idx}")
	public ModelAndView temporaryApproval_detail(@PathVariable String apv_idx,HttpSession session) {
		EmployeeDTO loginInfo = (EmployeeDTO) session.getAttribute("loginInfo");
		String emp_id = loginInfo.getEmp_id();
		return service.temporaryApproval_detail(apv_idx,emp_id);
	}
	
	
	@GetMapping(value="/approval/compApproval_list.do")
	@ResponseBody
	public List<ApprovalDTO> compApproval_list(HttpSession session) {
		EmployeeDTO loginInfo = (EmployeeDTO) session.getAttribute("loginInfo");
		String emp_id = loginInfo.getEmp_id();
		
		return service.compApproval_list(emp_id);
	}
	
	@GetMapping(value="/approval/requestApproval_list.do")
	@ResponseBody
	public List<ApprovalDTO> requestApproval_list(HttpSession session) {
		EmployeeDTO loginInfo = (EmployeeDTO) session.getAttribute("loginInfo");
		String emp_id = loginInfo.getEmp_id();

		return service.requestApproval_list(emp_id);
	}
	
	@GetMapping(value="/approval/finishApproval_list.do")
	@ResponseBody
	public List<ApprovalDTO> finishApproval_list(HttpSession session) {
		EmployeeDTO loginInfo = (EmployeeDTO) session.getAttribute("loginInfo");
		String emp_id = loginInfo.getEmp_id();

		return service.finishApproval_list(emp_id);
	}
	
	@GetMapping(value="/approval/rejectedApproval_list.do")
	@ResponseBody
	public List<ApprovalDTO> rejectedApproval_list(HttpSession session) {
		EmployeeDTO loginInfo = (EmployeeDTO) session.getAttribute("loginInfo");
		String emp_id = loginInfo.getEmp_id();

		return service.rejectedApproval_list(emp_id);
	}
	
	@GetMapping(value="/approval/temporaryApproval_list.do")
	@ResponseBody
	public List<ApprovalDTO> temporaryApproval_list(HttpSession session) {
		EmployeeDTO loginInfo = (EmployeeDTO) session.getAttribute("loginInfo");
		String emp_id = loginInfo.getEmp_id();

		return service.temporaryApproval_list(emp_id);
	}
	
	@GetMapping(value="/approval/{page}.go")
	public String pageMove(@PathVariable String page) {
		return "/approval/"+page;
	}
	
	


}
