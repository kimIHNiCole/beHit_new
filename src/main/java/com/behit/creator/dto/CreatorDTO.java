package com.behit.creator.dto;


import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("creator")
@Getter
@Setter
public class CreatorDTO {
	private int cre_idx;	// PK AI
	private String mng_id;	// DB == emp_id
	private String cre_name;
	private String cre_nick_name;
	private String cre_gender;
	private String cre_email;
	private String cre_phone;
	private String cre_birthday;	// 서버에서 date형식으로 바꾸기
	private String cre_country;
	private String cre_address;
	private String cre_address_detail;
	private String cre_contract_start;	// 서버에서 date형식으로 바꾸기
	private String cre_contract_end;	// 서버에서 date형식으로 바꾸기
	private String cre_specifics;
	private String emp_id_in;			// 데이터 생성자
	private String emp_id_up; 			// 데이터 최종 수정자
	private Timestamp creator_date;		// 데이터 생성일
	private Timestamp creator_date_up;	// 데이터 최종 수정일
	
	private String new_file_name;
	private String ori_file_name;
	
	private List<Map<String, String>> selectedNodes; // 열람권한
	private String emp_id;
	
}
