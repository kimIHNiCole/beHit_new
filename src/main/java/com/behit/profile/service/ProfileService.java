package com.behit.profile.service;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.behit.employee.dto.EmployeeDTO;
import com.behit.profile.dao.ProfileDAO;
import com.behit.profile.dto.FileDTO;

@Service
public class ProfileService {

	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired ProfileDAO profileDAO;
	
	private String root = "C:/upload/";
	
	public ModelAndView detail(String login_id) {
		
		ModelAndView mav = new ModelAndView();
		
		EmployeeDTO dto = profileDAO.prodetail(login_id);
		ArrayList<FileDTO> photos = profileDAO.getPhoto(login_id);
		
		mav.addObject("profiledetail", dto);
		mav.addObject("photos", photos);
		
		mav.setViewName("/profile/profile_detail");
		
		return mav;
	}

	public void passChange(String hash, String login_id) {
		profileDAO.passChange(hash, login_id);
	}

	public String getPw(String login_id) {
		return profileDAO.getPw(login_id);
	}

	public void upload(MultipartFile uploadFile, String login_id) throws Exception {
		String oriFileName = uploadFile.getOriginalFilename(); // 파일명 추출
		String ext = oriFileName.substring(oriFileName.lastIndexOf(".")); // 확장자 추출
		String newFileName = System.currentTimeMillis()+ext; // 새 파일명 생성 + 확장자
		
		logger.info("!!"+oriFileName+"/"+ext+"/"+newFileName);
		
		byte[] bytes = uploadFile.getBytes();
		Path path = Paths.get(root+newFileName);
		Files.write(path, bytes);
		
		String file_kind_idx = "employee/"+oriFileName;
		
		profileDAO.writePhoto(file_kind_idx, oriFileName, newFileName, login_id);
		
	}

}
