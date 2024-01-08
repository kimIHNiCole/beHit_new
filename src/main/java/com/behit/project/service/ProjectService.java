package com.behit.project.service;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.behit.project.dao.ProjectDAO;
import com.behit.project.dto.ProjectDTO;

@Service
public class ProjectService {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired ProjectDAO dao;
	
	private String root = "C:/upload/project/";

	public int projwrite(String createId, String textsubject, String startproj, String endproj, String textContent) { // 프로젝트 생성
		return dao.projwrite(createId,textsubject,startproj,endproj,textContent);
	}

	public void projteamD(int lastIdx, String nodeD) { // 담당자 추가
		dao.projteamD(lastIdx,nodeD);		
	}

	public void projteamC(int lastIdx, String nodeC) { // 참조자 추가
		dao.projteamC(lastIdx,nodeC);	
	}

	public int projIdx() { // 방금생성된 proj_idx 가져오기
		return dao.projIdx();
	}

	public void upload(int lastIdx, MultipartFile file, String createId) throws Exception { // 프로젝트 파
		String oriFileName = file.getOriginalFilename(); // 파일명 추출
		String ext = oriFileName.substring(oriFileName.lastIndexOf(".")); // 확장자 추출
		String newFileName = System.currentTimeMillis()+ext; // 새 파일명 생성 + 확장자
		
		logger.info("!!"+oriFileName+"/"+ext+"/"+newFileName);
		
		byte[] bytes = file.getBytes();
		Path path = Paths.get(root+newFileName);
		Files.write(path, bytes);
		
		dao.writefile(lastIdx, oriFileName, newFileName, createId);
	}

	public ArrayList<ProjectDTO> projList(String emp_id) {
		return dao.projList(emp_id);
	}
	
	public ArrayList<ProjectDTO> projwhatList(String emp_id, String whatlist) {
		return dao.projwhatList(emp_id,whatlist);
	}

	public ArrayList<ProjectDTO> projnow(String emp_id) {
		return dao.projnow(emp_id);
	}

	public ArrayList<ProjectDTO> projwait(String emp_id) {
		return dao.projwait(emp_id);
	}

	public ArrayList<ProjectDTO> projworks(String emp_id) {
		return dao.projworks(emp_id);
	}

	public ArrayList<ProjectDTO> projdelay(String emp_id) {
		return dao.projdelay(emp_id);
	}

	public Map<String, String> projDetail(String proj_idx) {
		return dao.projDetail(proj_idx);
	}

	public void projUpStatus(String projIdx, String projStatus) {
		dao.projUpStatus(projIdx,projStatus);
		
	}

	
	
	
}
