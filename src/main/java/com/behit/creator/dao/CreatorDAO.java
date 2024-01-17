package com.behit.creator.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.behit.creator.dto.ChannelDTO;
import com.behit.creator.dto.ChannelDataDTO;
import com.behit.creator.dto.CommCreDTO;
import com.behit.creator.dto.CreHistDTO;
import com.behit.creator.dto.CreatorDTO;
import com.behit.creator.dto.CreatorPermDTO;
import com.behit.creator.dto.SnsDTO;

@Mapper
public interface CreatorDAO {

	// 크리에이터 등록시 항목 데이터
	ArrayList<CommCreDTO> getGenders();
	ArrayList<CommCreDTO> getCountries();
	ArrayList<String> getChCategory();
	
	// 크리에이터 등록
	int creatorInsert(CreatorDTO creatorDTO);
	int channelInsert(ChannelDTO channelDTO);
	int snsInsert(SnsDTO snsDTO);
	int creHisInsert(CreHistDTO creHistDTO);

	// 크리에이터 리스트 
	HashMap<String, Object> getTotalInfo();
	ArrayList<HashMap<String, Object>> getAllList();
	ArrayList<HashMap<String, Object>> getMyList(String loginId);
	
	// 크리에이터 상세 정보
	HashMap<String, Object> getCreator(int cre_idx);
	ArrayList<HashMap<String, Object>> getChannel(int cre_idx);
	ArrayList<String> getChannelIdByCreIdx(int cre_idx);
	ArrayList<HashMap<String, Object>> getCreHistory(int cre_idx);
	ArrayList<SnsDTO> getSns(int cre_idx);
	
	// 채널 합계 정보
	HashMap<String, Object> getChannelSum(int cre_idx);
	
	// 크리에이터 상세정보 - 대표 채널 데이터
	ArrayList<ChannelDataDTO> getChartData(String repChannelId);
	
	// 열람자 추가
	void addCreator_perm(String empId, int cre_idx, String loginId);
	// 열람자 리스트
	List<CreatorDTO> creatorPermList(int cre_idx);
	// 열람자 삭제
	int delPerm(int cre_idx, String emp_id);
	// 열람권한 체크
	boolean permChk1(HashMap<String, Object> permChkParam);
	boolean permChk2(HashMap<String, Object> permChkParam);
	boolean permChk3(HashMap<String, Object> permChkParam);
	
	// 팀장 체크
	boolean leaderChk(String loginId);
	// 담당 매니저 체크
	ArrayList<CreatorPermDTO> getCrePermForMng(String loginId);
	// 로그인 id 별 크리에이터 권한 리스트 가져오기
	ArrayList<CreatorPermDTO> getCrePerm(String loginId);
	

}
