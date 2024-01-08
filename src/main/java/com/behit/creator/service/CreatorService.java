package com.behit.creator.service;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.behit.creator.dao.CreatorDAO;
import com.behit.creator.dao.CreatorStatDAO;
import com.behit.creator.dto.ChannelDTO;
import com.behit.creator.dto.CommCreDTO;
import com.behit.creator.dto.CreHistDTO;
import com.behit.creator.dto.CreatorDTO;
import com.behit.creator.dto.CreatorRequestDTO;
import com.behit.creator.dto.SnsDTO;
import com.behit.employee.dto.EmployeeDTO;
import com.google.api.client.googleapis.javanet.GoogleNetHttpTransport;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.api.services.youtube.YouTube;
import com.google.api.services.youtube.model.Channel;
import com.google.api.services.youtube.model.ChannelListResponse;
import com.google.api.services.youtube.model.VideoListResponse;

@Service
public class CreatorService {

	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Value("${GOOGLE-KEY}") String secret_key;
	
	@Autowired CreatorDAO creatorDAO;
	@Autowired CreatorStatService creatorStatService;
	
	public ArrayList<CommCreDTO> getGenders() {
		logger.info("getGenders() 실행");
		return creatorDAO.getGenders();
	}

	public ArrayList<CommCreDTO> getCountries() {
		logger.info("getCountries() 실행");
		return creatorDAO.getCountries();
	}

	public ArrayList<String> getChCategory() {
		logger.info("getChCategory() 실행");
		return creatorDAO.getChCategory();
	}

	@Transactional
	public String creatorAdd(CreatorRequestDTO creatorRequestDTO, HttpSession session) {
		logger.info("creatorAdd() 실행");
		
		EmployeeDTO loginInfo = (EmployeeDTO)session.getAttribute("loginInfo");
		logger.info("loginInfo = "+ loginInfo);
		
		int cre_idx = 0;
		String repChannelId = "";
		
		// Creator tbl insert
		CreatorDTO creatorDTO = creatorRequestDTO.getCreatorDTO();
		creatorDTO.setEmp_id_in(loginInfo.getEmp_id());
		creatorDTO.setEmp_id_up(loginInfo.getEmp_id());
		int creatorRow = creatorDAO.creatorInsert(creatorDTO);
		logger.info("creatorInsert result :: "+creatorRow);
		
		cre_idx = creatorDTO.getCre_idx();
		logger.info("cre_idx : "+cre_idx);
		
		// Channel tbl insert
		ArrayList<ChannelDTO> channelDTOs = creatorRequestDTO.getChannelDTOList();
		int channelRow = 0;
		for(ChannelDTO channelDTO : channelDTOs) {
			try {
				String videoUrl = channelDTO.getRep_video();
			    
				HashMap<String, String> channelInfo = getChannelInfo(videoUrl);
				String channelId = channelInfo.get("channelId");
				if(channelDTO.getRep_channel() == 1) {
					repChannelId = channelInfo.get("channelId");
				}
				channelDTO.setChannel_id(channelId);	// dto에 채널 id set
			} catch (Exception e) {
				e.printStackTrace();
				logger.warn("영상링크가 없거나 잘못된 링크");
				// 잘못되면 등록 취소 시키기 로직 구현
			}
			// client에서 자동을 가져오지 않는 정보 직접 set
			channelDTO.setCre_idx(cre_idx);
			channelDTO.setEmp_id(loginInfo.getEmp_id());
			channelDTO.setEmp_id_up(loginInfo.getEmp_id());
			channelRow += creatorDAO.channelInsert(channelDTO);
			logger.info("channelInsert result :: "+channelRow);
		}
		// Sns tbl insert
		ArrayList<SnsDTO> snsDTOs = creatorRequestDTO.getSnsDTOList();
		int snsRow = 0;
		for(SnsDTO snsDTO : snsDTOs) {
			// url에서 platform명 뽑아내기
			String url = snsDTO.getSns_url()
							.replace("http://", "")
							.replace("https://", "")
							.replace("www.", "");
			String[] parts = url.split("\\.");
			String snsCate = parts[0];
			
			logger.info("snsCate = "+snsCate);
			
			snsDTO.setSns_cate(snsCate);
			snsDTO.setCre_idx(cre_idx);
			snsDTO.setEmp_id(loginInfo.getEmp_id());
			snsDTO.setEmp_id_up(loginInfo.getEmp_id());
			snsRow += creatorDAO.snsInsert(snsDTO);
			logger.info("snsInsert result :: "+snsRow);
		}
		
		// CreatorHistory tbl insert
		ArrayList<CreHistDTO> creHistDTOs = creatorRequestDTO.getCreHistDTOList();
		int creHisRow = 0;
		for(CreHistDTO creHistDTO : creHistDTOs) {
			creHistDTO.setCre_idx(cre_idx);
			creHistDTO.setEmp_id(loginInfo.getEmp_id());
			creHistDTO.setEmp_id_up(loginInfo.getEmp_id());
			creHisRow += creatorDAO.creHisInsert(creHistDTO);
			logger.info("creHisInsert result :: "+creHisRow);
		}
		// 확인
		if(creatorRow > 0 && channelRow > 0 && snsRow > 0 && creHisRow > 0) {
			logger.info("creatorRow="+creatorRow);
			logger.info("channelRow="+channelRow);
			logger.info("snsRow="+snsRow);
			logger.info("creHisRow="+creHisRow);
			return repChannelId;
		}
		return "";
	}
	
	
	// 채널정보 가져오기
	public HashMap<String,String> getChannelInfo(String videoURL) throws Exception {
		logger.info("채널 정보 가져오기 실행");
		logger.info("videoURL = "+videoURL);

		String videoId = videoURL.split("v=")[1];
		
	    YouTube youtube = new YouTube.Builder(
	            GoogleNetHttpTransport.newTrustedTransport(),
	            JacksonFactory.getDefaultInstance(),
	            null)
	            .setApplicationName("BeHit")
	            .build();
	    YouTube.Videos.List request = youtube.videos()
	            .list("snippet")
	            .setId(videoId)
	            .setKey(secret_key);
	    logger.info("youtube api getInfo request result : ",request);
	    VideoListResponse response = request.execute();
	    logger.info("youtube api getInfo response result: ",request);
	    String channelId = response.getItems().get(0).getSnippet().getChannelId();
	    
	    YouTube.Channels.List channelRequest = youtube.channels()
	            .list("snippet")
	            .setId(channelId)
	            .setKey(secret_key);

	    ChannelListResponse channelResponse = channelRequest.execute();
	    String channelDate = channelResponse.getItems().get(0).getSnippet().getPublishedAt().toStringRfc3339();
	    String channelName = channelResponse.getItems().get(0).getSnippet().getTitle();

	    HashMap<String, String> channelInfo = new HashMap<String, String>();
	    channelInfo.put("channelId" , channelId);
	    channelInfo.put("channelUrl" , "https://www.youtube.com/channel/" + channelId);
	    channelInfo.put("channelDate", channelDate);
	    channelInfo.put("channelName", channelName);
	    
	    logger.info("Channel ID: " + channelId);

	    return channelInfo;
	}
	
	
	// 크리에이터 전체 리스트
	public HashMap<String, Object> getTotalInfo() {
		logger.info("전체 정보 가져오기 실행");
		HashMap<String, Object> totalInfo = creatorDAO.getTotalInfo(); 
		if(totalInfo != null) {
			logger.info("전체 정보 가져오기 성공");
			logger.info("creatorAllList = "+totalInfo);
		}
		return totalInfo;
	}

