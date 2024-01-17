package com.behit.commons.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import com.behit.commons.dto.OrgChartDTO;

@Mapper
public interface CommonsDAO {

	ArrayList<Object> getOrgList();
	ArrayList<Object> getOrgListNM(String loginId, String mngLeader);

	ArrayList<Object> getDeptSum();
	String getMngLeader();

}
