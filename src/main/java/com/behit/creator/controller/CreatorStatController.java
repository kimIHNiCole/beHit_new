package com.behit.creator.controller;

import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.behit.creator.service.CreatorStatService;

@EnableScheduling
@Component
public class CreatorStatController {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired CreatorStatService creatorStatService;
	
	@Scheduled(cron = "0 10 0 * * *")	// 매일 23시30분 실행
//	@Scheduled(cron = "0/10 * * * * *")	
	public void saveChannelData() {
		logger.info("SCHEDULING :: 채널 데이터 가져오기 실행");
		creatorStatService.saveChannelData();
	}
	
	public void saveChannelDataOne(HashMap<String, Object> channelId) {
		logger.info("SCHEDULING :: ["+channelId+"] 채널 데이터 가져오기 실행");
		creatorStatService.saveChannelDataOne(channelId);
	}
}
