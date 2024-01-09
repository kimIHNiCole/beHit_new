package com.behit.util.service;

import java.io.IOException;
import java.net.URLEncoder;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.behit.util.dao.UtilDAO;

@Service
public class UtilService {
	
	@Autowired
	UtilDAO utilDAO;
	
	Logger logger = LoggerFactory.getLogger(getClass());

	private String root = "C:/upload/";	

	// upload
	public void upload(MultipartFile uploadFile, @RequestParam HashMap<String, Object> file) throws Exception {
		String ori_file_name = uploadFile.getOriginalFilename(); // 파일명 추출
		String ext = ori_file_name.substring(ori_file_name.lastIndexOf(".")); // 확장자 추출
		String new_file_name = System.currentTimeMillis()+ext; // 새 파일명 생성 + 확장자
		
		// 컨트롤러에서 HashMap타입 file에 각자의 카테고리번호를 file_kind로 넣고 ex) file.put("file_kind", 5);
		// session에 로그인된 아이디 login_id로 넣고 *DB 기록용 ex) file.put("login_id", login_id);
		// 각자 테이블의 고유 idx값 각자의 db 컬럼이름으로 넣어주세요 ex) file.put("cre_idx", cre_idx);
		
		logger.info("!!"+ori_file_name+"/"+ext+"/"+new_file_name);
		
		String sub = "";
		String file_kind_idx = "";
		int file_kind = (int) file.get("file_kind");
		
		switch (file_kind) {
		case 1:
			sub = "chat/";
			file_kind_idx = (String) file.get("idx");
			break;
		case 2:
			sub = "calender/";
			file_kind_idx = (String) file.get("idx");
			break;
		case 3:
			sub = "approval/";
			file_kind_idx = (String) file.get("apv_idx");
			break;
		case 4:
			sub = "project/";
			file_kind_idx = (String) file.get("proj_idx");
			break;
		case 5:
			sub = "employee/";
			file_kind_idx = (String) file.get("emp_id");
			break;
		case 6:
			sub = "creator/";
			file_kind_idx = (String) file.get("cre_idx");
			break;
		}
		
		byte[] bytes = uploadFile.getBytes();
		Path path = Paths.get(root+sub+new_file_name);
		Files.write(path, bytes);
		
		file.put("file_kind_idx", file_kind_idx);
		file.put("ori_file_name", ori_file_name);
		file.put("new_file_name", new_file_name);
				
		utilDAO.upload(file);
		
	}

	// file_idx값을 컨트롤러에서 넘겨주세요
	public ResponseEntity<Resource> download(int idx) throws IOException {
		
		HashMap<String, Object> file = utilDAO.selectfile(idx); // file의 idx필요
		
		int file_kind = (int) file.get("file_kind");
		String sub = "";
		switch (file_kind) {
		case 1:
			sub = "chat/";
			break;
		case 2:
			sub = "calender/";
			break;
		case 3:
			sub = "approval/";
			break;
		case 4:
			sub = "project/";
			break;
		case 5:
			sub = "employee/";
			break;
		case 6:
			sub = "creator/";
			break;
		}
		
		String path = root+sub+file.get("new_file_name");
		logger.info(path);
		
		Resource resource = new FileSystemResource(path);
		HttpHeaders header = new HttpHeaders();
		String type = Files.probeContentType(Paths.get(path));
		header.add("Content-type", "application/octet-stream");
		String oriFileName = URLEncoder.encode((String) file.get("ori_file_name"), "UTF-8"); // file은 ori_file_name
		header.add("content-Disposition", "attachment;fileName=\""+oriFileName+"\"" );
		
		return new ResponseEntity<Resource>(resource, header, HttpStatus.OK); // 바디, 헤더, 상태(200, 500)
	}
}
