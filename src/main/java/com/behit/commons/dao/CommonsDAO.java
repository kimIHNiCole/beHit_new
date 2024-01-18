package com.behit.commons.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import com.behit.commons.dto.OrgChartDTO;

@Mapper
public interface CommonsDAO {

	ArrayList<Object> getOrgList();
	ArrayList<Object> getOrgListNM(String loginId);

	ArrayList<Object> getDeptSum();
	ArrayList<Object> getOrgListCreP(String loginId, String cre_idx);
	ArrayList<Object> getOrgListApvP(String loginId, String apv_idx, String apvReq_empId);


}
