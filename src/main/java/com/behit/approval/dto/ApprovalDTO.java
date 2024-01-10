package com.behit.approval.dto;

import java.sql.Date;
import java.sql.Timestamp;

import org.apache.ibatis.annotations.Mapper;

import lombok.Getter;
import lombok.Setter;

@Mapper
@Getter
@Setter
public class ApprovalDTO {
	
	private String emp_name;
	private String dept_name;
	private String grade_name;
	private String position_name;
	
	private int apv_idx;
	private String emp_id;
	private String apv_code;
	private Date apv_date;
	private String apv_stmt;
	private String apv_num;
	private String apv_subject;
	private String apv_overview;
	private String apv_vac_type;
	private Date apv_start_day;
	private Date apv_end_day;
	private Timestamp apv_start_time;
	private Timestamp apv_end_time;
	private String apv_cnt;
	private String apv_approver;
	
	private String apv_history_stmt;
	private Date apv_history_date;
	private String apv_history_reason;
	
	private int apv_line;
	private String emp_id_in;
	private Date apv_line_date;
	private String apv_line_up;
	private Date apv_line_date_up;
	
	private Date apv_perm_date;

	

}
