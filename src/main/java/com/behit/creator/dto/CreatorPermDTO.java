package com.behit.creator.dto;

import org.apache.ibatis.type.Alias;

import lombok.Setter;

import lombok.Getter;

@Alias("creatorperm")
@Getter
@Setter
public class CreatorPermDTO {
	private String emp_id;
	private int cre_idx;
}
