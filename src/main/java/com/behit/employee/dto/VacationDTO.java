package com.behit.employee.dto;

import java.sql.Date;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("vacation")
@Getter
@Setter
public class VacationDTO {

	private int idx;
	private String emp_id;
	private String emp_name;
	private String emp_dept_name;
	private Date hiredate;
	private String ori_file_name;
	private String new_file_name;
	private int totalhour;
	private int usehour;
	private int remainhour;
}
