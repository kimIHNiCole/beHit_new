package com.behit.alarm.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.behit.alarm.dto.AlarmDTO;

@Mapper
public interface AlarmDAO {

	ArrayList<AlarmDTO> alarmList(String login_id);

}
