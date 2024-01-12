<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<table class="table-header">
	<tbody>
		<tr>
			<td class="table-subject" colspan="2">사업 기안서</td>
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
								  <c:when test="${form_type == 'detail' || form_type == 'update'}">
								  
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
																		<tr class="last"><td><span class="apv-sign-line-date" style="color:#C20000">${apvDTO.apv_history_date}(반려)</span></td></tr>
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
				<td class="table-content-left">제목</td>
				<td class="table-content-right">
				
					<c:choose>
						  <c:when test="${form_type == 'write' || form_type == 'update'}">
							<input type="text" name="apv_subject" class="form-control" placeholder="제목을 입력하세요." />
						  </c:when>
						  <c:when test="${form_type == 'detail'}">
						      <span>${apv.apv_subject}</span>
						  </c:when>
					</c:choose>
				
				</td>
		</tr>
		<tr>
				<td class="table-content-left">사업 개요</td>
				<td class="table-content-right">
				
					<c:choose>
						  <c:when test="${form_type == 'write' || form_type == 'update'}">
									<textarea class="form-control" name="apv_overview" id="exampleFormControlTextarea1" placeholder="내용을 입력하세요." rows="3" style="resize: none"></textarea>
						  </c:when>
						  <c:when test="${form_type == 'detail'}">
						      <span>${apv.apv_overview}</span>
						  </c:when>
					</c:choose>
				
				</td>
		</tr>
		<tr>
				<td class="table-content-left">내용</td>
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
	  		