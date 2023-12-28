package com.behit.employee.dto;

import java.sql.Date;

import org.apache.ibatis.type.Alias;

@Alias("employee")
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
	private int emp_dept_idx;
	private int emp_position_idx;
	private int emp_grade_idx;
	private int login_lock;
	private String emp_id_in;
	private Date emp_date;
	private String emp_id_up;
	private Date emp_date_up;
	
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
	public int getEmp_dept_idx() {
		return emp_dept_idx;
	}
	public void setEmp_dept_idx(int emp_dept_idx) {
		this.emp_dept_idx = emp_dept_idx;
	}
	public int getEmp_position_idx() {
		return emp_position_idx;
	}
	public void setEmp_position_idx(int emp_position_idx) {
		this.emp_position_idx = emp_position_idx;
	}
	public int getEmp_grade_idx() {
		return emp_grade_idx;
	}
	public void setEmp_grade_idx(int emp_grade_idx) {
		this.emp_grade_idx = emp_grade_idx;
	}
	public int getLogin_lock() {
		return login_lock;
	}
	public void setLogin_lock(int login_lock) {
		this.login_lock = login_lock;
	}
	public String getEmp_id_in() {
		return emp_id_in;
	}
	public void setEmp_id_in(String emp_id_in) {
		this.emp_id_in = emp_id_in;
	}
	public Date getEmp_date() {
		return emp_date;
	}
	public void setEmp_date(Date emp_date) {
		this.emp_date = emp_date;
	}
	public String getEmp_id_up() {
		return emp_id_up;
	}
	public void setEmp_id_up(String emp_id_up) {
		this.emp_id_up = emp_id_up;
	}
	public Date getEmp_date_up() {
		return emp_date_up;
	}
	public void setEmp_date_up(Date emp_date_up) {
		this.emp_date_up = emp_date_up;
	}

	
}
