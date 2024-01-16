package com.behit.employee.dto;

import java.sql.Date;
import java.sql.Timestamp;
import java.time.LocalDateTime;

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
	private int yearhour;
	private int monthhour;
	private int createhour;
	private int use_hour;
	private int overhour;
	private String vaca_start;
	private String vaca_end_time;
	private String vaca_reason;
	private Date add_date;
	private Date del_date;
	private int add_hour;
	private String add_vaca_reason;
	private String dept_name;
	
	
}