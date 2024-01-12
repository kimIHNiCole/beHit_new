package com.behit.creator.service;

import java.io.IOException;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.behit.creator.dao.CreatorStatDAO;
import com.behit.creator.dto.ChannelDataDTO;
import com.google.api.client.googleapis.javanet.GoogleNetHttpTransport;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.api.services.youtube.YouTube;
import com.google.api.services.youtube.model.Channel;
import com.google.api.services.youtube.model.ChannelListResponse;

@Service
public class CreatorStatService {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired CreatorStatDAO creatorStatDAO;
	
	@Value("${GOOGLE-KEY}") String secret_key;
	
	
	ChannelDataDTO channelDataDTO = new ChannelDataDTO();
	Channel channel=null;
	// 여러개 저장할때
	
	
	// 구버전
//	public void saveChannelData() {
//		logger.info("SCHEDULING :: saveChannelData() 실행");
//		// 채널 id 가져오기 ( 크리에이터당 대표 채널만 )
//		ArrayList<String> channelIdList = creatorStatDAO.getChannelId(); 
//		for(String channeId : channelIdList) {
//			logger.info("channelId = "+channeId);
//		}
//		logger.info(secret_key);
//		
//		for(String channelId : channelIdList) {
//			logger.info("channelIdList 하나씩 꺼내기 : "+channelId);
//			
//			// 각 채널마다 구독자수, 총 조회수, 총 컨텐츠 수 가져오기
//			saveChannelDataOne(channelId);
//		}
//	}
	
	// 신버전
	public void saveChannelData() {
		logger.info("SCHEDULING :: saveChannelData() 실행");
		// 채널 id와 대표채널여부 가져오기 
		ArrayList<HashMap<String, Object>> channelIdList = creatorStatDAO.getChannelId(); 
		logger.info("channelIdList size = "+channelIdList.size());
		for(HashMap<String, Object> channelIdAndRep : channelIdList) {
			logger.info("channelId = "+channelIdAndRep.get("channel_id"));
			logger.info("rep_channel = "+channelIdAndRep.get("rep_channel"));
		}
		logger.info(secret_key);
		
		for(HashMap<String, Object> channelIdAndRep : channelIdList) {
			logger.info("channelIdList 하나씩 꺼내기 : "+channelIdAndRep);
			
			// 각 채널마다 구독자수, 총 조회수, 총 컨텐츠 수 가져오기
			saveChannelDataOne(channelIdAndRep);
		}
	}
	
	// 하나만 저장할때
	public void saveChannelDataOne(HashMap<String, Object> channelIdAndRep) {
		logger.info("SCHEDULING :: saveChannelDataOne() 실행");
			String channelId= (String)channelIdAndRep.get("channel_id");
			int rep_channel = (int) channelIdAndRep.get("rep_channel");
            useYoutubeApi(channelId);
            
            BigInteger subscriber = channel.getStatistics().getSubscriberCount();
	        BigInteger views = channel.getStatistics().getViewCount();
	        BigInteger contents = channel.getStatistics().getVideoCount();
            // DB 저장하기
            channelDataDTO.setChannel_id(channelId);
            channelDataDTO.setSubscriber(subscriber);
            channelDataDTO.setViews(views);
            channelDataDTO.setContents(contents);
            channelDataDTO.setRep_channel(rep_channel);
            logger.info("channel_id = "+channelDataDTO.getChannel_id());
            logger.info("subscriber = "+channelDataDTO.getSubscriber());
            logger.info("views"+channelDataDTO.getViews());
            logger.info("contents"+channelDataDTO.getContents());
            logger.info("rep_channel"+channelDataDTO.getRep_channel());
            
            // 조회수추이값 계산하기 
            // insert와 동시에 => 쿼리를 통해 수행
            creatorStatDAO.saveChannelData(channelDataDTO);
	}
	
	
	public Channel useYoutubeApi(String channelId) {
		try {
			YouTube youtubeService = new YouTube.Builder(GoogleNetHttpTransport.newTrustedTransport()
	        		, JacksonFactory.getDefaultInstance(), null)
	                	.setApplicationName("BeHit")
	                	.build();
	        YouTube.Channels.List request;
				request = youtubeService.channels()
				    .list("snippet,contentDetails,statistics");
	        ChannelListResponse response = request.setId(channelId)
	            .setKey(secret_key)
	            .execute();
	        channel = response.getItems().get(0);
	        
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return channel;
	}
	
	// 크리에이터 대쉬보드 
	public ArrayList<HashMap<String, Object>> getCreatorRank(){
		logger.info("크리에이터 랭크 가져오기 실행");
		ArrayList<HashMap<String, Object>> creatorRankList = new ArrayList<HashMap<String,Object>>();
		// youtube data api 로 데이터 수집
		
		return creatorRankList;
	}


}
