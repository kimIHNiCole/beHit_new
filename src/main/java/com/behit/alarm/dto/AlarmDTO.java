package com.behit.alarm.dto;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Alias("alarm")
public class AlarmDTO {

	private int alarm_idx;
	private String emp_id; // 알림 받는 사람
	private int alarm_type; // 알림 타입
	private int alarm_type_idx; // 알림 타입 idx
	private String alarm_msg; // 알림 메시지
	private String alarm_date; // 알림 발생 시간
	private String alarm_readCheck; // 읽음 여부
	
}
