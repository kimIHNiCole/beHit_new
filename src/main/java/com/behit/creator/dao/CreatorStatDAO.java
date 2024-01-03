package com.behit.creator.dao;

import java.util.ArrayList;
import java.util.Date;

import org.apache.ibatis.annotations.Mapper;

import com.behit.creator.dto.ChannelDataDTO;

@Mapper
public interface CreatorStatDAO {

	ArrayList<String> getChannelId();

	void saveChannelData(ChannelDataDTO channelDataDTO);

	Date getChannelDataDate(String channelId);

}
