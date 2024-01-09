package com.behit.project.dto;

import java.sql.Date;
import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("projR")
@Getter
@Setter
public class ProjectRecordDTO {
	
	private int projR_idx;
	private int proj_idx;
	private String projR_content;
	private Timestamp projR_date;
	private Date projR_update;
	private String projR_upstate;
	private String emp_id;
	private String ori_file_name;
	private String new_file_name;
	private String emp_name;
}
