package com.behit.approval.dto;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ApprovalDTO {
	
	private String emp_name;
	private String dept_name;
	private String grade_name;
	private String position_name;
	private String total_name;
	private String apv_file;
	private List<Map<String, String>> selectedNodes; // 열람권한
	
	private int apv_idx;
	private String emp_id;
	private String apv_code;
	private Date apv_date;
	private String apv_stmt;
	private String apv_num;
	private String apv_subject;
	private String apv_overview;
	private String apv_vac_type;
	private String apv_start_day;
	private String apv_end_day;
	private String apv_start_time;
	private String apv_end_time;
	private String apv_cnt;
	private String apv_approver;
	private String apv_time;
	
	private String apv_history_stmt;
	private Date apv_history_date;
	private String apv_history_reason;
	
	private int apv_line;
	private String emp_id_in;
	private Date apv_line_date;
	private String apv_line_up;
	private Date apv_line_date_up;
	
	private Date apv_perm_date;
	
	private String doc_code;
	private String vaca_date;
	private String vaca_start;
	private String vaca_end_time;
	private int use_hour;
	private String vaca_reason;

	

}
