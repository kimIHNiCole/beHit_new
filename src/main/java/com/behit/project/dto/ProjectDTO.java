package com.behit.project.dto;

import java.sql.Date;

import org.apache.ibatis.type.Alias;

@Alias("proj")
public class ProjectDTO {
	
	private int proj_idx;
	private String emp_id;
	private Date proj_date;
	private String proj_subject;
	private Date proj_start;
	private Date proj_end;
	private String proj_content;
	private String proj_status;
	private String proj_delay;
	private Date proj_update;
	
	public int getProj_idx() {
		return proj_idx;
	}
	public void setProj_idx(int proj_idx) {
		this.proj_idx = proj_idx;
	}
	public String getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(String emp_id) {
		this.emp_id = emp_id;
	}
	public Date getProj_date() {
		return proj_date;
	}
	public void setProj_date(Date proj_date) {
		this.proj_date = proj_date;
	}
	public String getProj_subject() {
		return proj_subject;
	}
	public void setProj_subject(String proj_subject) {
		this.proj_subject = proj_subject;
	}
	public Date getProj_start() {
		return proj_start;
	}
	public void setProj_start(Date proj_start) {
		this.proj_start = proj_start;
	}
	public Date getProj_end() {
		return proj_end;
	}
	public void setProj_end(Date proj_end) {
		this.proj_end = proj_end;
	}
	public String getProj_content() {
		return proj_content;
	}
	public void setProj_content(String proj_content) {
		this.proj_content = proj_content;
	}
	public String getProj_status() {
		return proj_status;
	}
	public void setProj_status(String proj_status) {
		this.proj_status = proj_status;
	}
	public String getProj_delay() {
		return proj_delay;
	}
	public void setProj_delay(String proj_delay) {
		this.proj_delay = proj_delay;
	}
	public Date getProj_update() {
		return proj_update;
	}
	public void setProj_update(Date proj_update) {
		this.proj_update = proj_update;
	}

}
