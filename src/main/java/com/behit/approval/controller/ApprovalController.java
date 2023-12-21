package com.behit.approval.controller;

import org.springframework.web.bind.annotation.GetMapping;

public class ApprovalController {
	
	
	@GetMapping(value="/approval_main.go")
	public String approval_main() {
		return "approval_main";
	}
	
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

}
