package com.behit.creator.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import com.behit.creator.dto.ChannelDataDTO;

@Mapper
public interface CreatorStatDAO {

	ArrayList<HashMap<String, Object>> getChannelId();

	void saveChannelData(ChannelDataDTO channelDataDTO);

	Date getChannelDataDate(String channelId);

	ArrayList<HashMap<String, Object>> getChannelIdForDash();

}
