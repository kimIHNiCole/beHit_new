package com.behit.creator.service;

import java.io.IOException;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Random;
import java.util.Set;

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
import com.google.api.services.youtube.model.Video;
import com.google.api.services.youtube.model.VideoContentDetails;
import com.google.api.services.youtube.model.VideoListResponse;
import com.google.api.services.youtube.model.VideoSnippet;
import com.google.api.services.youtube.model.VideoStatistics;

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
	public ArrayList<HashMap<String, Object>> getCurrentVideo() throws GeneralSecurityException, IOException{
		// 소속 크리에이터중 5 개의 채널id를 가져와 api 돌리기
		logger.info("영상 리스트 가져오기 실행");
		ArrayList<HashMap<String, Object>> currentVideoList = new ArrayList<HashMap<String,Object>>();
		
		YouTube youtubeService = youtubeApiInit();
		YouTube.Videos.List request = youtubeService.videos().list("snippet,statistics,contentDetails");
		request.setKey(secret_key);
		request.setChart("mostPopular"); // 인기 있는 동영상 목록을 가져오기 위한 설정
		request.setRegionCode("KR"); // 국가 코드를 설정해주세요 (예시로 대한민국을 나타내는 "KR" 사용)
		request.setMaxResults(5L); // 최대 결과 개수 (예시로 10개 지정)

		VideoListResponse response = request.execute();

		List<Video> videos = response.getItems();
		for (Video video : videos) {
		    VideoSnippet snippet = video.getSnippet();
		    VideoStatistics statistics = video.getStatistics();
		    VideoContentDetails contentDetails = video.getContentDetails();

		    String videoId = video.getId();
		    String videoTitle = snippet.getTitle();
		    String thumbnailUrl = snippet.getThumbnails().getDefault().getUrl();
		    String channelName = snippet.getChannelTitle();
		    String uploadDate = snippet.getPublishedAt().toString(); // 전체 날짜 및 시간을 문자열로 가져옴
		    BigInteger views = statistics.getViewCount();
		    BigInteger likes = statistics.getLikeCount();
		    
		    Date date = Date.from(Instant.parse(uploadDate));
		    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		    String formattedDate = formatter.format(date);
		    
		    System.out.println("Video ID: " + videoId);
		    System.out.println("Video Title: " + videoTitle);
		    System.out.println("Thumbnail URL: " + thumbnailUrl);
		    System.out.println("Channel Name: " + channelName);
		    System.out.println("Upload Date: " + formattedDate);
		    System.out.println("Views: " + views);
		    System.out.println("likes: " + likes);
		    
		    // 필요한 정보들을 출력하거나 저장할 수 있습니다.
		    HashMap<String, Object> videoInfo = new HashMap<>();
		    videoInfo.put("videoId", videoId);
		    videoInfo.put("videoTitle", videoTitle);
		    videoInfo.put("thumbnailUrl", thumbnailUrl);
		    videoInfo.put("channelName", channelName);
		    videoInfo.put("uploadDate", formattedDate);
		    videoInfo.put("views", views);
		    videoInfo.put("likes", likes);
		    currentVideoList.add(videoInfo);
		}
		
		return currentVideoList;
		
		
//		ArrayList<HashMap<String, Object>> channelIdListForDash = creatorStatDAO.getChannelIdForDash();
//		
//		// 가져온 id 리스트 갯수 숫자 범위 내에서 램덤 숫자 5개 뽑기
//		int maxNum = channelIdListForDash.size();
//		int numberOfRandoms = 1; //할당량소모를 위해 ... 임시 1개로
//		logger.info("channelIdListForDash.size() :::: "+maxNum);
//		Random random = new Random();
//		Set<Integer> uniqueRandoms = new HashSet<>();
//		while (uniqueRandoms.size() < numberOfRandoms) {
//            int randomValue = random.nextInt(maxNum);
//            uniqueRandoms.add(randomValue);
//        }
//		
//		ArrayList<HashMap<String, Object>> currentVideoList = new ArrayList<HashMap<String,Object>>();
//		
//		for(int randomIndex : uniqueRandoms) {
//			
//			String channelId = (String) channelIdListForDash.get(randomIndex).get("channel_id");
//			String channelName = (String) channelIdListForDash.get(randomIndex).get("channel_name");
//			logger.info("channel Id = "+ channelId);
//			try {
//				YouTube youtubeService = youtubeApiInit();
//				YouTube.Search.List request = youtubeService.search()
//	                    .list("snippet")
//	                    .setKey(secret_key)
//	                    .setChannelId(channelId)	// 채널아이디
////	                    .setQ(SEARCH_KEYWORD)	// 키워드 검색
//	                    .setType("video")	// 종류
//	                    .setRegionCode(REGION_CODE) //국가 코드
////	                    .setOrder("viewCount") // 조회수에 따라 정렬
//	                    .setOrder("date") // 날짜 기준 정렬 최신영상
//	                    .setVideoDuration("long")	// 60초 이상 영상
//	                    .setMaxResults((long) 1); // 가져올 결과의 최대 개수 설정
//				
//				SearchListResponse response  = request.execute();
//				
//				List<SearchResult> searchResults = response.getItems();
//	
//				for (SearchResult result : searchResults) {
//					String videoId = result.getId().getVideoId();
//	                String videoTitle = result.getSnippet().getTitle();
//	                
//	                // video 정보 가져오기 (영상 조회수 , 업로드 시간) 
//	                YouTube.Videos.List videosListRequest = youtubeService.videos()
//	                        .list("snippet,statistics")
//	                        .setKey(secret_key)
//	                        .setId(videoId);
//	                VideoListResponse videoResponse = videosListRequest.execute();
//	                Video video = videoResponse.getItems().get(0);
//	                
//	                // 영상의 업로드 시간과 조회수 가져오기
//	                String uploadTime = video.getSnippet().getPublishedAt().toString();
//	                BigInteger views = video.getStatistics().getViewCount();
//	                
//	                
//	                ThumbnailDetails thumbnails = result.getSnippet().getThumbnails();
//	                Thumbnail defaultThumbnail = thumbnails.getDefault();
//	                String thumbnailUrl = defaultThumbnail.getUrl();
//	                
//	                HashMap<String, Object> videoInfo = new HashMap<>();
//	                videoInfo.put("videoId", videoId);
//	                videoInfo.put("videoTitle", videoTitle);
//	                videoInfo.put("thumbnailUrl", thumbnailUrl);
//	                videoInfo.put("channelName", channelName);
//	                videoInfo.put("uploadTime", uploadTime);
//	                videoInfo.put("views", views);
//	                logger.info("videoId==="+videoId);
//	                logger.info("videoTitle==="+videoTitle);
//	                logger.info("thumbnailUrl==="+thumbnailUrl);
//	                logger.info("channelName==="+channelName);
//	                logger.info("uploadTime===" + uploadTime);
//	                logger.info("viewCount===" + views);
//	                
//	                
//	                
//	                currentVideoList.add(videoInfo);
//				}
//			} catch (Exception e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//		
//		}
//		
//		return currentVideoList;
	}


}
