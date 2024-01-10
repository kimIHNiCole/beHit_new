package com.behit.profile.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.behit.approval.dao.ApprovalDAO;
import com.behit.approval.dto.ApprovalDTO;
import com.behit.employee.dto.EmployeeDTO;
import com.behit.profile.dao.ProfileDAO;
import com.behit.profile.dto.FileDTO;

@Service
public class DashBoardService {

	Logger logger = LoggerFactory.getLogger(getClass());

	@Autowired ProfileDAO profileDAO;
	@Autowired ApprovalDAO aproDao;
	public EmployeeDTO detail(String login_id) {
		return profileDAO.prodetail(login_id);
	}

	public FileDTO getPhoto(String login_id) {
		return profileDAO.getPhoto(login_id);
	}

	public List<ApprovalDTO> reqAp_list(String login_id) {
		return aproDao.getApproval_list(login_id);
	}
	
}
