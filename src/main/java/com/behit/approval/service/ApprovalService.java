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
		ApprovalDTO dto = dao.approval_write_go(emp_id);

		mav.addObject("form",form);
		mav.addObject("login_name",login_name);
		mav.addObject("dto",dto);
		mav.addObject("form_type","write");
		
		return mav;
	}

	
	
	public HashMap<String, Object> org_selected(String emp_id) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
	
		ApprovalDTO dto = dao.approval_write_go(emp_id);
		
		map.put("dept_name",dto.getDept_name());
		map.put("position_name",dto.getPosition_name());
		map.put("emp_name",dto.getEmp_name());
		
		return map;
	}

	
	
	public String approval_write(EmployeeDTO loginInfo, ApprovalDTO dto, MultipartFile[] files) {
		
		String emp_id = loginInfo.getEmp_id();
		String total_name = dto.getTotal_name();
		String apv_code = dto.getApv_code();
		String apv_vac_type = dto.getApv_vac_type();
		
		logger.info("뭐가 문제인데 : " + apv_vac_type);
		
		dto.setEmp_id(emp_id);
		
		if(apv_code.equals("BFVC") || apv_code.equals("AFVC")) {
			
			if(apv_code.equals("BFVC")) {
				dto.setApv_subject("연차 신청서");
			}else {
				dto.setApv_subject("사후 연차 신청서");
			}
			
			if(apv_vac_type.equals("종일")) {
				dto.setApv_start_day(dto.getApv_start_day().replace(",", ""));
			}else if(apv_vac_type.equals("시간")) {
				setVacationTime(dto);
				dto.setApv_start_day("");
			}
			
			dao.approval_write_vac(dto);
			
			
		}else if(apv_code.equals("BSPN")) {
			dao.approval_write_biz(dto);
		}
		
		int apv_idx = dto.getApv_idx();
		apv_line(apv_idx,total_name,emp_id);
		
		
		return "approval/approval_main";
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
	private void setVacationTime(ApprovalDTO dto) {
		
		if(dto.getApv_vac_type().equals("시간")){
		
			SimpleDateFormat inputFormat = new SimpleDateFormat("h:mma", Locale.ENGLISH); // 7:00am 을
			SimpleDateFormat outputFormat = new SimpleDateFormat("HH:mm:ss"); // 07:00:00 로
			
			try {
				java.util.Date date1 = inputFormat.parse(dto.getApv_start_time());
				java.util.Date date2 = inputFormat.parse(dto.getApv_end_time());
				
				String outputTime1 = outputFormat.format(date1);
	            String outputTime2 = outputFormat.format(date2);
	            
	            String combinedDateTime1 = dto.getApv_start_day() + " " + outputTime1;
	            String combinedDateTime2 = dto.getApv_start_day() + " " + outputTime2;
	            
	            dto.setApv_start_time(combinedDateTime1);
	            dto.setApv_end_time(combinedDateTime2);
			
			} catch (ParseException e) {
				e.printStackTrace();
			}
			
		}
			
	}
	

	public ModelAndView getApproval_detail(String apv_idx, String emp_id) {
		
		ApprovalDTO apv = dao.getApproval_detail(apv_idx); // apv 에 대한 정보 
		
		
		
		ApprovalDTO dto = dao.approval_write_go(apv.getEmp_id()); // 상신자 정보
		
		ApprovalDTO apv_history_reason = dao.apv_history_reason(apv_idx); // 결재사유
		
		if(apv_history_reason != null) {
			apv.setApv_history_stmt(apv_history_reason.getApv_history_stmt());
			apv.setApv_history_reason(apv_history_reason.getApv_history_reason());
		}
		
		List<ApprovalDTO> apv_line = dao.getApv_line(apv_idx); // 결재자 아이디, 결재순서
		List<ApprovalDTO> apv_line_info = new ArrayList<ApprovalDTO>();
		
		for (ApprovalDTO approvalDTO : apv_line) { // 결재선 정보
			String emp_idx = approvalDTO.getEmp_id();
			ApprovalDTO line_info = dao.approval_write_go(emp_idx); 
			line_info.setApv_line(approvalDTO.getApv_line());
			
			// 결재 여부
			ApprovalDTO apv_history = dao.apv_line_stmt(apv_idx,emp_idx);
			
			if(apv_history != null) {
				line_info.setApv_history_date(apv_history.getApv_history_date());
				line_info.setApv_history_stmt(apv_history.getApv_history_stmt());
				line_info.setApv_history_reason(apv_history.getApv_history_reason());
			}
			apv_line_info.add(line_info);
		}
		apv.setApv_idx(Integer.parseInt(apv_idx));
		
		
		ModelAndView mav = new ModelAndView("approval/getApproval_detail");
		mav.addObject("form_type","detail");
		
		mav.addObject("emp_id",emp_id);
		mav.addObject("apv",apv);
		mav.addObject("dto",dto);
		mav.addObject("apv_line_info",apv_line_info);
		
		return mav;
		
	}


	public String getApproval_detail_do(ApprovalDTO dto) {
		
		dao.getApproval_detail_do(dto); // 결재 히스토리 insert
		
		String apv_stmt = "";
		int apv_idx = dto.getApv_idx();      
		
		if(dto.getApv_history_stmt().equals("결재")) {
			
			String apv_approver = dao.apv_line_sel(apv_idx,dto.getApv_approver()); // 다음 순서
			if(apv_approver != null) {
				// 다음 결재자 업데이트
				dao.apv_approver(apv_idx, apv_approver);
			}else{
				// 다음 결재자 없으면 완료 처리
				apv_stmt = "완료";
				
				String apv_code = dto.getApv_code();
				String format_apv_idx = formatNumber(apv_idx);
				String apv_history_date = apv_history_date(dao.apv_history_date(apv_idx));
				String apv_num = apv_code + "-" + apv_history_date + "-" + format_apv_idx ;
				
				logger.info("apv_code 값 :" +apv_code);
				logger.info("apv_num 값 :" +apv_code);
				
				dao.apv_update(apv_idx,apv_stmt);
				dao.apv_update_num(apv_idx,apv_num);
			}
			
		}else if(dto.getApv_history_stmt().equals("반려")){
			apv_stmt = "반려";
			dao.apv_update(apv_idx,apv_stmt);
		}
		
			return "approval/getApproval_list";
	}

	// 4 -> 004 변경
	private String formatNumber(int apv_idx) {
		// %03d는 3자리 숫자로 형식화하되, 필요할 경우 0으로 채우는 형식 지정자입니다.
        return String.format("%03d", apv_idx);
	}
	// 2024-01-10 -> 20240110 으로 변경 
	private String apv_history_date(String apv_history_date) {
        // 입력된 문자열 형식 지정
		SimpleDateFormat inputFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        // 출력할 문자열 형식 지정
		SimpleDateFormat outputFormat = new SimpleDateFormat("yyyyMMdd");
		String outputDateString = "";
		
        try {
            // 문자열을 Date 객체로 파싱
        	java.util.Date date = inputFormat.parse(apv_history_date);
            // 출력 형식으로 포맷팅
            outputDateString = outputFormat.format(date);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return outputDateString;
    }
	
		
	public List<ApprovalDTO> getApproval_list(String emp_id) {
		return dao.getApproval_list(emp_id);
	}

	public List<ApprovalDTO> requestApproval_list(String emp_id) {
		return dao.requestApproval_list(emp_id);
	}
	
	public List<ApprovalDTO> compApproval_list(String emp_id) {
		return dao.compApproval_list(emp_id);
	}

	public List<ApprovalDTO> finishApproval_list(String emp_id) {
		return dao.finishApproval_list(emp_id);
	}

	public List<ApprovalDTO> rejectedApproval_list(String emp_id) {
		return dao.rejectedApproval_list(emp_id);
	}

	public List<ApprovalDTO> temporaryApproval_list(String emp_id) {
		return dao.temporaryApproval_list(emp_id);
	}




	
}
