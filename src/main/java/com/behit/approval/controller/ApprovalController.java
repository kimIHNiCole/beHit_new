package com.behit.approval.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.behit.approval.dto.ApprovalDTO;
import com.behit.approval.service.ApprovalService;

@Controller
public class ApprovalController {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired
	ApprovalService service;
	
	@GetMapping(value="/getApproval_list.go")
	public String getApproval_list() {
		return "getApproval_list";
	}
	
	@GetMapping(value="/compApproval_list.go")
	public String compApproval_list() {
		return "compApproval_list";
	}
	
	@GetMapping(value="/viewApproval_list.go")
	public String viewApproval_list() {
		return "viewApproval_list";
	}
	
	@GetMapping(value="/requestApproval_list.go")
	public String requestApproval_list() {
		return "requestApproval_list";
	}
	
	@GetMapping(value="/finishApproval_list.go")
	public String finishApproval_list() {
		return "finishApproval_list";
	}
	
	@GetMapping(value="/temporaryApproval_list.go")
	public String temporaryApproval_list() {
		return "temporaryApproval_list";
	}
	
	@GetMapping(value="/rejectedApproval_list.go")
	public String rejectedApproval_list() {
		return "rejectedApproval_list";
	}
	
	@GetMapping(value="/requestApproval_detail.go")
	public String requestApproval_detail() {
		return "requestApproval_detail";
	}
	
	@GetMapping(value="/getApproval_detail.go")
	public String getApproval_detail() {
		return "getApproval_detail";
	}
	
	@GetMapping(value="/compApproval_detail.go")
	public String compApproval_detail() {
		return "compApproval_detail";
	}
	
	@GetMapping(value="/viewApproval_detail.go")
	public String viewApproval_detail() {
		return "viewApproval_detail";
	}
	
	@GetMapping(value="/finishApproval_detail.go")
	public String finishApproval_detail() {
		return "finishApproval_detail";
	}
	
	@GetMapping(value="/temporaryApproval_detail.go")
	public String temporaryApproval_detail() {
		return "temporaryApproval_detail";
	}
	
	@GetMapping(value="/rejectedApproval_detail.go")
	public String rejectedApproval_detail() {
		return "rejectedApproval_detail";
	}
	
	@GetMapping(value="/approval/approval_preview.do")
	@ResponseBody
	public ModelAndView approval_preview(
			@RequestParam("emp_name") String empName, 
            @RequestParam("emp_dept") String empDept, 
            @RequestParam("apv_date") String apvDate, 
            @RequestParam("apv_idx") String apvIdx, 
            @RequestParam("form_vac_time") String formVacTime, 
            @RequestParam("apv_start_day") String apvStartDay, 
            @RequestParam("apv_end_day") String apvEndDay, 
            @RequestParam("apv_cnt") String apvCnt
			) {
		ModelAndView mav = new ModelAndView();
		
		ApprovalDTO dto = new ApprovalDTO();
		
		dto.setEmp_name(empName);
		
		logger.info(""+empName);
		logger.info("제가 찍히나요...");
		
		mav.addObject("dto",dto);
		return mav;
	}


}
