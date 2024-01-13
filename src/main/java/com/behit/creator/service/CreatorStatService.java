package com.behit.creator.service;

import java.io.IOException;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

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
import com.google.api.services.youtube.model.SearchListResponse;
import com.google.api.services.youtube.model.SearchResult;
import com.google.api.services.youtube.model.Thumbnail;
import com.google.api.services.youtube.model.ThumbnailDetails;

@Service
public class CreatorStatService {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired CreatorStatDAO creatorStatDAO;
	
	@Value("${GOOGLE-KEY}") String secret_key;
	
	
	
	
	ChannelDataDTO channelDataDTO = new ChannelDataDTO();
	Channel channel=null;
	private static final String APPLICATION_NAME = "BeHit";
	private static final String SEARCH_KEYWORD = "!";
	private static final String REGION_CODE = "KR";
//	private static final String HIT_VIEDEOS = "UCsVf5SnHAmJcZ0G7kpMcYzg";
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
		ArrayList<HashMap<String, Object>> channelIdAndRepList = creatorStatDAO.getChannelId();
		logger.info("channelIdList size = "+channelIdAndRepList.size());
		for(HashMap<String, Object> channelIdAndRep : channelIdAndRepList) {
			logger.info("channelId = "+channelIdAndRep.get("channel_id"));
			logger.info("rep_channel = "+channelIdAndRep.get("rep_channel"));
		}
		logger.info(secret_key);
		
		for(HashMap<String, Object> channelIdAndRep : channelIdAndRepList) {
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
	
	// youtube api 서비스 초기화
	public YouTube youtubeApiInit() throws GeneralSecurityException, IOException {
		logger.info(" :: YOUTUBE API SERVICE INITIALIZATION :: ");
		YouTube youtubeService = new YouTube.Builder(GoogleNetHttpTransport.newTrustedTransport()
				, JacksonFactory.getDefaultInstance(), null)
				.setApplicationName(APPLICATION_NAME)
				.build();
		return youtubeService;
	}
	
	public Channel useYoutubeApi(String channelId) {
		try {
			YouTube youtubeService = youtubeApiInit();
	        YouTube.Channels.List request;
				request = youtubeService.channels()
				    .list("snippet,contentDetails,statistics");
	        ChannelListResponse response = request.setId(channelId)
	            .setKey(secret_key)
	            .execute();
	        channel = response.getItems().get(0);
	        
		} catch (Exception e) {
			e.printStackTrace();
		}
		return channel;
	}
	
	
	// 크리에이터 대쉬보드 
	public ArrayList<HashMap<String, Object>> getCreatorRank(){
		logger.info("크리에이터 랭크 가져오기 실행");
		ArrayList<HashMap<String, Object>> channelIdAndRepList = creatorStatDAO.getChannelId();
		ArrayList<HashMap<String, Object>> rankList = new ArrayList<HashMap<String,Object>>();
		logger.info("channelIdAndRepList.size() :::: "+channelIdAndRepList.size());
		for(HashMap<String, Object> channelIdAndRep : channelIdAndRepList) {
			String channelId = (String) channelIdAndRep.get("channel_id");
			logger.info("channel Id = "+ channelId);
			try {
				YouTube youtubeService = youtubeApiInit();
				YouTube.Search.List request = youtubeService.search()
	                    .list("snippet")
	                    .setKey(secret_key)
	                    .setChannelId(channelId)	// 채널아이디
//	                    .setQ(SEARCH_KEYWORD)	// 키워드 검색
	                    .setType("video")	// 종류
	                    .setRegionCode(REGION_CODE) //국가 코드
//	                    .setOrder("viewCount") // 조회수에 따라 정렬
	                    .setOrder("date") // 날짜 기준 정렬 최신영상
	                    .setVideoDuration("long")	// 60초 이상 영상
	                    .setMaxResults((long) 1); // 가져올 결과의 최대 개수 설정
				
				SearchListResponse response  = request.execute();
				
				List<SearchResult> searchResults = response.getItems();
	
				for (SearchResult result : searchResults) {
					String videoId = result.getId().getVideoId();
	                String videoTitle = result.getSnippet().getTitle();
	                
	                ThumbnailDetails thumbnails = result.getSnippet().getThumbnails();
	                Thumbnail defaultThumbnail = thumbnails.getDefault();
	                String thumbnailUrl = defaultThumbnail.getUrl();
	                
	                HashMap<String, Object> videoInfo = new HashMap<>();
	                videoInfo.put("videoId", videoId);
	                videoInfo.put("videoTitle", videoTitle);
	                videoInfo.put("thumbnailUrl", thumbnailUrl);
	                logger.info("videoId==="+videoId);
	                logger.info("videoTitle==="+videoTitle);
	                logger.info("thumbnailUrl==="+thumbnailUrl);
	                rankList.add(videoInfo);
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		}
		
		return rankList;
	}


}
