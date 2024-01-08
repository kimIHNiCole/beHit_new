package com.behit.creator.service;

import java.io.IOException;
import java.math.BigInteger;
import java.util.ArrayList;

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
	
	public void saveChannelData() {
		logger.info("SCHEDULING :: saveChannelData() 실행");
		// 채널 id 가져오기 ( 크리에이터당 대표 채널만 )
		ArrayList<String> channelIdList = creatorStatDAO.getChannelId(); 
		for(String channeId : channelIdList) {
			logger.info("channelId = "+channeId);
		}
		logger.info(secret_key);
		
		for(String channelId : channelIdList) {
			logger.info("channelIdList 하나씩 꺼내기 : "+channelId);
			
			// 각 채널마다 구독자수, 총 조회수, 총 컨텐츠 수 가져오기
			saveChannelDataOne(channelId);
		}
		
	}

	public void saveChannelDataOne(String channelId) {
		logger.info("SCHEDULING :: saveChannelDataOne() 실행");
		
		try {
            YouTube youtubeService = new YouTube.Builder(GoogleNetHttpTransport.newTrustedTransport()
            		, JacksonFactory.getDefaultInstance(), null)
                    	.setApplicationName("BeHit")
                    	.build();
            YouTube.Channels.List request = youtubeService.channels()
                .list("snippet,contentDetails,statistics");
            ChannelListResponse response = request.setId(channelId)
                .setKey(secret_key)
                .execute();
            Channel channel = response.getItems().get(0);

            BigInteger subscriber = channel.getStatistics().getSubscriberCount();
            BigInteger views = channel.getStatistics().getViewCount();
            BigInteger contents = channel.getStatistics().getVideoCount();
            
            // DB 저장하기
            channelDataDTO.setChannel_id(channelId);
            channelDataDTO.setSubscriber(subscriber);
            channelDataDTO.setViews(views);
            channelDataDTO.setContents(contents);
            logger.info("channel_id = "+channelDataDTO.getChannel_id());
            logger.info("subscriber = "+channelDataDTO.getSubscriber());
            logger.info("views"+channelDataDTO.getViews());
            logger.info("contents"+channelDataDTO.getContents());
            
            // 조회수추이값 계산하기 
            // insert와 동시에 => 쿼리를 통해 수행
            creatorStatDAO.saveChannelData(channelDataDTO);
        } catch (Exception e) {
            e.printStackTrace();
        }
		
	}


}
