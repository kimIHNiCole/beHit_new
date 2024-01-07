package com.behit.util.dto;

import java.sql.Date;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("util")
@Getter
@Setter
public class UtilDTO {

	private String emp_id;
	private int file_kind;
	private String file_kind_idx;
	private String ori_file_name;
	private String new_file_name;
	private Date upload_date;
}
