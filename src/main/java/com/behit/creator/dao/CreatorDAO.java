package com.behit.creator.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import com.behit.creator.dto.ChannelDTO;
import com.behit.creator.dto.ChannelDataDTO;
import com.behit.creator.dto.CommCreDTO;
import com.behit.creator.dto.CreHistDTO;
import com.behit.creator.dto.CreatorDTO;
import com.behit.creator.dto.SnsDTO;

@Mapper
public interface CreatorDAO {

	// 크리에이터 등록시 항목 데이터
	ArrayList<CommCreDTO> getGenders();
	ArrayList<CommCreDTO> getCountries();
	ArrayList<String> getChCategory();
	
	// 크리에이터 등록
	int creatorInsert(CreatorDTO creatorDTO);
	int channelInsert(ChannelDTO channelDTO);
	int snsInsert(SnsDTO snsDTO);
	int creHisInsert(CreHistDTO creHistDTO);

	// 크리에이터 리스트 
	HashMap<String, Object> getTotalInfo();
	ArrayList<HashMap<String, Object>> getAllList();
	ArrayList<HashMap<String, Object>> getMyList(String loginId);
	
	// 크리에이터 상세 정보
	CreatorDTO getCreator(int cre_idx);
	ArrayList<HashMap<String, Object>> getChannel(int cre_idx);
	ArrayList<String> getChannelIdByCreIdx(int cre_idx);
	ArrayList<HashMap<String, Object>> getCreHistory(int cre_idx);
	ArrayList<SnsDTO> getSns(int cre_idx);
	
	// 크리에이터 상세정보 - 대표 채널 데이터
	ArrayList<ChannelDataDTO> getChartData(String repChannelId);
	

}
