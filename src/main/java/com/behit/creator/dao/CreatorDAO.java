package com.behit.creator.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.behit.creator.dto.ChannelDTO;
import com.behit.creator.dto.CommCreDTO;
import com.behit.creator.dto.CreHistDTO;
import com.behit.creator.dto.CreatorDTO;
import com.behit.creator.dto.SnsDTO;

@Mapper
public interface CreatorDAO {

	ArrayList<CommCreDTO> getGenders();

	ArrayList<CommCreDTO> getCountries();

	ArrayList<String> getChCategory();

	int creatorInsert(CreatorDTO creatorDTO);
	int channelInsert(ChannelDTO channelDTO);
	int snsInsert(SnsDTO snsDTO);
	int creHisInsert(CreHistDTO creHistDTO);
	

}
