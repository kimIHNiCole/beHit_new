package com.behit.approval.service;

import java.sql.Date;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.behit.approval.dao.ApprovalDAO;
import com.behit.approval.dto.ApprovalDTO;
import com.behit.employee.dto.EmployeeDTO;

@Service
public class ApprovalService {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired
	ApprovalDAO dao;

	
	public ModelAndView approval_write_go(String form,String emp_id, String login_name) {
		
		ModelAndView mav = new ModelAndView("approval/approval_write");
		
		EmployeeDTO dto = dao.approval_write_go(emp_id);
		
		String dept_name = dto.getDept_name();
		String position_name = dto.getPosition_name();
		Date emp_date = dto.getEmp_date();
		
		logger.info("로그인 아이디 : "+login_name);
		logger.info("직급 : "+ dept_name);
		logger.info("form : "+form);
		
		mav.addObject("form",form);
		mav.addObject("login_name",login_name);
		mav.addObject("dto",dto);
//		mav.addObject("dept_name",dept_name);
//		mav.addObject("position_name",position_name);
//		mav.addObject("emp_date",emp_date);
		
		return mav;
	}

	
	
	public HashMap<String, Object> org_selected(String emp_id) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
	
		EmployeeDTO dto = dao.approval_write_go(emp_id);
		
		map.put("dept_name",dto.getDept_name());
		map.put("position_name",dto.getPosition_name());
		map.put("emp_name",dto.getEmp_name());
		
