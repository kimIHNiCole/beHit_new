package com.behit.employee.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.behit.employee.dto.VacationDTO;

@Mapper
public interface VacationDAO {

	ArrayList<VacationDTO> vacalist();

}
