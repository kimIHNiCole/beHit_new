package com.behit.employee.dto;

import java.sql.Date;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("employee")
@Getter
@Setter
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
	private String dept_name;
	private String grade_name;
	private String position_name;
	private int common_code_idx;
	private String psn_his_kind;
	private String psn_his_befoInfo;
	private String psn_his_aftrInfo;
	private Date psn_his_date;
	private String category;
	private String ori_file_name;
	private String new_file_name;

}
