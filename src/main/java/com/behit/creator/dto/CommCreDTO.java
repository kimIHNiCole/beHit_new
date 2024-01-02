package com.behit.creator.dto;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("commcre")
@Getter
@Setter
public class CommCreDTO {
	private int code_idx;
	private int code_kind;
	private String code_name;
}
