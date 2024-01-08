package com.behit.util.dao;

import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UtilDAO {

	void upload(HashMap<String, Object> file);
}
