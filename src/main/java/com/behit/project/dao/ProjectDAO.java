package com.behit.project.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.behit.project.dto.ProjectDTO;
import com.behit.project.dto.ProjectFileDTO;
import com.behit.project.dto.ProjectRecordDTO;
import com.behit.project.dto.ProjectTeamDTO;
import com.behit.util.dto.UtilDTO;

@Mapper
public interface ProjectDAO {

	int projwrite(String createId, String textsubject, String startproj, String endproj, String textContent);

	void projteamD(int lastIdx, String nodeD);

	void projteamC(int lastIdx, String nodeC);

	int projIdx();

	void writefile(int lastIdx, String oriFileName, String newFileName, String createId, int file_kind);

	ArrayList<ProjectDTO> projList(String emp_id);

	ArrayList<ProjectDTO> projnow(String emp_id);

	ArrayList<ProjectDTO> projwait(String emp_id);

	ArrayList<ProjectDTO> projworks(String emp_id);

	ArrayList<ProjectDTO> projdelay(String emp_id);

	ArrayList<ProjectDTO> projwhatList(String emp_id, String whatlist);

	Map<String, String> projDetail(String proj_idx);

	void projUpStatus(String projIdx, String projStatus);

	ArrayList<ProjectTeamDTO> projdamcham(String proj_idx);

	int projRwrite(String projIdx, String projRW_id, String content);

	int projRIdx();

	void projUp(String projIdx);

	ArrayList<ProjectRecordDTO> projRList(String proj_idx);

	int projRDel(String projR_idx);

	ArrayList<UtilDTO> projRfile(int file_kind, String projR_idx);

	void fileDel(int file_idx);

	ArrayList<ProjectFileDTO> projAllFile(String proj_idx);

	Map<String, String> projRData(String projR_idx);

	int projRUpdate(String projR_idx, String content);

}
