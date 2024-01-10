package com.behit.approval.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.behit.approval.dto.ApprovalDTO;

@Mapper
public interface ApprovalDAO {

	ApprovalDTO approval_write_go(String emp_id);

	void approval_write_vac(ApprovalDTO dto);
	void approval_write_biz(ApprovalDTO dto);

	void apv_line(ApprovalDTO dto);
	void apv_approver(int apv_idx, String apv_approver);
	String apv_line_sel(int apv_idx, String apv_approver);
	void apv_update(int apv_idx, String apv_stmt);

	List<ApprovalDTO> getApproval_list(String emp_id);

	ApprovalDTO getApproval_detail(String apv_idx);
	ApprovalDTO apv_history_reason(String apv_idx);
	List<ApprovalDTO> getApv_line(String apv_idx);

	void getApproval_detail_do(ApprovalDTO dto);

	ApprovalDTO apv_line_stmt(String apv_idx, String emp_id);

	String apv_history_date(int apv_idx);
	void apv_update_num(int apv_idx, String apv_num);

	List<ApprovalDTO> requestApproval_list(String emp_id);
	List<ApprovalDTO> compApproval_list(String emp_id);
	List<ApprovalDTO> finishApproval_list(String emp_id);
	List<ApprovalDTO> rejectedApproval_list(String emp_id);



	
}
