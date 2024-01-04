package com.behit.approval.dto;

import java.sql.Date;

import org.apache.ibatis.annotations.Mapper;

import lombok.Getter;
import lombok.Setter;

@Mapper
@Getter
@Setter
public class ApprovalDTO {
	
	String emp_name;
	String emp_dept;
	Date from_vac_time;
	
	int apv_idx;
	String emp_id;
	int apv_code;
	Date apv_date;
	String apv_stmt;
	String apv_num;
	String apv_subject;
	String apv_overview;
	String apv_vac_type;
	Date apv_start_day;
	Date apv_end_day;
	Date apv_start_time;
	Date apv_end_time;
	String apv_cnt;
	String apv_approver;
	
	String apv_history_stmt;
	Date apv_history_date;
	String apv_history_reason;
	
	int apv_line;
	String emp_id_in;
	Date apv_line_date;
	String apv_line_up;
	Date apv_line_date_up;
	
	Date apv_perm_date;

	

}
