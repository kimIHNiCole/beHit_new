package com.behit.creator.controller;

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
	
//	@Scheduled(cron = "0 55 23 * * *")	// 매일 23시 55분에 실행
	@Scheduled(cron = "0 0/30 * * * *")	
	public void saveChannelData() {
		logger.info("SCHEDULING :: 채널 데이터 가져오기 실행");
		
		creatorStatService.saveChannelData();
		
	}
}
