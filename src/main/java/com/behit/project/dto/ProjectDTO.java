package com.behit.project.dto;

import java.sql.Date;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("proj")
@Getter
@Setter
public class ProjectDTO {
	
	private int proj_idx;
	private String emp_id;
	private Date proj_date;
	private String proj_subject;
	private Date proj_start;
	private Date proj_end;
	private String proj_content;
	private String proj_status;
	private String proj_delay;
	private Date proj_update;

}
