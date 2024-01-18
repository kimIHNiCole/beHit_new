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
import com.behit.project.dto.ProjectFileDTO;
import com.behit.project.dto.ProjectRecordDTO;
import com.behit.project.dto.ProjectTeamDTO;
import com.behit.util.dto.UtilDTO;

@Service
public class ProjectService {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired ProjectDAO dao;
	
	// private String root = "/usr/local/tomcat/upload/project/";
	
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

	public void upload(int lastIdx, MultipartFile file, String createId, int file_kind) throws Exception { // 프로젝트 파
		String oriFileName = file.getOriginalFilename(); // 파일명 추출
		String ext = oriFileName.substring(oriFileName.lastIndexOf(".")); // 확장자 추출
		String newFileName = System.currentTimeMillis()+ext; // 새 파일명 생성 + 확장자
		
		logger.info("!!"+oriFileName+"/"+ext+"/"+newFileName);
		
		byte[] bytes = file.getBytes();
		Path path = Paths.get(root+newFileName);
		Files.write(path, bytes);
		
		dao.writefile(lastIdx, oriFileName, newFileName, createId, file_kind);
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
	
	// 상세보기 프로젝트 내용 가져오기
	public Map<String, String> projDetail(String proj_idx) {
		return dao.projDetail(proj_idx);
	}

	// 상세보기 담당자 참조자 가져오기
	public ArrayList<ProjectTeamDTO> projdamcham(String proj_idx) {
		return dao.projdamcham(proj_idx);
	}
	
	// 상세보기 상태업데이트
	public void projUpStatus(String projIdx, String projStatus) {
		dao.projUpStatus(projIdx,projStatus);	
	}

	public int projRwrite(String projIdx, String projRW_id, String content) {
		return dao.projRwrite(projIdx,projRW_id,content);
	}

	public int projRIdx() {
		return dao.projRIdx();
	}
	
	// 프로젝트 최신으로 업데이트(활동이력)
	public void projUp(String projIdx) {
		dao.projUp(projIdx);
	}

	public ArrayList<ProjectRecordDTO> projRList(String proj_idx) {
		return dao.projRList(proj_idx);
	}

	public int projRDel(String projR_idx) {
		return dao.projRDel(projR_idx);
	}
	
	// 파일 정보 가져오기
	public ArrayList<UtilDTO> projRfile(int file_kind, String projR_idx) {
		return dao.projRfile(file_kind,projR_idx);
	}

	public void fileDel(int file_idx) {
		dao.fileDel(file_idx);
	}

	public ArrayList<ProjectFileDTO> projAllFile(String proj_idx) {
		return dao.projAllFile(proj_idx);
	}

	public Map<String, String> projRData(String projR_idx) {
		return dao.projRData(projR_idx);
	}

	public int projRUpdate(String projR_idx, String content) {
		return dao.projRUpdate(projR_idx,content);
	}
	
	// 프로젝트 수정
	public int projupdate(String proj_idx, String textsubject, String startproj, String endproj, String textContent) {
		return dao.projupdate(proj_idx,textsubject,startproj,endproj,textContent);
	}
	
	// 수정할때 담당자 참조자 싹다 지워버리고 다시 추가하기
	public int projTAllDel(String proj_idx) {
		return dao.projTAllDel(proj_idx);
	}

	public int projDelDo(String projIdx) {
		return dao.projDelDo(projIdx);
	}

	public void projAlarm(String emp_id, int lastIdx, String alarmMsg) {
		dao.projAlarm(emp_id,lastIdx,alarmMsg);
	}

	public List<ProjectTeamDTO> projUpAlarm(String projIdx, String projRW_id) {
		return dao.projUpAlarm(projIdx, projRW_id);
	}

	public String whoEmpName(String projRW_id) {
		return dao.whoEmpName(projRW_id);
	}

	
	
}
