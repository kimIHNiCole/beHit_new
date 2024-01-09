package com.behit.project.dto;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("projT")
@Getter
@Setter
public class ProjectTeamDTO {
	
	private int proj_idx;
	private String emp_id;
	private int projT_contact;
	private String emp_name;
}
