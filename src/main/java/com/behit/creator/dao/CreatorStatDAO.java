package com.behit.creator.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CreatorStatDAO {

	ArrayList<String> getChannelId();

	void saveChannelData(String channelId);

}
