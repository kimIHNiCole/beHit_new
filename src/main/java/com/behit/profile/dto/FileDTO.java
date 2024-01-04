package com.behit.profile.dto;

import java.sql.Date;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("file")
@Getter
@Setter
public class FileDTO {

	private int file_idx;
	private int file_kind;
	private String file_kind_idx;
	private String ori_file_name;
	private String new_file_name;
	private Date upload_date;
	

}
