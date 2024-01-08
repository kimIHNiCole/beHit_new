package com.behit.approval.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.behit.approval.dto.ApprovalDTO;
import com.behit.employee.dto.EmployeeDTO;

@Mapper
public interface ApprovalDAO {

	EmployeeDTO approval_write_go(String emp_id);

	void approval_write_vac(ApprovalDTO dto);
	void approval_write_biz(ApprovalDTO dto);

	void apv_line(ApprovalDTO dto);
	void apv_approver(int apv_idx, String apv_approver);

	List<ApprovalDTO> getApproval_list(String emp_id);

	
}