	public ArrayList<HashMap<String, Object>> getAllList() {
		logger.info("전체 크리에이터 리스트 가져오기 실행");
		ArrayList<HashMap<String, Object>> allList = new ArrayList<HashMap<String,Object>>();
		try {
			allList = creatorDAO.getAllList();
			logger.info("전체 크리에이터 리스트 가져오기 성공");
			logger.info("allList = "+allList);
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return allList;
	}

	public ArrayList<HashMap<String, Object>> getMyList(String loginId) {
		logger.info("나의 크리에이터 리스트 가져오기 실행");
		ArrayList<HashMap<String, Object>> myList = creatorDAO.getMyList(loginId);
		try {
			myList = creatorDAO.getMyList(loginId);
			logger.info("전체 크리에이터 리스트 가져오기 성공");
			logger.info("allList = "+myList);
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return myList;
	}

	public CreatorDTO getCreator(int cre_idx) {
		logger.info("creator 가져오기 실행");
		
		return creatorDAO.getCreator(cre_idx);
	}

	public ArrayList<HashMap<String, Object>> getChannel(int cre_idx) {
		logger.info("channel 기본정보 가져오기 실행");
		ArrayList<HashMap<String, Object>> channelInfoList = creatorDAO.getChannel(cre_idx);
		for (HashMap<String, Object> data : channelInfoList) {
	        for (Map.Entry<String, Object> entry : data.entrySet()) {
	            String key = entry.getKey();
	            Object value = entry.getValue();
	            System.out.println(key + ": " + value);
	        }
	        System.out.println(); // 각 HashMap 사이에 개행 추가
	    }
		
		logger.info("channel 통계 정보 가져오기 실행");
		ArrayList<String> channelIdList = creatorDAO.getChannelIdByCreIdx(cre_idx); 
		for(String channelId : channelIdList) {
			logger.info("channelIdList 하나씩 꺼내기 : "+channelId);
			Channel channel = creatorStatService.useYoutubeApi(channelId);
			
			HashMap<String, Object> channelInfo = new HashMap<String, Object>();
			
			BigInteger subscriber = channel.getStatistics().getSubscriberCount();
	        BigInteger views = channel.getStatistics().getViewCount();
	        BigInteger contents = channel.getStatistics().getVideoCount();
	        
	        channelInfo.put("subscriber", subscriber);
	        channelInfo.put("views", views);
	        channelInfo.put("contents", contents);
	        
	        channelInfoList.add(channelInfo);
		}
		for(HashMap<String, Object> channel : channelInfoList) {
			System.out.println("크리에이터 번호"+channel.get("cre_idx"));
			System.out.println("크리에이터 이름"+channel.get("cre_name"));
			System.out.println("크리에이터 활동명"+channel.get("cre_nick_name"));
			System.out.println("구독자수"+channel.get("subscriber"));
			System.out.println("조회수"+channel.get("views"));
			System.out.println("컨텐츠수"+channel.get("contents"));
		}
		return channelInfoList;
	}

	
	


}
