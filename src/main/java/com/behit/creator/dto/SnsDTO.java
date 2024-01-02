package com.behit.creator.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("sns")
@Getter
@Setter
public class SnsDTO {
	private int sns_idx;	// PK AI
	private int cre_idx;	// FK	
	private String sns_url;
	private String sns_cate;
	private String emp_id;
	private String emp_id_up;
	private Timestamp sns_date;
	private Timestamp sns_date_up;
	
}
