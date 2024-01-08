package com.behit.util.dao;

import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.web.multipart.MultipartFile;

@Mapper
public interface UtilDAO {

	void upload(HashMap<String, Object> file);

	void upload(MultipartFile file);

	HashMap<String, Object> selectfile(int idx);
}
