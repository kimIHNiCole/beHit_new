package com.behit.profile.dto;

import java.sql.Date;

public class FileDTO {

	private int file_idx;
	private int file_kind;
	private int file_kind_idx;
	private String ori_file_name;
	private String new_file_name;
	private Date upload_date;
	
	public int getFile_idx() {
		return file_idx;
	}
	public void setFile_idx(int file_idx) {
		this.file_idx = file_idx;
	}
	public int getFile_kind() {
		return file_kind;
	}
	public void setFile_kind(int file_kind) {
		this.file_kind = file_kind;
	}
	public int getFile_kind_idx() {
		return file_kind_idx;
	}
	public void setFile_kind_idx(int file_kind_idx) {
		this.file_kind_idx = file_kind_idx;
	}
	public String getOri_file_name() {
		return ori_file_name;
	}
	public void setOri_file_name(String ori_file_name) {
		this.ori_file_name = ori_file_name;
	}
	public String getNew_file_name() {
		return new_file_name;
	}
	public void setNew_file_name(String new_file_name) {
		this.new_file_name = new_file_name;
	}
	public Date getUpload_date() {
		return upload_date;
	}
	public void setUpload_date(Date upload_date) {
		this.upload_date = upload_date;
	}
	
	
}
