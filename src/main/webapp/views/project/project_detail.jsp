<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html
  lang="en"
  class="light-style layout-navbar-fixed layout-menu-fixed layout-compact"
  dir="ltr"
  data-theme="theme-default"
  data-assets-path="../../assets/"
  data-template="vertical-menu-template">
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

    <title>BeHit</title>

    <meta name="description" content="" />

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="../../assets/img/favicon/favicon.ico" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
      rel="stylesheet" />

    <!-- Icons -->
    <link rel="stylesheet" href="../../assets/vendor/fonts/boxicons.css" />
    <link rel="stylesheet" href="../../assets/vendor/fonts/fontawesome.css" />
    <link rel="stylesheet" href="../../assets/vendor/fonts/flag-icons.css" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="../../assets/vendor/css/rtl/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="../../assets/vendor/css/rtl/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="../../assets/css/demo.css" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="../../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/typeahead-js/typeahead.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/bootstrap-maxlength/bootstrap-maxlength.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/bootstrap-select/bootstrap-select.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/quill/katex.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/quill/editor.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/sweetalert2/sweetalert2.css" />

    <!-- Page CSS -->

    <link rel="stylesheet" href="../../assets/vendor/css/pages/app-chat.css" />
    <link rel="stylesheet" href="../../assets/vendor/css/pages/page-profile.css" />

    <!-- Helpers -->
    <script src="../../assets/vendor/js/helpers.js"></script>
    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="../../assets/js/config.js"></script>
    
    <!-- 커스텀 -->
    <style>
    /* 프로젝트 추가 버튼 */
    .btn.btn-primary.text-nowrap{
    	margin-left: 5px;
    	width: 25rem;
    	font-size: 1rem;
    }
    /* 채팅 리스트 글씨 */
    .text-primary.mb-0{
    	margin-top: 12px;
    	font-weight: 600;
    	margin-right: 20px;
    }
    
    /* 서치박스 */
    .flex-grow-1.input-group.input-group-merge.rounded-pill.ms-1{
    	width: 180px;
    	margin-left: 50px;
    }
    /* 내 이름, 부서 표시 */
    .text-muted.text-uppercase{
    	width: 150px;
    }

/* 채팅리스트 영역 조정 */
.app-chat .app-chat-contacts .sidebar-body {
  height: calc(calc(100vh - 10.5rem) - 4.49rem);
}	
	/* 채팅 내역 영역 전체 조정 */
.col.app-chat-history{
height: calc(100vh - 10rem);
}
	/* 채팅 내역 안쪽 영역 조정 */
	.app-chat .app-chat-history .chat-history-body{
		height: calc(100vh - 16rem);
  		padding: 1.25rem 1.25rem;
  		overflow: hidden;
  		margin-bottom: 1rem;
	}

.app-chat {
  position: relative;
  height: calc(100vh - 11rem);
}

.btn.btn-primary.text-nowrap.go{
	width: 70px;
	height: 30px;
	margin-bottom: 7px;
	background-color: #23a62e;
	border-color: #23a62e;
	font-size: 13px;
	border-radius:0.3rem;
}
.btn.btn-primary.text-nowrap.wait{
	width: 70px;
	height: 30px;
	margin-bottom: 7px;
	background-color: #4974e3;
	border-color: #4974e3;
	font-size: 13px;
	border-radius:0.3rem;
}
.btn.btn-primary.text-nowrap.end{
	width: 70px;
	height: 30px;
	margin-bottom: 7px;
	background-color: #969696;
	border-color: #969696;
	font-size: 13px;
	border-radius :0.3rem;
}
.d-flex.justify-content-center{
	margin-top: 1rem;
}


.chat-contact-list-item.pro {
    border: 1px solid #DCDCDC;
}
.chat-contact-info.flex-grow-1.ms-3{
	margin-left: 0.2rem !important
}

.text-muted.fw-light{
	margin-left: 1.5rem;
}

/* 대시보드 부분 */
.card.mb-4{
	margin-bottom: 1rem !important
}
.card-header{
	margin: 0rem;
	padding: 0.8rem;
}

.table-responsive{
	min-height: 16rem !important;
}
/* 선택 탭과 셀렉트 박스 */
.form-select.create{
   width: 15rem;
   height: 3rem;
   margin: 0.5rem;
 }
 
 
/*project_detail part */



.text{
	font-family:pretendard;
}

.project-subject{
	display:flex;
	justify-content: space-between;
}

.project-subject-left{
	display:flex;
	align-items: center;
}

.project-subject-right{
	display:flex;
	align-items: center;
}

.bootstrap-select{
	width:6rem;
	border-radius: 0.375rem
}

.bootstrap-select:not([class*=col-]):not([class*=form-control]):not(.input-group-btn){
	width:6rem;
}

.project-subject-left .button{
	margin-bottom:0.125rem;
}

.selected-stat{
	margin-left:1rem;
	width:5rem;
	
}

.selected-stat .badge{
	--bs-badge-padding-x: 1em;
  --bs-badge-padding-y: 0.52em;
  --bs-badge-font-size: 1em;
}

