package com.behit.approval.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.behit.approval.dto.ApprovalDTO;
import com.behit.employee.dto.EmployeeDTO;

@Mapper
public interface ApprovalDAO {

	ApprovalDTO approval_write_go(String emp_id);

	void approval_write_vac(ApprovalDTO dto);
	void approval_write_biz(ApprovalDTO dto);

	void apv_line(ApprovalDTO dto);
	void apv_approver(int apv_idx, String apv_approver);

	List<ApprovalDTO> getApproval_list(String emp_id);

	ApprovalDTO getApproval_detail(String apv_idx);
	List<ApprovalDTO> getApv_line(String apv_idx);

	void getApproval_detail_do(ApprovalDTO dto);

	String apv_line_sel(int apv_idx);

	List<ApprovalDTO> requestApproval_list(String emp_id);
	List<ApprovalDTO> compApproval_list(String emp_id);

	
}
