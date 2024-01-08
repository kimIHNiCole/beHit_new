package com.behit.project.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.behit.project.dto.ProjectDTO;

@Mapper
public interface ProjectDAO {

	int projwrite(String createId, String textsubject, String startproj, String endproj, String textContent);

	void projteamD(int lastIdx, String nodeD);

	void projteamC(int lastIdx, String nodeC);

	int projIdx();

	void writefile(int lastIdx, String oriFileName, String newFileName, String createId);

	ArrayList<ProjectDTO> projList(String emp_id);

	ArrayList<ProjectDTO> projnow(String emp_id);

	ArrayList<ProjectDTO> projwait(String emp_id);

	ArrayList<ProjectDTO> projworks(String emp_id);

	ArrayList<ProjectDTO> projdelay(String emp_id);

	ArrayList<ProjectDTO> projwhatList(String emp_id, String whatlist);

	Map<String, String> projDetail(String proj_idx);

	void projUpStatus(String projIdx, String projStatus);

}
