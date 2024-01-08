package com.behit.project.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ProjectSchDAO {

	List<Integer> delayProj();
	
	void updelayproj(int projIdx);
	
}
