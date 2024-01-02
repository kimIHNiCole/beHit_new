package com.behit.creator.dto;


import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("crehistory")
@Getter
@Setter
public class CreHistDTO {
	private int cre_idx;	// FK
	private String cre_his_title;
	private String cre_his_cate;
	private String cre_his_content;
	private String history_date;
	private String emp_id;
	private String emp_id_up;
	private Timestamp cre_his_date;
	private Timestamp cre_his_date_up;
}
