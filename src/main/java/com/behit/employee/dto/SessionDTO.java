package com.behit.employee.dto;

import org.apache.ibatis.type.Alias;

@Alias("session")
public class SessionDTO {
	
	// 추후 들어가야할 정보 ? 
	// 
	
	
	private String emp_id;
	private String emp_name;
	private String position_idx;
	
	
	public String getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(String emp_id) {
		this.emp_id = emp_id;
	}
	public String getEmp_name() {
		return emp_name;
	}
	public void setEmp_name(String emp_name) {
		this.emp_name = emp_name;
	}
	public String getPosition_idx() {
		return position_idx;
	}
	public void setPosition_idx(String position_idx) {
		this.position_idx = position_idx;
	}
	
	
}
