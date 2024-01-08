package com.behit.employee.dto;

import java.sql.Date;
import java.sql.Timestamp;
import java.time.LocalDateTime;

import org.apache.ibatis.type.Alias;

@Alias("vacation")
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
	private Timestamp vaca_start;
	private Timestamp vaca_end_time;
	private String vaca_reason;
	private Date add_date;
	private Date del_date;
	private int add_hour;
	private String add_vaca_reason;
	
	public LocalDateTime getStartDateTime() {
        return vaca_start.toLocalDateTime();
    }

    public String getStartDate() {
        return vaca_start.toLocalDateTime().toLocalDate().toString();
    }

    public String getStartTime() {
        return vaca_start.toLocalDateTime().toLocalTime().toString();
    }

    public LocalDateTime getEndDateTime() {
        return vaca_end_time.toLocalDateTime();
    }

    public String getEndDate() {
        return vaca_end_time.toLocalDateTime().toLocalDate().toString();
    }

    public String getEndTime() {
        return vaca_end_time.toLocalDateTime().toLocalTime().toString();
    }
	
	public int getOverhour() {
		return overhour;
	}

	public void setOverhour(int overhour) {
		this.overhour = overhour;
	}

	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
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
	public String getEmp_dept_name() {
		return emp_dept_name;
	}
	public void setEmp_dept_name(String emp_dept_name) {
		this.emp_dept_name = emp_dept_name;
	}
	public Date getHiredate() {
		return hiredate;
	}
	public void setHiredate(Date hiredate) {
		this.hiredate = hiredate;
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
	public int getTotalhour() {
		return totalhour;
	}
	public void setTotalhour(int totalhour) {
		this.totalhour = totalhour;
	}
	public int getUsehour() {
		return usehour;
	}
	public void setUsehour(int usehour) {
		this.usehour = usehour;
	}
	public int getRemainhour() {
		return remainhour;
	}
	public void setRemainhour(int remainhour) {
		this.remainhour = remainhour;
	}
	public int getYearhour() {
		return yearhour;
	}
	public void setYearhour(int yearhour) {
		this.yearhour = yearhour;
	}
	public int getMonthhour() {
		return monthhour;
	}
	public void setMonthhour(int monthhour) {
		this.monthhour = monthhour;
	}
	public int getCreatehour() {
		return createhour;
	}
	public void setCreatehour(int createhour) {
		this.createhour = createhour;
	}
	public int getUse_hour() {
		return use_hour;
	}
	public void setUse_hour(int use_hour) {
		this.use_hour = use_hour;
	}
	public Timestamp getVaca_start() {
		return vaca_start;
	}
	public void setVaca_start(Timestamp vaca_start) {
		this.vaca_start = vaca_start;
	}
	public Timestamp getVaca_end_time() {
		return vaca_end_time;
	}
	public void setVaca_end_time(Timestamp vaca_end_time) {
		this.vaca_end_time = vaca_end_time;
	}
	public String getVaca_reason() {
		return vaca_reason;
	}
	public void setVaca_reason(String vaca_reason) {
		this.vaca_reason = vaca_reason;
	}
	public Date getAdd_date() {
		return add_date;
	}
	public void setAdd_date(Date add_date) {
		this.add_date = add_date;
	}
	public Date getDel_date() {
		return del_date;
	}
	public void setDel_date(Date del_date) {
		this.del_date = del_date;
	}
	public int getAdd_hour() {
		return add_hour;
	}
	public void setAdd_hour(int add_hour) {
		this.add_hour = add_hour;
	}
	public String getAdd_vaca_reason() {
		return add_vaca_reason;
	}
	public void setAdd_vaca_reason(String add_vaca_reason) {
		this.add_vaca_reason = add_vaca_reason;
	}
	
	
}