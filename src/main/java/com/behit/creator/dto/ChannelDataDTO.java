package com.behit.creator.dto;

import java.math.BigInteger;
import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("channeldata")
@Getter
@Setter
public class ChannelDataDTO {
	
	private String channel_id;
	private Timestamp channel_data_date;
	private BigInteger subscriber;
	private BigInteger views;
	private BigInteger contents;
	private int view_trend;
	private int rep_channel;
	
	private BigInteger total_subscribers;
	private BigInteger total_contents;
}
