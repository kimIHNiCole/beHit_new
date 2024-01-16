<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<table class="table-header">
			<tbody>
				<tr>
					<td class="table-subject" colspan="2">연차 신청서</td>
				</tr>
				<tr>
					<td class="table-header-left">
					
					<c:choose>
					  <c:when test="${form_type == 'write'}">
					  
						  <table class="table-header-left-table">
								<tbody>
									<tr>
										<td class="table-header-left-table-left">기안자</td>
										<td class="table-header-left-table-right name">${login_name}</td>
									</tr>
									<tr>
										<td class="table-header-left-table-left">부서</td>
										<td class="table-header-left-table-right dept">${dto.dept_name}</td>
									</tr>
									<tr>
										<td class="table-header-left-table-left">기안일</td>
										<td class="table-header-left-table-right date">${dto.apv_date}</td>
									</tr>
									<tr>
										<td class="table-header-left-table-left">문서번호</td>
										<td class="table-header-left-table-right number"></td>
									</tr>
								</tbody>
							</table>
					  
					  </c:when>
					  <c:when test="${form_type == 'detail' || form_type == 'update'}">
					  
						  <table class="table-header-left-table">
								<tbody>
									<tr>
										<td class="table-header-left-table-left">기안자</td>
										<td class="table-header-left-table-right name">${dto.emp_name}</td>
									</tr>
									<tr>
										<td class="table-header-left-table-left">부서</td>
										<td class="table-header-left-table-right dept">${dto.dept_name}</td>
									</tr>
									<tr>
										<td class="table-header-left-table-left">기안일</td>
										<td class="table-header-left-table-right date">${apv.apv_date}</td>
									</tr>
									
									<c:choose>
									  <c:when test="${apv.apv_num == null}">
									  	<tr>
												<td class="table-header-left-table-left">문서번호</td>
												<td class="table-header-left-table-right number"></td>
											</tr>
									  </c:when>
									  <c:when test="${apv.apv_num != null}">
									  	<tr>
												<td class="table-header-left-table-left">문서번호</td>
												<td class="table-header-left-table-right number">${apv.apv_num}</td>
											</tr>
									  </c:when>
									</c:choose>
									
								</tbody>
							</table>
					  
					  </c:when>
					</c:choose>
	
					</td>
					<td class="table-header-right">
						<div class="apv-sign">
							<table class="apv-sign-table">
								<tbody>
									<tr class="apv-sign-table-app">
										<th>신청</th>									
										<!-- 결재선 추가 -->
										<td class="apv-sign-table-right">
										<c:choose>
										  <c:when test="${form_type == 'write'}">
										  
											  <table>
													<tbody>
														<tr><td><span class="apv-sign-line-dept">${dto.position_name}</span></td></tr>
														<tr><td><span class="apv-sign-line-name">${login_name}</span></td></tr>
														<tr class="last"><td><span class="apv-sign-line-date">${dto.apv_date}</span></td></tr>
													</tbody>
												</table>
										  
										  </c:when>
										  <c:when test="${form_type == 'detail' || form_type == 'update'}">
										  
											  <table>
													<tbody>
														<tr><td><span class="apv-sign-line-dept">${dto.position_name}</span></td></tr>
														<tr><td><span class="apv-sign-line-name">${dto.emp_name}</span></td></tr>
														<tr class="last"><td><span class="apv-sign-line-date">${apv.apv_date}</span></td></tr>
													</tbody>
												</table>
											  
										  </c:when>
										</c:choose>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="apv-sign">
							<table class="apv-sign-table">
								<tbody>
									<tr class="apv-sign-table-tr">
										<th>승인</th>
																			
										<!-- 결재선 추가 -->
										<c:choose>
										  <c:when test="${form_type == 'write'}">
										  
										  <td class="apv-sign-table-right">
												<table>
													<tbody>
														<tr><td><span class="apv-sign-line-dept">&nbsp;</span></td></tr>
														<tr><td><span class="apv-sign-line-name">&nbsp;</span></td></tr>
														<tr class="last"><td><span class="apv-sign-line-date">&nbsp;</span></td></tr>
													</tbody>
												</table>
											</td>
										  
										  </c:when>
										  <c:when test="${form_type == 'detail'}">
										  
												<c:forEach var="apvDTO" items="${apv_line_info}">
									        <td class="apv-sign-table-right">
														<table>
															<tbody>
																<tr><td><span class="apv-sign-line-dept">${apvDTO.position_name}</span></td></tr>
																<tr><td><span class="apv-sign-line-name">${apvDTO.emp_name}</span></td></tr>
																<c:choose>
															    <c:when test="${apvDTO.apv_history_date == null}">
																		<tr class="last"><td><span class="apv-sign-line-date">&nbsp;</span></td></tr>
															    </c:when>
															    <c:when test="${apvDTO.apv_history_date != null}">
															    
																    <c:choose>
																	    <c:when test="${apvDTO.apv_history_stmt == '반려'}">
																				<tr class="last"><td>
																				<span class="apv-sign-line-date" style="color:#C20000">
																				<p>${apvDTO.apv_history_date}</p>
																				<p>(반려)</p>
																				</span>
																				</td></tr>
																	    </c:when>
																	    <c:when test="${apvDTO.apv_history_stmt == '결재'}">
																	    	<tr class="last"><td><span class="apv-sign-line-date" style="color:#C20000">${apvDTO.apv_history_date}</span></td></tr>
																	    </c:when>
																    </c:choose>
																		
															    </c:when>
																</c:choose>
															</tbody>
														</table>
													</td>
									    	</c:forEach>
									    	<input type="hidden" name="apv_idx" value="${apv.apv_idx}" />
									    	<input type="hidden" name="apv_approver" value="${apv.apv_approver}" />
										  
										  </c:when>
										  <c:when test="${form_type == 'update'}">
										  
										  <c:if test="${temporaryTotalName == 'null'}">
											  <td class="apv-sign-table-right">
													<table>
														<tbody>
															<tr><td><span class="apv-sign-line-dept">&nbsp;</span></td></tr>
															<tr><td><span class="apv-sign-line-name">&nbsp;</span></td></tr>
															<tr class="last"><td><span class="apv-sign-line-date">&nbsp;</span></td></tr>
														</tbody>
													</table>
												</td>
										  </c:if>
										  
												<c:forEach var="apvDTO" items="${apv_line_info}">
									        <td class="apv-sign-table-right">
														<table>
															<tbody>
																<tr><td><span class="apv-sign-line-dept">${apvDTO.position_name}</span></td></tr>
																<tr><td><span class="apv-sign-line-name">${apvDTO.emp_name}</span></td></tr>
																<c:choose>
															    <c:when test="${apvDTO.apv_history_date == null}">
																		<tr class="last"><td><span class="apv-sign-line-date">&nbsp;</span></td></tr>
															    </c:when>
															    <c:when test="${apvDTO.apv_history_date != null}">
															    
																    <c:choose>
																	    <c:when test="${apvDTO.apv_history_stmt == '반려'}">
																				<tr class="last"><td>
																				<span class="apv-sign-line-date" style="color:#C20000">
																				<p>${apvDTO.apv_history_date}</p>
																				<p>(반려)</p>
																				</span>
																				</td></tr>
																	    </c:when>
																	    <c:when test="${apvDTO.apv_history_stmt == '결재'}">
																	    	<tr class="last"><td><span class="apv-sign-line-date" style="color:#C20000">${apvDTO.apv_history_date}</span></td></tr>
																	    </c:when>
																    </c:choose>
																		
															    </c:when>
																</c:choose>
															</tbody>
														</table>
													</td>
									    	</c:forEach>
									    	<input type="hidden" name="apv_idx" value="${apv.apv_idx}" />
									    	<input type="hidden" name="apv_approver" value="${apv.apv_approver}" />
										  
										  </c:when>
										</c:choose>
										
										
										
									</tr>
								</tbody>
							</table>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
		<table class="table-content">
			<tbody>
				<tr>
					<td class="table-content-left">연차 종류</td>
					<td class="table-content-right">
					
						<c:choose>
					    <c:when test="${form_type == 'write' || form_type == 'update'}">
					    	<select id="selectpickerBasic" class="selectpicker w-20 form-vac-time" data-style="btn-default" name="apv_vac_type">
				           <option selected>종일</option>
				           <option>시간</option>
				    		</select>
					    </c:when>
					    <c:when test="${form_type == 'detail'}">
					        <span>${apv.apv_vac_type}</span>
					    </c:when>
						</c:choose>
					
					</td>
				</tr>
				<tr>
					<td class="table-content-left">연차 기간</td>
					<td class="table-content-right time">
						<div class="vac-time-input">
						<c:choose>
						    <c:when test="${form_type == 'write' || form_type == 'update'}">
						    
										<div class="vac-time-input-type" style="display:inline-block">
										
											<span class="apv-vac-day">
												<input name="apv_start_day" type="text" class="form-control form-vac-time-start" placeholder="YYYY-MM-DD" id="flatpickr-date-before" />
													<span class="text"> ~ </span>
												<input name="apv_end_day" type="text" class="form-control form-vac-time-end" placeholder="YYYY-MM-DD" id="flatpickr-date-after" />
											</span>
											
											<span class="apv-vac-time">
												<input name="apv_start_day" type="text" class="form-control form-vac-time-start" placeholder="YYYY-MM-DD" id="flatpickr-date" />
				            		<input name="apv_start_time" type="text" id="timepicker-basic-before" placeholder="HH:MMam" class="form-control" />
				           			<span class="text"> ~ </span>
				            		<input name="apv_end_time" type="text" id="timepicker-basic-after" placeholder="HH:MMam" class="form-control" />
			            		</span>
											
										</div>
						    </c:when>
						    <c:when test="${form_type == 'detail'}">
						    
										<div class="vac-time-input-type" style="display:inline-block">
									    <c:choose>
										    <c:when test="${apv.apv_vac_type == '종일'}">
										    	<div>
											    	<span>${apv.apv_start_day}</span>
											    	<span> ~ </span>
											    	<span>${apv.apv_end_day}</span>
										    	</div>
														
										    </c:when>
										    <c:when test="${apv.apv_vac_type == '시간'}">
										    
										    <div id="apv_vac_type_time">
										    </div>
										    
										    </c:when>
										</c:choose>
						      </div>
						      
						    </c:when>
						</c:choose>
						
							<div style="display:inline-block; margin-right:2rem;" >
								<input name="apv_time" type="text" class="form-control vac-time apv-vac-day" readonly />
								<input name="apv_time" type="text" class="form-control vac-time apv-vac-time" readonly />
								<span class="text"> 시간</span>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td class="table-content-left">연차 사유</td>
					<td class="table-content-right reason">
						    <div>
						      <div id="snow-toolbar">
						        <span class="ql-formats">
						          <select class="ql-font"></select>
						          <select class="ql-size"></select>
						        </span>
						        <span class="ql-formats">
						          <button class="ql-bold"></button>
						          <button class="ql-italic"></button>
						          <button class="ql-underline"></button>
						          <button class="ql-strike"></button>
						        </span>
						        <span class="ql-formats">
						          <select class="ql-color"></select>
						          <select class="ql-background"></select>
						        </span>
						        <span class="ql-formats">
						          <button class="ql-script" value="sub"></button>
						          <button class="ql-script" value="super"></button>
						        </span>
						        <span class="ql-formats">
						          <button class="ql-header" value="1"></button>
						          <button class="ql-header" value="2"></button>
						          <button class="ql-blockquote"></button>
						          <button class="ql-code-block"></button>
						        </span>
						      </div>
						      <div id="snow-editor">
				          </div>
								</div>
					</td>
				</tr>
			</tbody>
		</table>
		
		<c:if test="${form_type == 'write' || form_type == 'update'}">
			<input type="hidden" name="total_name" id="totalNames" />
			<input type="hidden" name="apv_cnt" id="apvCnt" />
		</c:if>