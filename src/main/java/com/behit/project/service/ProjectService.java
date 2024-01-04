package com.behit.project.service;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.behit.project.dao.ProjectDAO;

@Service
public class ProjectService {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired ProjectDAO dao;
	
	private String root = "C:/upload/project/";

	public int projwrite(String createId, String textsubject, String startproj, String endproj, String textContent) {
		return dao.projwrite(createId,textsubject,startproj,endproj,textContent);
	}

	public void projteamD(int lastIdx, String nodeD) {
		dao.projteamD(lastIdx,nodeD);		
	}

	public void projteamC(int lastIdx, String nodeC) {
		dao.projteamC(lastIdx,nodeC);	
	}

	public int projIdx() {
		return dao.projIdx();
	}

	public void upload(int lastIdx, MultipartFile file, String createId) throws Exception {
		String oriFileName = file.getOriginalFilename(); // 파일명 추출
		String ext = oriFileName.substring(oriFileName.lastIndexOf(".")); // 확장자 추출
		String newFileName = System.currentTimeMillis()+ext; // 새 파일명 생성 + 확장자
		
		logger.info("!!"+oriFileName+"/"+ext+"/"+newFileName);
		
		byte[] bytes = file.getBytes();
		Path path = Paths.get(root+newFileName);
		Files.write(path, bytes);
		
		dao.writefile(lastIdx, oriFileName, newFileName, createId);
	}
	
	
	
}
