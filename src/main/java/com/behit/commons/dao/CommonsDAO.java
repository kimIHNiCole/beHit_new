package com.behit.commons.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.behit.employee.dto.EmployeeDTO;

@Mapper
public interface CommonsDAO {

	ArrayList<EmployeeDTO> getOrgList();

}
