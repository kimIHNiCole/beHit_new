package com.behit.alarm.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.behit.alarm.dto.AlarmDTO;

@Mapper
public interface AlarmDAO {

	ArrayList<AlarmDTO> alarmList(String login_id);

	int deleteAlarm(String login_id, int alarmType, int alarmTypeIdx);

	int deleteAllAlarms(String login_id);

	int updateAlarmRead(String login_id, int alarmType, int alarmTypeIdx);

	int readAllAlarm(String login_id);

}
