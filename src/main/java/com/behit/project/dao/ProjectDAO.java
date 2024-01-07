package com.behit.project.dao;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ProjectDAO {

	int projwrite(String createId, String textsubject, String startproj, String endproj, String textContent);

	void projteamD(int lastIdx, String nodeD);

	void projteamC(int lastIdx, String nodeC);

	int projIdx();

	void writefile(int lastIdx, String oriFileName, String newFileName, String createId);

}