		return map;
	}

	
	
	public ModelAndView approval_write(EmployeeDTO loginInfo, HashMap<String, String> params, MultipartFile[] files) {
		
		ModelAndView mav = new ModelAndView("approval/approval_main");

		String apv_vac_type = params.get("apv_vac_type");
		String emp_id = loginInfo.getEmp_id();
		String total_name = params.get("total_name");
		
		// 제너레이트 키 발생 -> dto 에 값을 넣어서 전송해서 apv_idx 받아야 함 -------------------------------------------------
		ApprovalDTO dto = new ApprovalDTO();
		
		String apv_code = params.get("apv_code");
		
		dto.setEmp_id(emp_id);
		dto.setApv_code(params.get("apv_code"));
		dto.setApv_cnt(params.get("apv_cnt"));
		
		if(apv_code.equals("BFVC") || apv_code.equals("AFVC")) {
			
			if(apv_code.equals("BFVC")) {
				dto.setApv_subject("연차 신청서");
			}else {
				dto.setApv_subject("사후 연차 신청서");
			}
			
			dto.setApv_vac_type(apv_vac_type);
			// 종일, 시간에 따라 dto 에 담긴 값 달리 하는 메서드
			setVacationTime(apv_vac_type,params,dto);
			dao.approval_write_vac(dto);
			
		}else if(apv_code.equals("BSPN")) {
			dto.setApv_subject(params.get("apv_subject"));
			dto.setApv_overview(params.get("apv_overview"));
			dao.approval_write_biz(dto);
		}
		
		// --------------------------------------------------------------------------------------------------------

		int apv_idx = dto.getApv_idx();
		
		logger.info("제너레이트키 :" + apv_idx);
		
		// apv_line 테이블에 데이터 insert
		apv_line(apv_idx,total_name,emp_id);
		
		return mav;
	}
	
	// apv_line 테이블에 데이터 insert 메서드
	private void apv_line(int apv_idx, String total_name, String emp_id_in) {
		
		String pattern = "\\[\"(.*?)\",\"(.*?)\",\"(.*?)\",\"(.*?)\"(?:,\"(.*?)\")?\\]";
		
		// 정규 표현식에 따라 패턴 찾기
        Pattern regex = Pattern.compile(pattern);
        Matcher matcher = regex.matcher(total_name);

        // 결과를 담을 리스트
        List<List<String>> resultList = new ArrayList<>();

        while (matcher.find()) {
            List<String> item = new ArrayList<>();
            
            // 그룹의 개수만큼 반복하여 리스트에 추가
            for (int i = 1; i <= matcher.groupCount(); i++) {
                item.add(matcher.group(i));
            }

            // 리스트를 문자열로 변환하여 결과 리스트에 추가
            resultList.add(item);
        }
        
        // apv 의 apv_approver 에 첫번째 결재자 추가
        List<String> item = resultList.get(0);
        dao.apv_approver(apv_idx,item.get(3));

        // 결과 출력 apv_line 테이블에 모든 결재자 데이터 insert 메서드
        for (int i = 0; i < resultList.size(); i++) {
        	
        	ApprovalDTO dto = new ApprovalDTO();
        	
            List<String> items = resultList.get(i);
            // 리스트에 적어도 4개의 요소가 있는지 확인
            if (items.size() >= 4) {
            	
            	dto.setApv_idx(apv_idx);
            	dto.setEmp_id(items.get(3));
            	dto.setApv_line(i+1);
            	dto.setEmp_id_in(emp_id_in);
            	
                dao.apv_line(dto);
                
            } else {
                System.out.println("리스트에 충분한 요소가 없습니다.");
            }
        }
		
	}

	// 종일, 시간에 따라 dto 에 담긴 값 달리 하는 메서드
	private void setVacationTime(String apv_vac_type, HashMap<String, String> params, ApprovalDTO dto) {
		
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		
		// 종일일 경우
				if(apv_vac_type.equals("종일")) {
					
					logger.info("종일입니다");
					
					try {
						// 문자열 -> Date 타입
			            java.util.Date utilDate1 = dateFormat.parse(params.get("apv_start_day"));
			            java.util.Date utilDate2 = dateFormat.parse(params.get("apv_end_day"));
			            
			            Date apv_start_day = new Date(utilDate1.getTime());
			            Date apv_end_day = new Date(utilDate2.getTime());
			            
			            dto.setApv_start_day(apv_start_day);
			            dto.setApv_end_day(apv_end_day);
			        } catch (ParseException e) {
			            e.printStackTrace();
			        }
					
				}else if(apv_vac_type.equals("시간")) { // 시간일 경우
					
					SimpleDateFormat inputFormat = new SimpleDateFormat("h:mma", Locale.ENGLISH); // 7:00am 을
					SimpleDateFormat outputFormat = new SimpleDateFormat("HH:mm:ss"); // 07:00:00 로
					
					try {
						// 문자열 -> datetime 타입 변환
						java.util.Date date1 = inputFormat.parse(params.get("apv_start_time"));
						java.util.Date date2 = inputFormat.parse(params.get("apv_end_time"));
						
						String outputTime1 = outputFormat.format(date1);
			            String outputTime2 = outputFormat.format(date2);
			            
			            String apv_start_day = params.get("apv_start_day"); // 날짜
			            
			            // 날짜 + 시간 결합
			            String combinedDateTime1 = apv_start_day + " " + outputTime1;
			            String combinedDateTime2 = apv_start_day + " " + outputTime2;
			            
			            SimpleDateFormat dateTimeFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			            java.util.Date dateTime1 = dateTimeFormat.parse(combinedDateTime1);
			            java.util.Date dateTime2 = dateTimeFormat.parse(combinedDateTime2);
			            
			            Timestamp apv_start_time = new Timestamp(dateTime1.getTime());
			            Timestamp apv_end_time = new Timestamp(dateTime2.getTime());
						
			            dto.setApv_start_time(apv_start_time);
			            dto.setApv_end_time(apv_end_time);
					} catch (ParseException e) {
						e.printStackTrace();
					}
					
				}
		
	}

	public List<ApprovalDTO> getApproval_list(String emp_id) {
		return dao.getApproval_list(emp_id);
	}



	public ModelAndView approval_detail(String apv_code, String apv_idx, String emp_id, String login_name) {
		
		ModelAndView mav = new ModelAndView("approval/getApproval_detail");
		
		EmployeeDTO dto = dao.approval_write_go(emp_id);
		ApprovalDTO apv = new ApprovalDTO();
		
		apv.setApv_code(apv_code);
		apv.setApv_idx(Integer.parseInt(apv_idx));
		
		String dept_name = dto.getDept_name();
		String position_name = dto.getPosition_name();
		Date emp_date = dto.getEmp_date();
		
		logger.info("로그인 아이디 : "+login_name);
		logger.info("직급 : "+ dept_name);
		mav.addObject("login_name",login_name);
		mav.addObject("apv",apv);
		mav.addObject("dto",dto);
		
		return mav;
		
	}



	
}
