package com.behit.employee.dto;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;



@Alias("work")
@Getter
@Setter
public class WorkDTO {
	
	private String emp_name;
	private String emp_id;
	private String dept_name;
	private String work_day;
	private String work_start;
	private String work_start_time;
	private String work_end;
	private String work_end_time;
	private String vaca_start;
	private String vaca_end;
	private String use_hour;
	private String work_started;
	private String work_ended;
	private String work_state;
	private String ori_file_name;
	private String new_file_name;
	private String doc_code;
}
