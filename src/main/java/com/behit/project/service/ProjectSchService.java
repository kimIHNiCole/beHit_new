package com.behit.project.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.behit.project.dao.ProjectSchDAO;

@Service
public class ProjectSchService {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired ProjectSchDAO dao;

	public void delayProj() {
		List<Integer> delayProjIdx = dao.delayProj();
		
		for (int projIdx : delayProjIdx) {
            dao.updelayproj(projIdx);
            logger.info("지연된 프로젝트 업데이트: ", projIdx);
        }
	}
	
	
	
}
