package com.behit.creator.service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.behit.creator.dao.CreatorDAO;
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
import com.google.api.services.youtube.model.VideoListResponse;

@Service
public class CreatorService {

	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Value("${GOOGLE-KEY}")
	String secret_key;
	
	@Autowired
	CreatorDAO creatorDAO;

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
	public void creatorAdd(CreatorRequestDTO creatorRequestDTO, HttpSession session) {
		logger.info("creatorAdd() 실행");
		
		EmployeeDTO loginInfo = (EmployeeDTO)session.getAttribute("loginInfo");
		logger.info("loginInfo = "+ loginInfo);
		
		int cre_idx = 0;
		
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
		for(ChannelDTO channelDTO : channelDTOs) {
			try {
				String channelUrl = channelDTO.getRep_video();
			    String videoId = channelUrl.split("v=")[1];
				String channelId = getChannelId(videoId);
				channelDTO.setChannel_id(channelId);	// dto에 채널 id set
			} catch (Exception e) {
				e.printStackTrace();
				logger.warn("영상링크가 없거나 잘못된 링크");
				// 잘못되면 등록 취소 시키기 로직 구현
			}
			channelDTO.setCre_idx(cre_idx);
			channelDTO.setEmp_id(loginInfo.getEmp_id());
			channelDTO.setEmp_id_up(loginInfo.getEmp_id());
			int channelRow = creatorDAO.channelInsert(channelDTO);
			logger.info("channelInsert result :: "+channelRow);
		}
		// Sns tbl insert
		ArrayList<SnsDTO> snsDTOs = creatorRequestDTO.getSnsDTOList();
		for(SnsDTO snsDTO : snsDTOs) {
			// url에서 platform명 뽑아내기
			String snsUrl = snsDTO.getSns_url();
			String domain = snsUrl.split("/")[2];
			String snsCate = domain.split("\\.")[1];
			logger.info("snsCate = "+snsCate);
			
			snsDTO.setSns_cate(snsCate);
			snsDTO.setCre_idx(cre_idx);
			snsDTO.setEmp_id(loginInfo.getEmp_id());
			snsDTO.setEmp_id_up(loginInfo.getEmp_id());
			int snsRow = creatorDAO.snsInsert(snsDTO);
			logger.info("snsInsert result :: "+snsRow);
		}
		
		// CreatorHistory tbl insert
		ArrayList<CreHistDTO> creHistDTOs = creatorRequestDTO.getCreHistDTOList();
		for(CreHistDTO creHistDTO : creHistDTOs) {
			creHistDTO.setCre_idx(cre_idx);
			creHistDTO.setEmp_id(loginInfo.getEmp_id());
			creHistDTO.setEmp_id_up(loginInfo.getEmp_id());
			int creHisRow = creatorDAO.creHisInsert(creHistDTO);
			logger.info("creHisInsert result :: "+creHisRow);
		}
	}
	
	// 채널ID 가져오기
	public String getChannelId(String videoId) throws Exception {
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

	    VideoListResponse response = request.execute();
	    String channelId = response.getItems().get(0).getSnippet().getChannelId();

	    logger.info("Channel ID: " + channelId);
	    return channelId;
	}

}
