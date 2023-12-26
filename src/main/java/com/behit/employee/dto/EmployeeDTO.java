package com.behit.employee.dto;

import java.sql.Date;

public class EmployeeDTO {

	private String emp_id;
	private String emp_name;
	private String password;
	private Date emp_birth;
	private String email;
	private String cp_phone;
	private String mobile_phone;
	private Date hiredate;
	private Date leavedate;
	private String address;
	private String detail_addr;
	private int position_idx;
	private int department;
	private int rank;
	private int job;
	
	
	public int getDepartment() {
		return department;
	}
	public void setDepartment(int department) {
		this.department = department;
	}
	public int getRank() {
		return rank;
	}
	public void setRank(int rank) {
		this.rank = rank;
	}
	public int getJob() {
		return job;
	}
	public void setJob(int job) {
		this.job = job;
	}
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Date getEmp_birth() {
		return emp_birth;
	}
	public void setEmp_birth(Date emp_birth) {
		this.emp_birth = emp_birth;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCp_phone() {
		return cp_phone;
	}
	public void setCp_phone(String cp_phone) {
		this.cp_phone = cp_phone;
	}
	public String getMobile_phone() {
		return mobile_phone;
	}
	public void setMobile_phone(String mobile_phone) {
		this.mobile_phone = mobile_phone;
	}
	public Date getHiredate() {
		return hiredate;
	}
	public void setHiredate(Date hiredate) {
		this.hiredate = hiredate;
	}
	public Date getLeavedate() {
		return leavedate;
	}
	public void setLeavedate(Date leavedate) {
		this.leavedate = leavedate;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getDetail_addr() {
		return detail_addr;
	}
	public void setDetail_addr(String detail_addr) {
		this.detail_addr = detail_addr;
	}
	public int getPosition_idx() {
		return position_idx;
	}
	public void setPosition_idx(int position_idx) {
		this.position_idx = position_idx;
	}
	
	
	
	
}
