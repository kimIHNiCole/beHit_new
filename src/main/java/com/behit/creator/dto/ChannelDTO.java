package com.behit.creator.dto;

import java.sql.Timestamp;
import java.util.Date;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Alias("channel")
@Getter
@Setter
public class ChannelDTO {
	
	private String channel_id;	// PK Youtube api로 가져오기
	private int cre_idx;	// FK
	
	private String channel_name;
	private String channel_url;
	private int rep_channel;
	private String channel_date;
	private String channel_cate;
	private String rep_video;
	private String emp_id;
	private String emp_id_up;
	private Timestamp channel_date_in;
	private Timestamp channel_date_up;
	
}