.project-entry-ls .badge{
	--bs-badge-padding-x: 2em;
  --bs-badge-padding-y: 0.52em;
  --bs-badge-font-size: 1em;
}

.project-entry-ls{
	margin-bottom:1rem;
}

.project-record .tab-content .date{
	margin:0 1rem;
	color: #a1acb8 !important;
}

.project-record .project-record-nav{
		display: flex;
    justify-content: space-between;
    align-items: flex-end;
}

#navs-top-messages .card{
	box-shadow: none;
}

.modal{
	--bs-modal-width: 70rem;
}

.form-control{
	width:95%;
	
}


    
    </style>
  </head>

  <body>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
        <!-- 여기서부터 붙여넣기 -->
      
        <!-- Menu -->
      	<jsp:include page="/views/header_menu.jsp" />
        <!-- Layout container -->
        <div class="layout-page">
	      <!-- Navbar -->
		  <jsp:include page="/views/header_navbar.jsp" />
          
          <!-- 여기까지 붙여넣기 -->

          <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Project Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
              <div class="app-chat overflow-hidden card">
                <div class="row g-0">

                  <!-- 프로젝트 사이드바 -->
                  <div
                    class="col app-chat-contacts app-sidebar flex-grow-0 overflow-hidden border-end"
                    id="app-chat-contacts">
                    <!-- 여기서부터 -->
                    <c:if test="${sessionScope.loginInfo.getEmp_position_idx() == 8}">                    
	                    <div class="sidebar-header pt-3 px-3 mx-1">
	                      <div class="d-flex align-items-center me-3 me-lg-0">
	                        
	                        
	                        <button type="button" id="project-add-move" class="btn btn-primary text-nowrap">프로젝트 추가</button>
	                       </div>
	                    </div>
	                    <hr class="container-m-nx mt-3 mb-0" />
                    </c:if>
                    
                    <!-- 여기까지 -->
                    <div class="sidebar-body">
                                            <ul class="list-unstyled chat-contact-list pt-1" id="chat-list">
                        <li class="chat-contact-list-item chat-contact-list-item-title">
                          
                          <div class="flex-grow-1 input-group input-group-merge rounded-pill ms-1">
                          <span class="input-group-text" id="basic-addon-search31"
                            ><i class="bx bx-search fs-4"></i
                          ></span>
                          <input
                            type="text"
                            class="form-control chat-search-input"
                            placeholder="Search..."
                            aria-label="Search..."
                            aria-describedby="basic-addon-search31" />
                        </div>
                        
                        </li>
                        <li>
						    <div class="d-flex justify-content-center">
						    	<button onclick="allButton()" class="btn btn-primary text-nowrap go" style="border-color:#C20000; background-color:#C20000;">전체</button>
						        <button onclick="worksButton()" class="btn btn-primary text-nowrap go">진행중</button>
						        <button onclick="waitButton()" class="btn btn-primary text-nowrap wait">대기</button>
						        <button onclick="endButton()" class="btn btn-primary text-nowrap end">완료</button>
						    </div>
						</li>
                        <li class="chat-contact-list-item chat-list-item-0 d-none">
                          <h6 class="text-muted mb-0">No Project Found</h6>
                        </li>
                        <!-- 여기서부터 리스트 -->
                        <div id="projlist"></div>
                        <!-- 여기까지 리스트 -->
                      </ul>
                    </div>
                  </div>
                  
                  <!-- /프로젝트 사이드바 -->

                   <!-- 프로젝트 생성/디테일/수정 -->
									<div class="col app-chat-history text chat-history-body">
										<h4 class="pt-4 pb-2 px-3">프로젝트 상세</h4>
										
										<hr class="my-3" />
										<!-- 지연된 프로젝트일시 -->
										<c:if test="${detailList.proj_delay == 'Y' && detailList.proj_status == '진행'}">
											<span class="px-3" style="color:#C20000"><i class='bx bx-error'></i> 지연된 프로젝트입니다.</span>
										</c:if>
										<!-- 프로젝트 제목 -->
										<div class="project-subject">
											<span class="project-subject-left">
												<span class="py-2 px-3 fs-4" style="max-width:740px;">${detailList.proj_subject}</span>
												<c:choose>
												    <c:when test="${detailList.emp_id == sessionScope.loginInfo.getEmp_id()}">
												        <span class="button">
												            <button type="button" id="project-update-move" class="btn btn-sm btn-secondary">수정</button>
												            <button type="button" id="project-del" class="btn btn-sm btn-secondary">삭제</button>
												        </span>
												    </c:when>
												    <c:otherwise>
														<c:forEach var="projT" items="${damchamList}">
														    <c:if test="${projT.projT_contact == 1 && sessionScope.loginInfo.getEmp_id() eq projT.emp_id}">
														        <span class="button">
														            <button type="button" id="project-update-move" class="btn btn-sm btn-secondary">수정</button>
														        </span>
														    </c:if>
														</c:forEach>
												    </c:otherwise>
												</c:choose>
												<!-- 여기까지 -->
											</span>
											<span class="project-subject-right">
									
									<c:choose>
									    <c:when test="${detailList.emp_id == sessionScope.loginInfo.getEmp_id()}">
												<select id="selectpickerBasic" class="selectpicker" data-style="btn-default" onchange="upStatus()">
												    <option ${detailList.proj_status eq '대기' ? 'selected' : ''} value="대기">대기</option>
												    <option ${detailList.proj_status eq '진행' ? 'selected' : ''} value="진행">진행중</option>
												    <option ${detailList.proj_status eq '완료' ? 'selected' : ''} value="완료">완료</option>
												</select>
									    </c:when>
									    <c:otherwise>
										<c:forEach var="projT" items="${damchamList}">
										    <c:if test="${projT.projT_contact == 1 && sessionScope.loginInfo.getEmp_id() eq projT.emp_id}">
												<select id="selectpickerBasic" class="selectpicker" data-style="btn-default" onchange="upStatus()">
												    <option ${detailList.proj_status eq '대기' ? 'selected' : ''} value="대기">대기</option>
												    <option ${detailList.proj_status eq '진행' ? 'selected' : ''} value="진행">진행중</option>
												    <option ${detailList.proj_status eq '완료' ? 'selected' : ''} value="완료">완료</option>
												</select>
										    </c:if>
										</c:forEach>
									    </c:otherwise>
									</c:choose>
									
									<span class="selected-stat">
										<c:if test="${detailList.proj_status eq '대기'}">
											<span class="badge bg-secondary">대기</span>
										</c:if>
										<c:if test="${detailList.proj_status eq '진행'}">
											<span class="badge bg-warning">진행중</span>
										</c:if>
										<c:if test="${detailList.proj_status eq '완료'}">
											<span class="badge bg-success">완료</span>
										</c:if>
									</span>
											</span>
										</div>
										
										<div class="project-entry px-3">
											<div class="project-entry-ls">
												<h5>생성자</h5>
												<div class="name">
													<span class="badge bg-primary">${detailList.emp_name}</span>
												</div>
											</div>
											<div class="project-entry-ls">
												<h5>담당자</h5>
												<div class="name">
											        <c:forEach var="projT" items="${damchamList}">
											            <c:if test="${projT.projT_contact == 1}">
											                <span class="badge bg-primary">${projT.emp_name}</span>
											            </c:if>
											        </c:forEach>
												</div>
											</div>
											<div class="project-entry-ls">
												<h5>참조자</h5>
												<div class="name">
											        <c:forEach var="projT" items="${damchamList}">
											            <c:if test="${projT.projT_contact == 2}">
											                <span class="badge bg-primary">${projT.emp_name}</span>
											            </c:if>
											        </c:forEach>
												</div>
											</div>
										</div>
										
										<div class="project-date px-3 py-3">
											<div class="card mb-4">
				                <div class="card-widget-separator-wrapper">
				                  <div class="card-body card-widget-separator">
				                    <div class="row gy-4 gy-sm-1">
				                      <div class="col-sm-6 col-lg-6">
				                        <div
				                          class="d-flex justify-content-between align-items-start border-end pb-3 pb-sm-0 card-widget-3">
				                          <div>
				                            <h5>시작일</h5>
				                            <div class="project-date-start">${detailList.proj_start}</div>
				                          </div>
				                        </div>
				                      </div>
				                      <div class="col-sm-6 col-lg-6">
				                        <div class="d-flex justify-content-between align-items-start">
				                          <div>
				                            <h5>종료일</h5>
				                            <div class="project-date-end">${detailList.proj_end}</div>
				                          </div>
				                        </div>
				                      </div>
				                    </div>
				                  </div>
				                </div>
              				</div>
										</div>
										
										<div class="project-content px-3 py-3">
											<div class="card mb-4">
												<div class="card-body">
													<h5>프로젝트 상세</h5>
													<div class="project-content-text">${detailList.proj_content}</div>
												</div>
											</div>
										</div>
										
										<hr class="my-3" />
										
										<div class="project-record px-3 py-3">
											<div class="col-xl-12">
			                  <div class="nav-align-top mb-4">
				                  <div class="project-record-nav">
				                    <ul class="nav nav-tabs" role="tablist">
				                      <li class="nav-item">
				                        <button
				                          type="button"
				                          class="nav-link active"
				                          role="tab"
				                          data-bs-toggle="tab"
				                          data-bs-target="#navs-top-home"
				                          aria-controls="navs-top-home"
				                          aria-selected="true">
				                          활동 기록
				                        </button>
				                      </li>
				                      <li class="nav-item">
				                        <button
				                          type="button"
				                          class="nav-link"
				                          role="tab"
				                          data-bs-toggle="tab"
				                          data-bs-target="#navs-top-messages"
				                          aria-controls="navs-top-messages"
				                          aria-selected="false">
				                          첨부 파일
				                        </button>
				                      </li>
				                    </ul>
				                   	<button 
				                   	type="button" 
				                   	class="btn btn-primary" 
				                   	style="margin-bottom:1rem;"
				                   	data-bs-toggle="modal" 
				                   	data-bs-target="#project-modal-add" >활동 기록 작성</button>
				                   </div>
			                    <div class="tab-content" style="z-index:2">
			                    
			                      <div class="tab-pane fade show active" id="navs-top-home" role="tabpanel"> <!-- 활동기록 영역 -->
			                      	<div class="fs-5 py-3">활동 기록</div>
			                      	<div id="projRList"></div>
			                      </div>
			                      
			                      <div class="tab-pane fade" id="navs-top-messages" role="tabpanel"> <!-- 첨부파일 영역 -->
			                      	<div class="fs-5 py-3">첨부 파일</div>
			                      	<div id="fileAll"></div>
			                      	
			                      </div>
			                      
			                    </div>
			                  </div>
			                </div>
										</div>
										
										<div class="row p-sm-3">
										</div>
									   
									</div>
									<!-- /프로젝트 생성/디테일/수정 -->
									
									<!-- modal -->
								<!-- 활동 기록 작성 모달 -->
					<div class="modal fade text" id="project-modal-add" tabindex="-1" aria-hidden="true">
						<div class="modal-dialog modal-dialog-centered1 modal-simple modal-add-new-cc">
							<div class="modal-content p-3 p-md-5">
								<div class="modal-body">
								<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
								<div class="text-start mb-4">
									<h4>활동 기록 작성</h4>
								</div>
								<div class="d-flex align-items-center mb-sm-0 mb-3 m-4">
									<div class="avatar avatar-md me-2">
										<img src="/file/employee/${Mephoto.new_file_name}" alt="${sessionScope.loginInfo.getEmp_name()}" class="rounded-circle">
									</div>
									<div class="flex-grow-1 ms-1">
										<input id="projRW_id" type="hidden" value="${sessionScope.loginInfo.getEmp_id()}"/>
										<span class="fs-5">${sessionScope.loginInfo.getEmp_name()}</span> <!-- 활동기록 작성하는 사람의 닉네임 -->
									</div>
								</div>
											
								<div class="card-body">
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
									<div id="snow-editor"></div>
								</div>
								</div>
								
								<div class="fs-5 m-3">파일 첨부</div>
								<input class="form-control mx-4" type="file" id="formFileW" multiple/>
											
								<div class="col-12 text-center">
								<button
									id="submitRWcancel"
									type="reset"
									class="btn btn-label-secondary btn-reset mt-3"
									data-bs-dismiss="modal"
									aria-label="Close">
									취소
								</button>
								<button id="submitRW" type="button" class="btn btn-primary me-sm-3 me-1 mt-3 apv-doc-select">작성</button>
								</div>
								</div>
							</div>
						</div>
					</div>
		              <!--/ 활동 기록 작성 모달 -->
		              
		               <!--활동 기록 수정 모달 -->
					<div class="modal fade text" id="project-modal-update" tabindex="-1" aria-hidden="true">
						<div class="modal-dialog modal-dialog-centered1 modal-simple modal-add-new-cc">
							<div class="modal-content p-3 p-md-5">
								<div class="modal-body">
									<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
									<div class="text-start mb-4">
										<h4>활동 기록 수정</h4>
									</div>
									<div class="d-flex align-items-center mb-sm-0 mb-3 m-4">
										<div class="avatar avatar-md me-2">
											<img src="/file/employee/${Mephoto.new_file_name}" alt="${sessionScope.loginInfo.getEmp_name()}" class="rounded-circle"> <!-- 수정 프로필 이미지 -->
										</div>
										<div class="flex-grow-1 ms-1">
											<input id="projRU_id" type="hidden" value=""/>
											<input id="projRU_idx" type="hidden" value=""/>
											<span id="projRU_name" class="fs-5"></span>
										</div>
									</div>
											
									<div class="card-body">
										<div>
										<div id="update-toolbar">
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
										<div id="update-editor"></div>
										</div>
									</div>
									
									<div class="fs-5 m-3">파일 첨부</div>
									<input class="form-control mx-4" type="file" id="formFileU" multiple/>
									<div id="upRecordFile"></div>
											
									<div class="col-12 text-center">
										<button
										id="submitRUcancel"
										type="reset"
										class="btn btn-label-secondary btn-reset mt-3"
										aria-label="Close">
										취소
										</button>
										<button id="submitRU" type="button" class="btn btn-primary me-sm-3 me-1 mt-3 apv-doc-select">수정</button>
									</div>
								</div>
							</div>
						</div>
					</div>
		              <!--/ 활동 기록 수정 모달 -->
                  
                  <div class="app-overlay"></div>
                  
                </div>
              </div>
            </div>
            <jsp:include page="/views/todo_include.jsp" />
            <!-- / Project Content -->
            <div class="content-backdrop fade"></div>
          </div>
          <!-- Content wrapper -->
        </div>
        <!-- / Layout page -->
      </div>
      <!-- Overlay -->
      <div class="layout-overlay layout-menu-toggle"></div>
      <div class="drag-target"></div>
    </div>
    <!-- / Layout wrapper -->

    <!-- Core JS -->
    <!-- build:js assets/vendor/js/core.js -->

    <script src="../../assets/vendor/libs/jquery/jquery.js"></script>
    <script src="../../assets/vendor/libs/popper/popper.js"></script>
    <script src="../../assets/vendor/js/bootstrap.js"></script>
    <script src="../../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="../../assets/vendor/libs/hammer/hammer.js"></script>
    <script src="../../assets/vendor/libs/i18n/i18n.js"></script>
    <script src="../../assets/vendor/libs/typeahead-js/typeahead.js"></script>
    <script src="../../assets/vendor/js/menu.js"></script>

    <!-- endbuild -->

    <!-- Vendors JS -->
    <script src="../../assets/vendor/libs/bootstrap-maxlength/bootstrap-maxlength.js"></script>
    <script src="../../assets/vendor/libs/bootstrap-select/bootstrap-select.js"></script>
    <script src="../../assets/vendor/libs/quill/katex.js"></script>
    <script src="../../assets/vendor/libs/quill/quill.js"></script>
    <script src="../../assets/vendor/libs/sweetalert2/sweetalert2.js"></script>

    <!-- Main JS -->
    <script src="../../assets/js/main.js"></script>

    <!-- Page JS -->
    <script src="../../assets/js/app-chat.js"></script>
    <script src="../../assets/js/forms-editors.js"></script>
    
    <!-- Header -->
    <script src="../../assets/js/header.js"></script>
    
    <!-- custom JS -->
    <script>
    
    $('#project-update-move').on('click',function(){
    	var projIdx = ${detailList.proj_idx};
    	location.href="../project/project_update.go?proj_idx="+projIdx;
    });
    
    // 프로젝트 삭제
    $('#project-del').on('click', function(){
    	var projIdx = ${detailList.proj_idx};
 		Swal.fire({
	        text: '프로젝트를 삭제하시겠습니까?',
	        icon: 'warning',
	        showCancelButton: true,
	        confirmButtonText: 'OK',
	        customClass: {
	        	confirmButton: 'btn btn-primary me-3',
	        	cancelButton: 'btn btn-label-secondary'
	        },
	        buttonsStyling: false
	    }).then(function(result) {
	    	if (result.isConfirmed) {
				$.ajax({
		    		type: 'post',
		    		url: '/project/project_del.do',
		    		data: {projIdx: projIdx},
		    		dataType: 'json',
		    		success: function (data) {
		    			console.log(data);
		    			location.href="../project/project_main.go";
		    		},
		    		error: function (e) {
		    			console.log(e);
		    		}
		    	});		    	
	    	}
	    });
    });
    
	// 내가 추가한 에디터 초기화 및 내용가져오기
	(function () {
		// Snow Theme
		// --------------------------------------------------------------------
		const snowEditor = new Quill('#snow-editor', {
			bounds: '#snow-editor',
			modules: {
			formula: true,
			toolbar: '#snow-toolbar'
			},
			theme: 'snow',
			placeholder: '내용을 입력하세요'
		});
		  
		$('#submitRW').click(function() {
			// var content = snowEditor.root.innerHTML; // <p>내용</p> 이런식으로 전체를 가져옴
			var content = snowEditor.getText();
			var projIdx = ${detailList.proj_idx};
			var projRW_id = $('#projRW_id').val(); // 활동기록 작성 emp_id
			var fileInput = document.getElementById('formFileW');
			// 선택된 파일들
			var files = fileInput.files;
			var formData = new FormData();
			
			// 내용이 비어있을 경우 알림
			if (content.trim() === '') {
	        	Swal.fire({
	    	        text: '내용을 입력하세요.',
	    	        icon: 'warning',
	    	        customClass: {
	    	            confirmButton: 'btn btn-primary'
	    	        },
	    	        buttonsStyling: false
	    	    })
		        return; // 이후의 코드 실행을 막기 위해 함수를 종료
			}else{
				console.log('활동기록 proj_idx: ',projIdx);
				console.log('활동기록 emp_id:', projRW_id);
				console.log('활동기록 작성내용:', content);
				// 선택된 파일들에 대한 처리
				formData.append('projIdx', projIdx);
				formData.append('projRW_id', projRW_id);
				formData.append('content', content);
				if (files.length > 0) {
				    for (var i = 0; i < files.length; i++) {
				        formData.append('files[]', files[i]);
				        console.log('파일들:',files[i]);
				    }
			    }
				
				$.ajax({
					type: 'POST',
					url: '/project/projectRWrite.do',
					data: formData,
					processData: false,
					contentType: false,
					success: function (data) {
						console.log(data);
						snowEditor.setText(''); // 내용 초기화
						fileInput.value = '';   // 파일 선택값 초기화
						$('#project-modal-add').modal('hide');
						projRList();
						projAllFile();
						projList(whatlist);
					},
					error: function (e) {
						console.log(e);
						alert('작성에 실패했습니다.');
						$('#project-modal-add').modal('hide');
					}
				});
				
			}
		});
		$('#submitRWcancel').click(function() {
			console.log("활동기록 작성 취소버튼 클릭");
			snowEditor.setText(''); // 내용 초기화
			var fileInput = document.getElementById('formFileW');
			if(fileInput.value != ''){
				fileInput.value = '';   // 파일 선택값 초기화
			}
		});
	})();
	
	// 업데이트 에디터 모달
	var snowEditorup;
	var UpRecordContent = '';
	function upProjRB(projR_idx){
		console.log('활동기록 수정버튼 클릭시 idx:',projR_idx);
		
		$.ajax({
    		type: 'get',
    		url: 'projectRData.do',
    		data: {projR_idx: projR_idx},
    		dataType: 'json',
    		success: function (data) {
    			console.log(data);
    			console.log('데이터:',data.record.projR_content);
    			UpRecordContent = data.record.projR_content;
    			snowEditorup.setText(UpRecordContent);
    			$('#projRU_idx').val(data.record.projR_idx);
    			$('#projRU_id').val(data.record.emp_id);
    	        $('#projRU_name').text(data.record.emp_name);
    			projRFData(data);
    		},
    		error: function (e) {
    			console.log(e);
    		}
    	});
   	}
	
	function projRFData(obj){
        var content = '';
        var totalItems = obj.recordFile.length;
        console.log(totalItems);
        
        if (totalItems === 0){
        }else{
        	obj.recordFile.forEach(function (item){
            	content += '<div id="fileDiv_'+item.file_idx+'" class="mx-4 border my-2" style="overflow: hidden;">';
			    content += '<div style="float: left;">';
				content += '<i class="bx bx-file"></i>';
				content += '<span class="align-middle ms-1">'; 
				content += '<a>'+item.ori_file_name+'</a>';
			    content += '</span>';
			    content += '</div>';
			    content += '<button onclick="delFile('+item.file_idx+')" class="btn p-0" type="button" style="float: right; margin-right:5px;"><i class="bx bx-trash"></i></button>';
				content += '</div>';
        	});
        }
        $('#upRecordFile').empty();
        $('#upRecordFile').append(content);
    }
	// 활동기록 수정에서 삭제할 파일 담는 배열 및 이벤트
	var delUpfile = [];
	function delFile(file_idx) {
	    delUpfile.push(file_idx);
	    $('#fileDiv_' + file_idx).hide();
	}
	
    (function () {
    	  // Snow Theme
    	  // --------------------------------------------------------------------
    	  // var UpRecordContent = '여기에 초기 내용을 넣어주세요.';
    	  snowEditorup = new Quill('#update-editor', {
    	    bounds: '#update-editor',
    	    modules: {
    	      formula: true,
    	      toolbar: '#update-toolbar'
    	    },
    	    theme: 'snow'
    	  });
    	  
    	  $('#submitRU').click(function() {
  			// var content = snowEditor.root.innerHTML; // <p>내용</p> 이런식으로 전체를 가져옴
  			var projIdx = ${detailList.proj_idx};
  			var projR_idx = $('#projRU_idx').val();
  			var emp_id = $('#projRU_id').val();
  			var content = snowEditorup.getText();
  			var fileInput = document.getElementById('formFileU');
  			// 선택된 파일들
  			var files = fileInput.files;
  			var formData = new FormData();
  			
  			// 내용이 비어있을 경우 알림
  			if (content.trim() === '') {
	        	Swal.fire({
	    	        text: '내용을 입력하세요.',
	    	        icon: 'warning',
	    	        customClass: {
	    	            confirmButton: 'btn btn-primary'
	    	        },
	    	        buttonsStyling: false
	    	    })
		        return;
  			}else{
  				//console.log('활동기록 업데이트시 삭제할 파일들:',delUpfile);
  				//console.log('활동기록 업데이트 작성내용:', content);
  				//console.log('활동기록 업데이트 R_idx값:', projR_idx);
  				formData.append('content', content);
  				formData.append('projR_idx', projR_idx);
  				formData.append('projIdx', projIdx);
  				formData.append('emp_id', emp_id);
  				if (files.length > 0) {
  				    for (var i = 0; i < files.length; i++) {
  				        formData.append('files[]', files[i]);
  				        // console.log('활동기록 업데이트시 추가 파일들:',files[i]);
  				    }
  			    }
  				formData.append('delUpfile', JSON.stringify(delUpfile));
  				
  		 		Swal.fire({
  			        text: '수정을 하시겠습니까?',
  			        icon: 'success',
  			        showCancelButton: true,
  			        confirmButtonText: 'OK',
  			        customClass: {
  			        	confirmButton: 'btn btn-primary me-3',
  			        	cancelButton: 'btn btn-label-secondary'
  			        },
  			        buttonsStyling: false
  			    }).then(function(result) {
  			    	if (result.isConfirmed) {						
		  				$.ajax({
		  					type: 'POST',
		  					url: '/project/projectRUpdate.do',
		  					data: formData,
		  					processData: false,
		  					contentType: false,
		  					success: function (data) {
		  						console.log(data);
		  						snowEditorup.setText(''); // 내용 초기화
		  						fileInput.value = '';   // 파일 선택값 초기화
		  						$('#project-modal-update').modal('hide');
		  						projRList();
		  						projAllFile();
		  						projList(whatlist);
		  						delUpfile = [];
		  					},
		  					error: function (e) {
		  						console.log(e);
		  						alert('작성에 실패했습니다.');
		  						$('#project-modal-update').modal('hide');
		  					}
		  				});
  			    	}
  			    });
  			}
  		});
  		$('#submitRUcancel').click(function() {
  			console.log("활동기록 작성 취소버튼 클릭");
  	 		Swal.fire({
  		        text: '수정을 취소하시겠습니까?',
  		        icon: 'warning',
  		        showCancelButton: true,
  		        confirmButtonText: 'OK',
  		        customClass: {
  		        	confirmButton: 'btn btn-primary me-3',
  		        	cancelButton: 'btn btn-label-secondary'
  		        },
  		        buttonsStyling: false
  		    }).then(function(result) {
  		    	if (result.isConfirmed) {
		  			snowEditorup.setText(''); // 내용 초기화
					delUpfile = [];
		  			var fileInput = document.getElementById('formFileU');
		  			if(fileInput.value != ''){
		  				fileInput.value = '';   // 파일 선택값 초기화
		  			}
		  			$('#project-modal-update').modal('hide'); // 이부부분
  		    	}
  		    });
  		});
    })();
    </script>
    <script> // 내가 추가한 스크립트
    projRList();
    projAllFile();
    
    var whatlist = '';
    projList(whatlist);
    
    function allButton(){
    	whatlist = '';
    	projList(whatlist);
    }
    function worksButton(){
    	whatlist = '진행';
    	projList(whatlist);
    }
	function waitButton(){
    	whatlist = '대기';
    	projList(whatlist);
    }
	function endButton(){
		whatlist = '완료';
		projList(whatlist);
	} 
	
	$('#project-add-move').on('click',function(){
    	location.href="../project/project_add.go";
    });
	
	function projList(whatlist){
    	$.ajax({
    		type: 'get',
    		url: 'projList.do',
    		data: {whatlist: whatlist},
    		dataType: 'json',
    		success: function (data) {
    			console.log(data);
    			projListdraw(data);
    		},
    		error: function (e) {
    			console.log(e);
    		}
    	});
    }
    
    function projListdraw(obj){
        var content = '';
        var totalItems = obj.list.length;
        console.log(totalItems);
        
        if (totalItems === 0){
        	content = '<li style="text-align:center">프로젝트가 없습니다.</li>';
        }else{
        	obj.list.forEach(function (item){
        		content += '<li class="chat-contact-list-item pro" id="'+item.proj_idx+'">';
        		content += '<a class="d-flex align-items-center">';
        		content += '<div class="chat-contact-info flex-grow-1 ms-3">';
        		content += '<h6 class="chat-contact-name text-truncate m-0">'+item.proj_subject+'</h6>';
        		content += '<p class="text-muted mb-auto">'+item.proj_start+'~'+item.proj_end+'</p>';
        		content += '<p class="chat-contact-status text-truncate mb-0 text-muted">'+item.dam_name+'</p>';
        		content += '</div>';
        		content += '<small class="text-muted mb-auto">'+item.proj_status+'</small>';
        		content += '</a>';
        		content += '</li>';
        	});
        }
        $('#projlist').empty();
        $('#projlist').append(content);
        
        $('.chat-contact-list-item.pro').on('click', function () {
            // 모든 li에서 active 클래스 제거
            $('.chat-contact-list-item.pro').removeClass('active');
            // 현재 클릭한 li에 active 클래스 추가
            $(this).addClass('active');
            
            var projIdx = $(this).attr('id');
            console.log('projIdx:', projIdx);
            window.location = "project_detail.go?proj_idx="+projIdx; // 보류보류
        });
    }
    
    // 활동기록 리스트
    function projRList(){
    	var proj_idx = ${detailList.proj_idx};
    	
    	$.ajax({
    		type: 'get',
    		url: 'projectRList.do',
    		data: {proj_idx: proj_idx},
    		dataType: 'json',
    		success: function (data) {
    			console.log(data);
    			projRListdraw(data);
    		},
    		error: function (e) {
    			console.log(e);
    		}
    	});
    }
    
    function projRListdraw(obj){
        var content = '';
        var totalItems = obj.list.length;
        var empId = "${sessionScope.loginInfo.getEmp_id()}";
        console.log(totalItems);      
        
        if (totalItems === 0){
        	content = '<li style="text-align:center">활동기록이 없습니다.</li>';
        }else{
        	obj.list.forEach(function (item){
        		projR_date = new Date(item.projR_date).toLocaleString();
        		content += '<div class="card email-card-prev mx-sm-1 mx-3 border my-4">';
        		
        		content += '<div class="card-header d-flex justify-content-between align-items-center flex-wrap">';
        		content += '<div class="d-flex align-items-center mb-sm-0 mb-3">';
        		content += '<div class="avatar avatar-md me-2">';
        		content += '<img src="/file/employee/'+item.pro_file_name+'" alt="'+item.emp_name+'" class="rounded-circle">'; // 동그라미 사진부분
        		content += '</div>';
        		content += '<div class="flex-grow-1 ms-1">';
        		content += '<span class="fs-5">'+item.emp_name+'</span>';
        		content += '<span class="fs-6 date">'+projR_date +'</span>';
        		content += '</div>';
        		content += '</div>';
        		
        		content += '<div class="d-flex align-items-center">';
        		if(item.projR_upstate == 'Y'){        			
        			content += '<span class="fs-6 date">수정됨</span>';
        		}
        		if(item.emp_id == empId){
	        		content += '<button onclick="upProjRB('+item.projR_idx+')" class="btn p-0" type="button" data-bs-toggle="modal" data-bs-target="#project-modal-update">';
	        		content += '<i class="bx bxs-edit cursor-pointer me-2 bx-sm"></i>';
	        		content += '</button>';
	        		
	        		content += '<button onclick="delProjRB('+item.projR_idx+')" class="btn p-0" type="button">';
	        		content += '<i class="bx bx-trash bx-sm me-3"></i>';
	        		content += '</button>';        			
        		}
        		
        		content += '</div>';
        		content += '</div>';
        		
        		content += '<div class="card-body">'+item.projR_content;
        		if(item.new_file_name != null){
        			content += '<hr/>';
	        		content += '<p class="mb-2">첨부파일</p>';
	        		
	        		var newFileNames = item.new_file_name.split(','); // 스플릿으로 여러개의 파일쪼개기
	                var oriFileNames = item.ori_file_name.split(',');
	        		
    	    		newFileNames.forEach(function (newFileName, index) { // 스플릿으로 쪼갠 데이터들 각각뿌려주기
                        var oriFileName = oriFileNames[index].trim();
                        
		        		content += '<div class="cursor-pointer">';
		        		content += '<i class="bx bx-file"></i>';
	    	    		content += '<span class="align-middle ms-1">';
                        content += '<a href="/file/project/' + newFileName.trim() + '" download="'+oriFileNames+'">' + oriFileName + '</a>';
		        		content += '</span>';
	    	    		content += '</div>';
    	    		});
        		}
        		content += '</div>';
        		content += '</div>';
        	});
        }
        $('#projRList').empty();
        $('#projRList').append(content);
    }
    
    // 프로젝트의 모든 파일 가져오기
    function projAllFile(){    	
    	var proj_idx = ${detailList.proj_idx};
    	
   		$.ajax({
   			type: 'get',
   			url: 'projectAllFile.do',
   			data: {proj_idx: proj_idx},
   			dataType: 'json',
   			success: function (data){
   				console.log(data);
   				projAllFiledraw(data);
   			},
   			error: function (e){
   				console.log(e);
   			}
   		});
    }
    
    // 프로젝트의 모든 파일 그려주기
    function projAllFiledraw(obj){
        var content = '';
        var totalItems = obj.list.length;
        console.log(totalItems);
        
        if (totalItems === 1 && obj.list[0].ori_file_name == null){
        	content = '<li style="text-align:center">첨부 파일이 없습니다.</li>';
        }else{
        	obj.list.forEach(function (item){
        		if(item.ori_file_name != null){
	        		content += '<div class="card email-card-prev mx-sm-1 mx-3 border my-2" >';
	                content += '<div class="cursor-pointer">';
	                content += '<i class="bx bx-file"></i>';
	                content += '<span class="align-middle ms-1">';
	                content += '<a href="/file/project/' + item.new_file_name + '" download="'+item.ori_file_name+'">' + item.ori_file_name + '</a>';
					content += '</span>';
	                content += '</div>';
	            	content += '</div>';
        		}
        	});
        }
        $('#fileAll').empty();
        $('#fileAll').append(content);
    }
    
   	// 활동기록 삭제
    function delProjRB(projR_idx){
    	console.log("삭제할 활동기록 idx:",projR_idx);
    	
 		Swal.fire({
 		        text: '활동기록을 삭제 하시겠습니까?',
 		        icon: 'warning',
 		        showCancelButton: true,
 		        confirmButtonText: 'OK',
 		        customClass: {
 		        	confirmButton: 'btn btn-primary me-3',
 		        	cancelButton: 'btn btn-label-secondary'
 		        },
 		        buttonsStyling: false
 		    }).then(function(result) {
 		    	if (result.isConfirmed) {
		    		$.ajax({
		    			type: 'post',
		    			url: 'projectRdel.do',
		    			data: {projR_idx: projR_idx},
		    			dataType: 'json',
		    			success: function (data){
		    				console.log(data);
		    				projRList();
		    				projAllFile();
		    			},
		    			error: function (e){
		    				console.log(e);
		    			}
		    		});
 		    	}
 		    });
    }
    
    // 상태 변경 (완료,진행,대기)
    function upStatus(){
		var selectStatus = $("#selectpickerBasic").val();
		console.log("선택한 상태: "+selectStatus);
		
		$.ajax({
			type: 'post',
			url: 'projUpStatus.do',
			data: {
				projIdx: ${detailList.proj_idx},
				projStatus: selectStatus
			},
			dataType: 'json',
			success: function (data) {
				console.log(data);
				location.reload();
			},
			error: function (e) {
				console.log(e);
			}
		});
    }
    
    document.addEventListener("DOMContentLoaded", function() {
        scrollToTop();
    });

    function scrollToTop() {
        var chatHistory = document.querySelector('.chat-history-body');
        chatHistory.scrollTop = 0;
    }
    
    </script>
  </body>
</html>
