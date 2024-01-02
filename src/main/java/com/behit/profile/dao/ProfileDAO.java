package com.behit.profile.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.behit.employee.dto.EmployeeDTO;
import com.behit.profile.dto.FileDTO;

@Mapper
public interface ProfileDAO {

	EmployeeDTO prodetail(String login_id);

	void passChange(String hash, String login_id);

	String getPw(String login_id);

	void writePhoto(String file_kind_idx, String oriFileName, String newFileName, String login_id);

	ArrayList<FileDTO> getPhoto(String login_id);
	
}
