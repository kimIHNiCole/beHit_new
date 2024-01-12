package com.behit.profile.dao;

import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import com.behit.employee.dto.EmployeeDTO;
import com.behit.profile.dto.FileDTO;

@Mapper
public interface ProfileDAO {

	EmployeeDTO prodetail(String login_id);

	void passChange(String hash, String login_id);

	String getPw(String login_id);

	FileDTO getPhoto(String login_id);

	void photoupdate(HashMap<String, Object> file);

	boolean selectphoto(String file_kind_idx);

	void photoinsert(HashMap<String, Object> file);

	int photodel(String login_id);
	
}
