package com.behit.project.dto;

import java.sql.Date;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("projFile")
@Getter
@Setter
public class ProjectFileDTO {
	
	private int proj_idx;
	private String ori_file_name;
	private String new_file_name;
	private Date upload_date;
}
