package com.behit.profile.service;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashMap;

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
	
	// private String root = "/usr/local/tomcat/upload/employee/";	
	private String root = "C:/upload/employee/";
	
	public ModelAndView detail(String login_id) {
		
		ModelAndView mav = new ModelAndView();
		
		EmployeeDTO dto = profileDAO.prodetail(login_id);
		FileDTO photos = profileDAO.getPhoto(login_id);
		
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

	public void photoupdate(MultipartFile uploadFile, HashMap<String, Object> file) throws Exception {
		String ori_file_name = uploadFile.getOriginalFilename(); // 파일명 추출
		String ext = ori_file_name.substring(ori_file_name.lastIndexOf(".")); // 확장자 추출
		String new_file_name = System.currentTimeMillis()+ext; // 새 파일명 생성 + 확장자
		String file_kind_idx = (String) file.get("login_id");
		
		byte[] bytes = uploadFile.getBytes();
		Path path = Paths.get(root+new_file_name);
		Files.write(path, bytes);
		
		file.put("file_kind_idx", file_kind_idx);
		file.put("ori_file_name", ori_file_name);
		file.put("new_file_name", new_file_name);
		
		boolean result = profileDAO.selectphoto(file_kind_idx);
		logger.info("result:"+result);
		if (result) {
			profileDAO.photoupdate(file);
		} else {
			profileDAO.photoinsert(file);
		}
		
	}

	public int photodel(String login_id) {
		
		return profileDAO.photodel(login_id);
	}

}
