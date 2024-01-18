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
    <link rel="icon" type="image/x-icon" href="/assets/img/favicon/favicon.ico" />
    
    <!-- bootstrap 아이콘 -->
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
		<!-- pretendard 폰트 -->
		<link rel="stylesheet" type="text/css" href='https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css'>

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
      rel="stylesheet" />

    <!-- Icons -->
    <link rel="stylesheet" href="/assets/vendor/fonts/boxicons.css" />
    <link rel="stylesheet" href="/assets/vendor/fonts/fontawesome.css" />
    <link rel="stylesheet" href="/assets/vendor/fonts/flag-icons.css" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="/assets/vendor/css/rtl/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="/assets/vendor/css/rtl/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="/assets/css/demo.css" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />
    <link rel="stylesheet" href="/assets/vendor/libs/typeahead-js/typeahead.css" />
    <link rel="stylesheet" href="/assets/vendor/libs/select2/select2.css" />
    <link rel="stylesheet" href="/assets/vendor/libs/flatpickr/flatpickr.css" />
    <link rel="stylesheet" href="/assets/vendor/libs/jquery-timepicker/jquery-timepicker.css" />
		<link rel="stylesheet" href="/assets/vendor/libs/datatables-bs5/datatables.bootstrap5.css" />
    <link rel="stylesheet" href="/assets/vendor/libs/datatables-responsive-bs5/responsive.bootstrap5.css" />
    <link rel="stylesheet" href="/assets/vendor/libs/datatables-checkboxes-jquery/datatables.checkboxes.css" />
    <link rel="stylesheet" href="/assets/vendor/libs/datatables-buttons-bs5/buttons.bootstrap5.css" />
    <link rel="stylesheet" href="/assets/vendor/libs/bootstrap-select/bootstrap-select.css" />
    <link rel="stylesheet" href="/assets/vendor/libs/quill/typography.css" />
    <link rel="stylesheet" href="/assets/vendor/libs/quill/katex.css" />
    <link rel="stylesheet" href="/assets/vendor/libs/quill/editor.css" />
    <link rel="stylesheet" href="/assets/vendor/libs/sweetalert2/sweetalert2.css" />
    <link rel="stylesheet" href="/assets/vendor/libs/jstree/jstree.css" />
    
    
    
		<!-- Row Group CSS -->
    <link rel="stylesheet" href="/assets/vendor/libs/datatables-rowgroup-bs5/rowgroup.bootstrap5.css" />
    <!-- Form Validation -->
    <link rel="stylesheet" href="/assets/vendor/libs/@form-validation/umd/styles/index.min.css" />
	
    <!-- Page CSS -->

    <!-- Helpers -->
    <script src="/assets/vendor/js/helpers.js"></script>
    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Template customizer: To hide customizer set displayCustomizer value false in config.js.  -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="/assets/js/config.js"></script>
    
    <!-- custom CSS -->
    <style>

		hr{
			margin-top:0;
		}

		p{
			margin: 0;
		}
    button{
			background: inherit;
			border:none;
			box-shadow:none;
			border-radius:0;
			padding:0;
			overflow:visible;
			cursor:pointer;
			}
   
    .col-lg-4{
    	width:20%;
    }
    
    .col-lg-8{
     width:80%;
    }
    
    .mb-1{
    	margin-bottom:0.1rem !important;
    }
    
    h5{
    	font-family:pretendard;
    	font-weight:600;
    	margin: 1rem;
    }
    
    h4{
    	font-family:pretendard;
    	font-weight:600;
    }
    
    .apv-home{
    	color:#c20000;
    	margin-bottom:2rem;
    }
    
    .apv-title{
    	margin-top:0.125rem;
    } 
   
    .apv-menu{
    	margin-top: 1rem;
    }
    
    .align-middle{
    	font-family:pretendard;
    	font-weight:500;
    }
    
    .apv-form-menu{
    	display:flex;
    	justify-content: flex-end;
    }
    
    .apv-form-menu .apv-form-menu-cnt{
    	margin-left:1rem;
    	margin-bottom:1rem;
    }
    
    .card{
    	margin-bottom:3rem;
    	display:flex;
    }
    
    .btn.btn-secondary{
    	margin-top:1rem;
   		font-family:pretendard;
    	margin-bottom:0.625rem;
    }
    
    .table-content-right .text{
    	font-family:pretendard;
    	font-weight:600;
    	font-size:1rem;
    }
    
    
    /*휴가신청서*/
    
    .apv-form-vac{
    	margin: 1rem;
    	display:flex;
    	justify-content: center;
    }
    
    .apv-form-vac .table-header,
    .apv-form-vac .table-content{
    	width: 800px;
    	color: black;
    	background: white;
    	font-size: 12px;
    }
    
    .apv-form-vac .table-subject{
    	width: 300px;
	    padding: 3px !important;
	    border: 0px solid black;
	    height: 90px !important;
	    font-size: 22px;
	    font-weight: 600;
	    text-align: center;
	    vertical-align: middle;
    }
    
    .apv-form-vac .table-header-left{
    	width:250px;
    }
    
    .apv-form-vac .table-header-left-table{
	    border: 1px solid black;
	    font-size: 12px;
	    border-collapse: collapse !important;
    }
    
    .apv-form-vac .table-header-left-table-left{
    	width: 100px;
	    height: 22px;
	    vertical-align: middle;
	    border: 1px solid black;
	    text-align: center;
	    font-weight: bold;
	    background: rgb(221, 221, 221);
	    padding: 3px !important;
    }
    
    .apv-form-vac .table-header-left-table-right{
    	width: 150px;
	    height: 22px;
	    vertical-align: middle;
	    border: 1px solid black;
	    text-align: left;
	    padding: 3px !important;
    }
    
    .apv-form-vac .table-header-right{
			width: 500px;
	    text-align: right;
	    padding: 0px!important;
	    border: 0!important;
	    vertical-align: top !important;
    }
    
    .apv-form-vac .apv-sign{
    	display: inline-block;
    	margin-right: -1px;
    }
    
    .apv-form-vac .apv-sign-table{
    	border:1px solid black;
	    border-collapse: collapse;
    }
    
    .apv-form-vac .apv-sign-table tbody tr th{
    	width: 15px;
	    padding: 6px;
	    text-align: center;
	    word-break: break-word;
	    white-space: normal;
	    background: rgb(221, 221, 221);
    }
    
    .apv-form-vac .apv-sign-table tbody tr td{
			padding: 0!important;
    }
    
    .apv-form-vac .apv-sign-table-right tbody tr{
    	border-bottom:1px solid black;
    	border-left:1px solid black;
	    border-collapse: collapse;
    }
    
    .apv-form-vac .apv-sign-table-right tbody tr.last{
    	border-bottom:0;
    }
    
    
    .apv-form-vac .apv-sign-line{
    	height: 26px;
	    min-height: 26px;
    }
    
    .apv-form-vac .apv-sign-line-dept,
    .apv-form-vac .apv-sign-line-name,
    .apv-form-vac .apv-sign-line-date
     {
     	display: flex;
	    align-items: center;
	    justify-content: center;
	    flex-direction: column;
	    text-align: center;
	    overflow: hidden;
	    text-overflow: ellipsis;
	    white-space: nowrap;
	    width: 88px;
	    font-size: 12px;
	    padding: 2px 4px;
    }
    
    .apv-form-vac .apv-sign-line-date{
    	height:2.625rem;
    }
    
    .apv-form-vac .apv-sign-line-name{
    	height: 74px;
    	text-align: center;
    }
    
  
    
    /*table-reason*/
    
    .table-reason{
    	margin:1rem 0;
    }
    
    .table-upload .table-upload-left{
    	font-size: 14px;
	    font-weight: bold;
    }
    
    .table-reason .table-upload-left{
    	background: rgb(221, 221, 221);
	    padding: 5px;
	    border: 1px solid black;
	    height: 25px;
	    text-align: center;
	    color: rgb(0, 0, 0);
	    font-size: 14px;
	    font-weight: bold;
	    vertical-align: middle;
    }
    
    .table-reason .table-upload-right{
    	padding: 3px;
	    border: 1px solid black;
	    width: 700px;
	    height: 38px;
	    text-align: left;
	    color: rgb(0, 0, 0);
	    font-size: 12px;
	    vertical-align: middle;
	    background: rgb(255, 255, 255);
    }
    
    /*table-content*/
    
    .apv-form-vac .table-content-left{
    	background: rgb(221, 221, 221);
	    padding: 5px;
	    border: 1px solid black;
	    height: 25px;
	    text-align: center;
	    color: rgb(0, 0, 0);
	    font-size: 14px;
	    font-weight: bold;
	    vertical-align: middle;
    }
    
  
    
    .apv-form-vac .table-content-right{
    	padding: 3px;
	    border: 1px solid black;
	    width: 700px;
	    height: 38px;
	    text-align: left;
	    color: rgb(0, 0, 0);
	    font-size: 12px;
	    vertical-align: middle;
	    background: rgb(255, 255, 255);
    }
    
    .apv-form-vac .table-content-right.reason{
	    height: 282px;
    }
    
    .table-content-right.time .vac-time-input{
    	display:flex;
    	justify-content: space-between;
    	align-items: center
    }
    
    .table-content-right .form-vac-time-start,
    .table-content-right .form-vac-time-end{
    	display: inline-block;
    	width: 8.625rem;
    	margin-right:0.625rem;
    }
    
    .table-content-right .form-vac-time-end{
    	margin-left:0.625rem;
    }
    
    #timepicker-basic-before,
    #timepicker-basic-after{
    	display: inline-block;
    	width: 6.625rem;
    }
    
    .table-content-right.time .vac-time{
    	display: inline-block;
    	width: 3rem;
    }
    
    .table-upload{
    	width: 100%;
    	margin: 2rem 0;
    }
    
    .table-upload-left{
    	height: 26px;
	    width: 100px;
	    text-align: center;
	    color:black;
    }
    
    .table-upload-right .form-control{
    	display: inline-block;
    	width: 100%;
    }
    
    .apv-form-button{
    	display:flex;
    	justify-content: flex-end;
    	margin: 1rem 0;
    	font-family:pretendard;
    }
    
    .apv-form-button .btn-primary{
    	margin-right: 5.125rem;
    }
    
    .apv-form-button .btn-label-secondary{
    	margin-right:1rem;
    }
    
    .text-truncate{
    	font-family:pretendard;
    }
    
    /*modal*/
    .modal{
    	--bs-modal-width: 24.625rem;
    	font-family:pretendard;
    }
    
    
    .org-modal{
    	--bs-modal-width: 20rem;
    	font-family:pretendard;
    }
    
    .org-modal-body{
    	display:flex;
    }
    
    .org-modal-body .button{
    	display:flex;
    	flex-direction: column;
	    align-items: center;
	    justify-content: space-evenly;
    	
    }
    
    .modal .bx.bxs-file-blank{
    	color:#C20000;
    }
    
    .card.apv-modal-folder{
    	min-width: 15.625rem;
    }
    
    #the-canvas {
			  border: 1px solid black;
			  direction: ltr;
		}
		#org-list-body{
			padding: 1rem 0;
		}
		
		.org-list-dist{
			padding: 0.58rem 0.9375rem;
			border-bottom: 1px solid #d9dee3;
		}
		
		#apv-vac-time{
			display:none;
		}
		
		.your-custom-popup-class {
		  font-family:pretendard;
		}
		
		.apv_perm_bar{
			display:flex;
			justify-content: space-between;
			align-items: center;
	
		}
		


    </style>
    
    
  </head>

  <body>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
        <!-- Menu -->
					<jsp:include page="/views/header_menu.jsp" />
        <!-- / Menu -->

        <!-- Layout container -->
        <div class="layout-page">
        
        <!-- Navbar -->
					<jsp:include page="/views/header_navbar.jsp" />
        <!-- / Navbar -->

          <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
              <!-- <h4 class="py-3 mb-4">전자 결재</h4> -->

              <div class="row g-4">
                <!-- Navigation -->
                <div class="col-12 col-lg-4">
                  <div class="d-flex justify-content-between flex-column mb-3 mb-md-0">
                    <ul class="nav nav-align-left nav-pills flex-column">
                    
                    	<li class="nav-item mb-1">
                    		<a href="/approval/approval_main.go">
                    		<h4 class="apv-title">
                    			전자 결재
                    		</h4>
                    		</a>
                    	</li>
                    	
                    	<li class="nav-item mb-1">
                    		<button type="button" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#apv-modal">새 결재 작성</button>
                    	</li>
                    
                    	<li class="nav-item mb-1">
                    		<h5 class="apv-menu">
                    			<i class="menu-icon tf-icons bx bx-food-menu"></i>
                    			결재하기
                    		</h5>
                    	</li>
                      <li class="nav-item mb-1">
                        <a class="nav-link" href="/approval/getApproval_list.go">
                          <span class="align-middle">결재 요청 받은 문서</span>
                        </a>
                      </li>
                      <li class="nav-item mb-1">
                        <a class="nav-link" href="/approval/compApproval_list.go">
                          <span class="align-middle">결재 완료한 문서</span>
                        </a>
                      </li>
                      <li class="nav-item mb-1">
                        <a class="nav-link" href="/approval/viewApproval_list.go">
                          <span class="align-middle">열람 가능한 문서</span>
                        </a>
                      </li>
                      <li class="nav-item mb-1">
                    		<h5 class="apv-menu">
                    			<i class="menu-icon tf-icons bx bx-food-menu"></i>
                    			상신한 결재
                    		</h5>
                    	</li>
                      <li class="nav-item mb-1">
                        <a class="nav-link" href="/approval/requestApproval_list.go">
                          <span class="align-middle">결재 요청한 문서</span>
                        </a>
                      </li>
                      <li class="nav-item mb-1">
                        <a class="nav-link" href="/approval/finishApproval_list.go">
                          <span class="align-middle">결재 완료된 문서</span>
                        </a>
                      </li>
                      <li class="nav-item mb-1">
                        <a class="nav-link" href="/approval/temporaryApproval_list.go">
                          <span class="align-middle">임시 저장된 문서</span>
                        </a>
                      </li>
                      <li class="nav-item mb-1">
                        <a class="nav-link" href="/approval/rejectedApproval_list.go">
                          <span class="align-middle">반려된 문서</span>
                        </a>
                      </li>
                    </ul>
                  </div>
                </div>
                <!-- /Navigation -->

                <!-- Options -->
                <div class="col-12 col-lg-8 pt-4 pt-lg-0">
                	<h4 class="apv-home">결재 상세보기</h4>
                	
                	<c:if test="${apv.apv_stmt == '완료'}">
	                	<div class="card" id="apv_perm_card">
	                		<div class="apv_perm_bar">
	                			<h5>열람자 추가</h5>
		                		<span class="text-truncate" style="margin-right:2rem;">
							           	<button type="button" onclick="addPerm()" class="apv-form-menu-cnt org-chart" data-bs-toggle="modal" data-bs-target="#apv-org-modal">
							           			<i class='bx bx-plus'></i> 추가
							           	</button>
							          </span>
						          </div>
						          <hr/>
						          
						          <p class="fw-medium me-2 creator-list-container">
										    <ul id="creator-list-ul">
										        <c:forEach var="apvPermList" items="${apvPermList}" varStatus="loop">
										            <div>
										                <input class="permEmp_id" type="hidden" value="${apvPermList.emp_id}" />
										                ${apvPermList.emp_name} ${apvPermList.grade_name}(${apvPermList.dept_name})
										                <i class='bx bx-x' onclick="delPerm(this)"></i>
										            </div>
										        </c:forEach>
										    </ul>
										</p>
						          
										</div>
									</c:if>
                	
                	<div class="apv-form-menu">
                	
	                	<c:choose>
										  <c:when test="${apv.apv_stmt == '진행중' && apv.emp_id == emp_id}">
										  	<input type="hidden" id="reqEmp_id" value="${apv.emp_id}">
											  	<c:choose>
													  <c:when test="${apv_line_info[0].apv_history_date == null}">
													  	<span class="text-truncate">
					                			<button type="button" class="apv-form-menu-cnt apv-del">
					                				<i class='bx bxs-x-circle'></i> 상신취소
					                			</button>
					                		</span>
													  </c:when>
													  <c:when test="${apv_line_info[0].apv_history_stmt != null}">
														  <span class="text-truncate">
					                			<button type="button" class="apv-form-menu-cnt org-chart" data-bs-toggle="modal" data-bs-target="#apv-org-modal">
					                				<i class='bx bx-plus'></i> 결재선 추가
					                			</button>
				                		</span>
													  </c:when>
													</c:choose>
													
										  </c:when>
										  <c:when test="${apv.apv_stmt == '완료'}">
					               <span class="text-truncate">
		                			<button type="button" id="confirm-text" class="apv-form-menu-cnt approval-preview">
		                			<i class='bx bxs-file-blank'></i> pdf 저장
		                			</button>
		                		</span>
										  </c:when>
										</c:choose>
										
                	</div>
                  <div class="tab-content p-0">
                    <!-- Store Details Tab -->
                    <div class="tab-pane fade show active" id="store_details" role="tabpanel">
        
				              <div class="card">
					              <form action="/approval/getApproval_detail.do" method="post" enctype="multipart/form-data">
					              	<div class="apv-form-vac">
					              	<div>
						              		<!-- 사업기안서/휴가신청서 -->
						              		<c:choose>
														    <c:when test="${apv.apv_code == 'BFVC'}">
														        <jsp:include page="apv_form_vac.jsp" />
														        <input type="hidden" name="apv_code" value="BFVC"/>
														    </c:when>
														    <c:when test="${apv.apv_code == 'BSPN'}">
														        <jsp:include page="apv_form_biz.jsp" />
														        <input type="hidden" name="apv_code" value="BSPN"/>
														    </c:when>
														    <c:when test="${apv.apv_code == 'AFVC'}">
														        <jsp:include page="apv_form_vac.jsp" />
														        <input type="hidden" name="apv_code" value="AFVC"/>
														    </c:when>
														</c:choose>
						              		
						              		<c:if test="${form_type == 'detail' && apv.apv_history_stmt != null}">
							              		<table class="table-reason">
							              			<tbody>
							              				<tr>
							              				
							              				<c:choose>
																	    <c:when test="${apv.apv_history_stmt == '결재'}">
																	    	<td class="table-upload-left">결재 사유</td>
								              					<td class="table-upload-right">
								              						${apv.apv_history_reason}
								              					</td>
																	    </c:when>
																	    <c:when test="${apv.apv_history_stmt == '반려'}">
																	    	<td class="table-upload-left">반려 사유</td>
								              					<td class="table-upload-right">
								              						${apv.apv_history_reason}
								              					</td>
																	    </c:when>
																		</c:choose>
							              				
							              				</tr>
							              			</tbody>
							              		</table>
						              		</c:if>
						              		
						              		<table class="table-upload">
						              			<tbody>
						              				<tr>
						              					<td class="table-upload-left">파일 첨부</td>
						              					<td class="table-upload-right">
						              						<!-- <input class="form-control" type="file" id="formFile" name="files" /> -->
						              						<div id="fileAll"></div>
						              					</td>
						              				</tr>
						              			</tbody>
						              		</table>
						              		
					              </div>
					                </div>
							            <div class="pt-4 apv-form-button">
					                  <c:choose>
						                	<c:when test="${apv.apv_stmt == '진행중' && apv.apv_approver == emp_id}">
							                    <button type="button" class="btn btn-label-secondary" 
							                    	data-bs-toggle="modal" data-bs-target="#apv-stmt-modal" onclick="handleRejection()">반려</button>
							                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" 
							                    	data-bs-target="#apv-stmt-modal" onclick="handleApproval()">결재</button>
							                    <input type="hidden" name="apv_history_stmt" value="반려"/>
					                  	</c:when>
						                  <c:when test="${apv.apv_stmt == '반려'}">
						                  
						                  	<!-- <button type="button" class="btn btn-primary" data-bs-toggle="modal" 
							                    	data-bs-target="#apv-stmt-modal" onclick="handleApproval()">수정</button> -->
														  </c:when>
														</c:choose>
						              </div>
				                  
				                  <!-- 새 결제 작성 모달 -->
						              <div class="modal fade" id="apv-stmt-modal" tabindex="-1" aria-hidden="true">
						                <div class="modal-dialog modal-dialog-centered1 modal-simple modal-add-new-cc">
						                  <div class="modal-content p-3 p-md-5">
						                    <div class="modal-body p-2">
						                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						                      <div class="text-start mb-4">
						                        <h4 id="modal-title">결재</h4>
						                      </div>
						                      
							                      <div class="modal-body p-2">
							                      
			                                <div class="row">
			                                  <div class="col mb-3">
			                                    <label for="nameWithTitle" class="form-label">결재 문서명</label>
			                                    <div>
				                                    <c:choose>
																					    <c:when test="${apv.apv_code == 'BFVC'}">
																					        <span class="fs-5">연차 신청서</span>
																					    </c:when>
																					    <c:when test="${apv.apv_code == 'BSPN'}">
																					        <span class="fs-5">사업 기안서</span>
																					    </c:when>
																					    <c:when test="${apv.apv_code == 'AFVC'}">
																					        <span class="fs-5">사후 연차 신청서</span>
																					    </c:when>
																						</c:choose>
			                                    </div>
			                                  </div>
			                                </div>
			                                
			                                <div class="row">
			                                  <div class="col mb-3">
			                                    <label id="modal-label" for="nameWithTitle" class="form-label">결재 사유</label>
			                                    <div>
				                                    <textarea class="form-control" name="apv_history_reason"
																								id="exampleFormControlTextarea1" placeholder="내용을 입력하세요." 
																								rows="3" style="resize: none"></textarea>
			                                    </div>
			                                  </div>
			                                </div>
						
						                      <div class="col-12 text-center">
						                        <button type="submit" class="btn btn-primary me-sm-3 me-1 mt-3 apv-doc-select">확인</button>
						                        <button
						                          type="reset"
						                          class="btn btn-label-secondary btn-reset mt-3"
						                          data-bs-dismiss="modal"
						                          aria-label="Close">
						                          취소
						                        </button>
						                      </div>
						                    </div>
						                  </div>
						                </div>
						              </div>
						             </div>
              <!--/ 새 결제 작성 모달 -->
				                  
				                  
					              </form>
				                
				              </div>


                    </div>
                  </div>
                </div>
                <!-- /Options-->
              </div>
            </div>
            <!-- / Content -->
            
            
            <!-- modal -->
            
            <!-- 새 결제 작성 모달 -->
              <div class="modal fade" id="apv-modal" tabindex="-1" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered1 modal-simple modal-add-new-cc">
                  <div class="modal-content p-3 p-md-5">
                    <div class="modal-body">
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                      <div class="text-start mb-4">
                        <h3>결재 양식</h3>
                      </div>
                      
	                      <div>
	                      	<div class="col-md-6 col-12">
														<div class="card mb-md-0 mb-4 apv-modal-folder shadow-none border">
															<h5 class="card-header">문서양식</h5>
															<div class="card-body">
																<div id="jstree-checkbox-form"></div>
															</div>
														</div>
													</div>
	                      </div>

                      <div class="col-12 text-center">
                        <button type="button" class="btn btn-primary me-sm-3 me-1 mt-3 apv-doc-select">선택</button>
                        <button
                          type="reset"
                          class="btn btn-label-secondary btn-reset mt-3"
                          data-bs-dismiss="modal"
                          aria-label="Close">
                          취소
                        </button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!--/ 새 결제 작성 모달 -->
              
              <div class="col app-chat-history text chat-history-body">
              </div>
            
							<!-- 조직도 추가 모달 -->
              <div class="modal fade org-modal" id="apv-org-modal" tabindex="-1" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="modalCenterTitle">조직도</h5>
                    <button
                      type="button"
                      class="btn-close"
                      data-bs-dismiss="modal"
                      aria-label="Close"></button>
                  </div>
                  <div class="modal-body org-modal-body">
                  
	                  <div class="col-md-4" style="width: 95%;">
				              <div class="card mb-md-0 mb-4 shadow-none border overflow-hidden" >
				                
				                <div class="card-body" id="org-body">
				                  <div id="jstree-checkbox"></div>
				                </div>
				              </div>
				            </div>
				            
                    
                  
                  </div>
                  <div class="modal-footer">
                    <div class="col-12 text-center">
                      <button 
                      	type="button" class="btn btn-primary me-sm-3 me-1 mt-3 org-list-select"
                      	id=""
                      	data-bs-dismiss="modal"
                        aria-label="Close">선택</button>
                      <button
                        type="reset"
                        id="modal-close"
                        class="btn btn-label-secondary btn-reset mt-3"
                        data-bs-dismiss="modal"
                        aria-label="Close">취소</button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- /조직도 추가 모달 -->
            
            
            <jsp:include page="/views/todo_include.jsp" />
            <div class="content-backdrop fade"></div>
          </div>
          <!-- Content wrapper -->
        </div>
        <!-- / Layout page -->
      </div>

      <!-- Overlay -->
      <div class="layout-overlay layout-menu-toggle"></div>

      <!-- Drag Target Area To SlideIn Menu On Small Screens -->
      <div class="drag-target"></div>
    </div>
    <!-- / Layout wrapper -->

    <!-- Core JS -->
    <!-- build:js assets/vendor/js/core.js -->

    <script src="/assets/vendor/libs/jquery/jquery.js"></script>
    <script src="/assets/vendor/libs/popper/popper.js"></script>
    <script src="/assets/vendor/js/bootstrap.js"></script>
    <script src="/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="/assets/vendor/libs/hammer/hammer.js"></script>
    <script src="/assets/vendor/libs/i18n/i18n.js"></script>
    <script src="/assets/vendor/libs/typeahead-js/typeahead.js"></script>
    <script src="/assets/vendor/js/menu.js"></script>

    <!-- endbuild -->

    <!-- Vendors JS -->
    <script src="/assets/vendor/libs/select2/select2.js"></script>
    <script src="/assets/vendor/libs/cleavejs/cleave.js"></script>
    <script src="/assets/vendor/libs/cleavejs/cleave-phone.js"></script>
    <script src="/assets/vendor/libs/datatables-bs5/datatables-bootstrap5.js"></script>
    <script src="/assets/vendor/libs/bootstrap-select/bootstrap-select.js"></script>
    <script src="/assets/vendor/libs/bootstrap-datepicker/bootstrap-datepicker.js"></script>
    <script src="/assets/vendor/libs/bootstrap-daterangepicker/bootstrap-daterangepicker.js"></script>
    <script src="/assets/vendor/libs/jquery-timepicker/jquery-timepicker.js"></script>
    <script src="/assets/vendor/libs/jquery-timepicker/jquery-timepicker.js"></script>
    <script src="/assets/vendor/libs/pickr/pickr.js"></script>
    <script src="/assets/vendor/libs/quill/katex.js"></script>
    <script src="/assets/vendor/libs/quill/quill.js"></script>
    <script src="/assets/vendor/libs/sweetalert2/sweetalert2.js"></script>
    <script src="/assets/vendor/libs/jstree/jstree.js"></script>
    <script src="/assets/vendor/libs/sortablejs/sortable.js"></script>

    
    <!-- Flat Picker -->
    <script src="/assets/vendor/libs/moment/moment.js"></script>
    <script src="/assets/vendor/libs/flatpickr/flatpickr.js"></script>
    
    <!-- Form Validation -->
    <script src="/assets/vendor/libs/@form-validation/umd/bundle/popular.min.js"></script>
    <script src="/assets/vendor/libs/@form-validation/umd/plugin-bootstrap5/index.min.js"></script>
    <script src="/assets/vendor/libs/@form-validation/umd/plugin-auto-focus/index.min.js"></script>

    <!-- Main JS -->
    <script src="/assets/js/main.js"></script>

    <!-- Page JS -->
    <script src="/assets/js/app-ecommerce-settings.js"></script>
    
    <!-- Header JS -->
    <script src="/assets/js/header.js"></script>
    
    <!-- custom JS -->
    <script>
    
    projAllFile();
    
    console.log('form_type'+'${form_type}');
    
    $('.apv-vac-day').val('${apv.apv_time}');
    $('.apv-vac-time').val('${apv.apv_time}');
    
    
	  //반려, 결재에 관한 정보  ------------------------------------------------------------------------------------------------------
	    var apv_history_stmt = '';
	    
	    function handleRejection() {
	    	apv_history_stmt = '반려';
	    	$('input[name="apv_history_stmt"]').val(apv_history_stmt);
	    	setModalTitle();
	    }
	
	    function handleApproval() {
	    	apv_history_stmt = '결재';
	    	$('input[name="apv_history_stmt"]').val(apv_history_stmt);
	    	setModalTitle();
	    }
	    
	    function setModalTitle() {
	        var modalTitle = $('#modal-title');
	        var modalLabel = $('#modal-label');
					console.log("결재 or 반려 :"+apv_history_stmt);
	        if (apv_history_stmt === '결재') {
	        	modalTitle.text('결재');
	        	modalLabel.text('결재 사유');
	        } else if (apv_history_stmt === '반려') {
	        	modalTitle.text('반려');
	        	modalLabel.text('반려 사유');
	        }
	    }
	    
	  //--------------------------------------------------------------------------------------------------------------
    
    
    //종일, 시간 선택에 따라 연차 구분  ------------------------------------------------------------------------------------------------------
    $('.apv-vac-time').hide();
    // input_modal();
    
    $(".form-vac-time").on("change", function() {
    	
    		//$('.vac-time').val('');
        // 선택된 옵션의 텍스트 가져오기
        var selectedOption = $(this).find("option:selected").text();
        
        var content='';

        // 선택된 옵션에 따라 원하는 작업 수행
        if (selectedOption === "종일") {
            // "종일"이 선택된 경우의 동작
            console.log("종일이 선택되었습니다.");
            
            $('.apv-vac-time').hide();
            $('.apv-vac-day').show();
            $('.apv-vac-time input').prop('disabled', true);
            $('.apv-vac-time.vac-time').prop('disabled', true);
            $('.apv-vac-day.vac-time').prop('disabled', false);
            $('.apv-vac-day input').prop('disabled', false);
             
        } else if (selectedOption === "시간") {
            // "시간"이 선택된 경우의 동작
            console.log("시간이 선택되었습니다.");
            
            $('.apv-vac-day').hide();
            $('.apv-vac-time').show();
            $('.apv-vac-time input').prop('disabled', false);
            $('.apv-vac-day.vac-time').prop('disabled', true);
            $('.apv-vac-time.vac-time').prop('disabled', false);
            $('.apv-vac-day input').prop('disabled', true);
        }
     		// 날짜 시간 input 모달
        input_modal();
    });
    
  	//--------------------------------------------------------------------------------------------------------------
  	
  	
  	//연차 시간 자동 표시 ------------------------------------------------------------------------------------------------
  	
  	var startDay = '';
  	var endDay = '';
  	var startTime = '';
  	var endTime = '';
  	
  	calculateDateDifference();
  	
    
    $('.apv-vac-day').on('change', '#flatpickr-date-before', function() {
		    startDay = $(this).val();
		    console.log('시작 날짜:', startDay);
		    calculateDateDifference();
		});
		
		$('.apv-vac-day').on('change', '#flatpickr-date-after', function() {
		    endDay = $(this).val();
		    console.log('마지막 날짜:', endDay);
		    calculateDateDifference();
		});
		
		$('.apv-vac-time').on('change', '#timepicker-basic-before', function() {
		    startTime = $(this).val();
		    console.log('시작 시간:', startTime);
		    calculateTimeDifference();
		});
		
		$('.apv-vac-time').on('change', '#timepicker-basic-after', function() {
		   	endTime = $(this).val();
		    console.log('마지막 시간:', endTime);
		    calculateTimeDifference();
		});

		function calculateDateDifference() {
		    if (startDay && endDay) {
		        var startDate = new Date(startDay);
		        var endDate = new Date(endDay);

		        var dateDifference = endDate - startDate;
		        var daysDifference = (dateDifference / (24 * 60 * 60 * 1000) +1 ) * 8;

		        console.log('날짜 차이 (일):', daysDifference);
		        $('.apv-vac-day').val(daysDifference);
		    } else {
		        console.log('시작 날짜와 마지막 날짜를 선택하세요.');
		    }
		}

		function calculateTimeDifference() {
		    if (startTime && endTime) {
		        var startTimeParts = startTime.match(/(\d+):(\d+)\s*([aApP][mM])?/);
		        var endTimeParts = endTime.match(/(\d+):(\d+)\s*([aApP][mM])?/);

		        var startDate = new Date(1970, 0, 1, parseInt(startTimeParts[1]), parseInt(startTimeParts[2]));

		        if (startTimeParts[3] && startTimeParts[3].toLowerCase() === 'pm' && startDate.getHours() !== 12) {
		            startDate.setHours(startDate.getHours() + 12);
		        }

		        var endDate = new Date(1970, 0, 1, parseInt(endTimeParts[1]), parseInt(endTimeParts[2]));

		        if (endTimeParts[3] && endTimeParts[3].toLowerCase() === 'pm' && endDate.getHours() !== 12) {
		            endDate.setHours(endDate.getHours() + 12);
		        }

		        if (!isNaN(startDate) && !isNaN(endDate)) {
		            var timeDifference = endDate - startDate;

		            var hoursDifference = timeDifference / (60 * 60 * 1000);

		            console.log('시간 차이 (시간):', hoursDifference);
		            $('.apv-vac-time').val(hoursDifference);
		        } else {
		            console.log('잘못된 시간 형식입니다.');
		        }
		    } else {
		        console.log('시작 시간과 마지막 시간을 선택하세요.');
		    }
		}

    
    //--------------------------------------------------------------------------------------------------------------
  	

    // 시간 text 변경 ------------------------------------------------------------------
    
    if('${apv.apv_vac_type}' == '시간'){
    
    	var startTime = new Date("${apv.apv_start_time}");
        var endTime = new Date("${apv.apv_end_time}");

        // 시작 시간 형식 변경 (AM/PM 추가)
        var formattedStartTime = startTime.toLocaleString('en-US', { hour: 'numeric', minute: '2-digit', hour12: true });
        
        // 종료 시간 형식 변경 (AM/PM 추가)
        var formattedEndTime = endTime.toLocaleString('en-US', { hour: 'numeric', minute: '2-digit', hour12: true });

        // 날짜 형식 변경 (YYYY-MM-DD)
        var formattedStartDate = startTime.toISOString().split('T')[0];

        // 결과 생성
        var result = '<span>' + formattedStartDate + ' ' + formattedStartTime + '</span><span> ~ </span><span>' + formattedEndTime + '</span>';

        // 결과를 출력합니다.
        var apvVacTypeTimeElement = document.getElementById("apv_vac_type_time");
        apvVacTypeTimeElement.innerHTML = result;
		}
    
  	//--------------------------------------------------------------------------------------------------------------

    
    
    
  
    // 미리보기 모달----------------------------------------------------------------------------------------------
		 $('.approval-preview').on('click',function(){
			
			 	var apv_idx = '${apv.apv_idx}';
			 	var apv_type = 'pdf';
		    var width = 1000;
		    var height = 800;
		    var left = (window.innerWidth - width) / 2;
		    var top = (window.innerHeight - height) / 2;
		    
		    
		 		// AJAX를 이용하여 페이지 내용 가져오기
		    $.ajax({
            	url: '/approval/approval_pdf.go',
            	method: 'GET',
            	data:{'apv_idx' : apv_idx, 'apv_type' : apv_type},
		        	success: function (data){
						    // 창의 속성 설정
		        		var previewWindow = window.open('', '_blank', 'width=' + width + ', height=' + height + ', left=' + left + ', top=' + top);
		        		previewWindow.document.open();
		            previewWindow.document.write(data);
		            previewWindow.document.close();
		          },
		          error: function (xhr, status, error) {
			            console.error('AJAX request failed:', status, error);
			        }
        		});
    });

		//--------------------------------------------------------------------------------------------------------------
    
		
		
    
    // sweetAlert 모달창--------------------------------------------------------------------------------------------
		(function () {
    var confirmText = document.querySelector('.apv-del');
    
    var apv_idx = '${apv.apv_idx}';
    var apv_stmt = '${apv.apv_stmt}';

    if (confirmText) {
        confirmText.onclick = function () {
            Swal.fire({
                title: '상신을 취소하시겠습니까?',
                text: "취소한 문서는 임시저장함으로 이동합니다.",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonText: '네',
                cancelButtonText: '아니오',
                customClass: {
                    confirmButton: 'btn btn-primary me-3',
                    cancelButton: 'btn btn-label-secondary'
                },
                buttonsStyling: false
            }).then(function (result) {
                if (result.value) {
                    // Send request to /approval/apv-del when '네' button is clicked
                    $.ajax({
                        type: 'POST',
                        url: '/approval/apv_cancel',
                        data: {
                        	'apv_idx' : apv_idx,
                        	'apv_stmt' : apv_stmt
                        },  // You may need to include data if required
                        dataType: 'json',
                        success: function (response) {
                            // Handle success response
                        	Swal.fire({
                                icon: 'success',
                                title: '완료',
                                text: '상신을 취소하셨습니다.',
                                customClass: {
                                    confirmButton: 'btn btn-success'
                                }
                            }).then(function () {
                                // Redirect to /approval/approval_main.go after success message
                                window.location.href = '/approval/approval_main.go';
                            });
                        },
                        error: function (error) {
                            // Handle error response
                            Swal.fire({
                                icon: 'error',
                                title: '문제 발생',
                                text: '다시 시도해주세요.',
                                customClass: {
                                    confirmButton: 'btn btn-danger'
                                }
                            });
                        }
                    });
                }
            });
        };
    }
})();

		//--------------------------------------------------------------------------------------------------------------
    
		
		
		
 		// 새 결재 작성 모달창----------------------------------------------------------------------------------------
    $(document).ready(function () {
    var theme = $('html').hasClass('light-style') ? 'default' : 'default-dark',
        checkboxTree = $('#jstree-checkbox-form');

    // Checkbox
    if (checkboxTree.length) {
        checkboxTree.jstree({
            core: {
                themes: {
                    name: theme
                },
                data: [
                    {
                        text: '근태',
                        state: {
                            opened: true
                        },
                        children: [
                            {
                                text: '휴가 신청서',
                                type: 'docs'
                            },
                            {
                                text: '사후 휴가 신청서',
                                type: 'docs'
                            }
                        ]
                    },
                    {
                        text: '일반 ',
                        state: {
                            opened: true
                        },
                        children: [
                            {
                                text: '사업 기안서',
                                type: 'docs'
                            }
                        ]
                    },
                ]
            },
            plugins: ['types', 'wholerow'],
            types: {
                default: {
                    icon: 'bx bx-folder'
                },
                docs: {
                    icon: 'bx bxs-file-blank'
                }
            }
        }).on('select_node.jstree', function (e, data) {
            // 현재 선택된 노드의 ID 확인
            var selectedNodeId = data.node.id;

            // 기존 click 이벤트 핸들러 제거
            $('.apv-doc-select').off('click');

            // id 값에 따라 페이지 이동
            $('.apv-doc-select').on('click', function () {
                if (selectedNodeId == 'j1_2') {
                    location.href = "/approval/approval_write.go/vac";
                } else if (selectedNodeId == 'j1_3') {
                    location.href = "/approval/approval_write.go/vac_after";
                } else if (selectedNodeId == 'j1_5') {
                    location.href = "/approval/approval_write.go/biz";
                }
            });

        });
    }
});
		
  	//------------------------------------------------------------------------------------------------
 		
  	
  	
 		
 		//조직도 모달창-----------------------------------------------------------------------------------
 		/* 
 		// 조직도 스크롤
 		$(function() {
	    var orgBody = $('#org-body'),
	    orgListBody = $('#org-list-body');
	    
	    if (orgBody.length) {
	        new PerfectScrollbar(orgBody[0], {
	            wheelPropagation: false
	        });
	    }
	    
	    if (orgListBody.length) {
	        new PerfectScrollbar(orgListBody[0], {
	            wheelPropagation: false
	        });	
	    }
		});

  	
 		//리스트 받기
 		$.ajax({
    		type: 'get',
        	url: '../../getOrgList',
        	data: {},
        	dataType: 'JSON',
	        success : function(data){
	          console.log("data"+data);
            drawOrg(data.orgList, data.deptKind);
	        } ,
	        error : function(e){
	          console.log("e"+e);
	        }
    	});
  	
 		// 조직도 리스트 순서 바꾸기
 	  $(function(){
 	  	var pendingTasks = $('#pending-tasks')[0];
 	  	  // Handles
 	  	  if (pendingTasks) {
 		    Sortable.create(pendingTasks, {
 		      animation: 150,
 		      group: 'taskList'
 		    });
 		  }
 	  });
		 */
 		//리스트 받기 실행 함수
    /* 
    function drawOrg(orgList, deptKind) {
    	
    	console.log('orgList', orgList);
    	console.log('deptKind',deptKind);
    		
    	var theme = $('html').hasClass('light-style') ? 'default' : 'default-dark',
    		checkboxTree = $('#jstree-checkbox');
         
    	if (checkboxTree.length) {
    		var serverData = [];
    			
    		//----
    		for (var i = 0; i < deptKind.length; i++) {
    			
    			   var deptname = {
    			       text: deptKind[i],
    			       type: 'depart',
    			       children: []
    			   };
    			   
    			   console.log("deptKind",deptKind[i]);
    			    
    			    var empLength = function(){
    			    	var cnt=0;
   			    		for(var k=0; k < orgList.length; k++){
   			    			if(orgList[k].dept == deptKind[i]){
   			    				cnt++;
   			    				console.log("cnt", cnt);
   			    			}
   			    		}
   			    		return cnt;
    			    };
    			    
    			    var empInfo = function(index){
    			    	var info=[];
   			    		for(var k=0; k < orgList.length; k++){
   			    			if(orgList[k].dept == deptKind[i]){
   			    				console.log("emp_value : ", orgList[k].emp_name,orgList[k].grade);
   			    				info.push( orgList[k].emp_name+" | "+orgList[k].grade+"<input type='hidden' value='"+orgList[k].emp_id+"'/>");
   			    			}
   			    		}
   			    		return info[index];
    			    };
    			    
    			    for (var j = 0; j < empLength(); j++) {
    			    	console.log("empInfo("+j+")",empInfo(j));
    			        var emp = {
    			            text: empInfo(j)
    			        };
    			        deptname.children.push(emp);
    			    } 

    			    // 부모 데이터를 배열에 추가
   			    	serverData.push(deptname); 
    			}
    		
    			console.log(serverData); 

    			// jstree에서 사용할 데이터 구성
		    	var jstreeData = serverData.map(function (parent) {
		    	  var parentNode = {
		    	    text: parent.text,
		    	    type: 'depart',
		    	    children: parent.children.map(function (child) {
		    	      return {
		    	        text: child.text
		    	      };
		    	    })
		    	  };
		    	  return parentNode;
		    	});
    			
		    	//----

    			checkboxTree.jstree({
    			  core: {
    			    themes: {
    			      name: theme
    			    },
    			    data: jstreeData
    			  },
    			  plugins: ['types', 'wholerow'],
    			  types: {
    			    default: {
    			      icon: 'bx bx-user'
    			    },
    			    depart: {
    			  	icon: 'bx bx-folder'
    			    }
    			  }
    			}).on('select_node.jstree', function (e, data) { // 조직도에서 직원 선택 시 작동하는 함수 
    				
    				$('.org-list-select').off().on('click', function () {
    				    var deptNameElements = $('.dept-name');
    				    var empNameElements = $('.emp-name');
    				    var positionNameElements = $('.position-name');
    				    var empIdElements = $('.emp-id');

    				    var totalNames = [];

    				    for (var i = 0; i < deptNameElements.length; i++) {
    				        var nameOrder = [];
    				        if (deptNameElements[i]) nameOrder.push(deptNameElements.eq(i).text());
    				        if (empNameElements[i]) nameOrder.push(empNameElements.eq(i).text());
    				        if (positionNameElements[i]) nameOrder.push(positionNameElements.eq(i).text());
    				        if (empIdElements[i]) nameOrder.push(empIdElements.eq(i).val());
    				        totalNames.push(nameOrder);
    				    }

    				    console.log("Total Names:", totalNames);

    				    var totalNamesJSON = JSON.stringify(totalNames);
    				    $('#totalNames').val(totalNamesJSON);

    				    var apv_idx = '${apv.apv_idx}';

    				    Swal.fire({
    				        title: '열람자를 추가 하시겠습니까?',
    				        text: "추가하신 열람자는 열람 가능한 문서에서 문서 확인이 가능합니다.",
    				        icon: 'warning',
    				        showCancelButton: true,
    				        confirmButtonText: '네',
    				        cancelButtonText: '아니오',
    				        customClass: {
    				            confirmButton: 'btn btn-primary me-3',
    				            cancelButton: 'btn btn-label-secondary'
    				        },
    				        buttonsStyling: false
    				    }).then(function (result) {
    				        if (result.value) {
    				            // Ajax 요청 부분
    				            $.ajax({
    				                type: 'POST',
    				                url: '/approval/CompApproval_ViewerPlus',
    				                data: {
    				                    'total_name': totalNamesJSON,
    				                    'apv_idx': apv_idx
    				                },
    				                dataType: 'JSON',
    				                success: function (response) {
    				                    console.log("Server Response:", response);

    				                    // SweetAlert로 완료 메시지 띄우고 페이지 이동
    				                    Swal.fire({
    				                        icon: 'success',
    				                        title: '완료',
    				                        text: '열람자가 추가되었습니다.',
    				                        customClass: {
    				                            confirmButton: 'btn btn-success'
    				                        }
    				                    }).then(function () {
    				                        // Redirect to /approval/approval_main.go after success message
    				                        window.location.href = '/approval/approval_main.go';
    				                    });
    				                },
    				                error: function (error) {
    				                    console.log("Error:", error);
    				                    // 에러 처리 코드 추가
    				                    Swal.fire({
    				                        icon: 'error',
    				                        title: '문제 발생',
    				                        text: '다시 시도해주세요.',
    				                        customClass: {
    				                            confirmButton: 'btn btn-danger'
    				                        }
    				                    });
    				                }
    				            });
    				        }
    				    });
    				});
    				
	    					// 조직도 추가 버튼 눌렀을 시
	    				  $('.org-modal-body .button .plus').off().on('click',function(){
	      	    	        // 현재 선택된 노드의 ID 확인
	      				  			var selectedNodeText = data.node.text;
	      	    	        
	      				  			// 정규표현식을 사용하여 'value' 속성에서 'emp01' 추출
	      				  		  var empIdMatch = /value='([^']+)'/g.exec(selectedNodeText);
	      				  		  var empId = empIdMatch ? empIdMatch[1] : null;
	
	      				  		  if (empId) {
	      				  		      // AJAX 요청을 보내어 empId에 해당하는 데이터를 서버로부터 받아옴
	      				  		      $.ajax({
	      				  		          type: 'get',
	      				  		          url: '../../org_selected', // 서버 URL을 적절히 수정
	      				  		          data: { emp_id: empId },
	      				  		          dataType: 'JSON',
	      				  		          success: function (data) {
	      				  		        	  
		      				  		        	var content = '';
		      				  		        	
		      				  		        	content += '<li class="list-group-item drag-item cursor-move d-flex justify-content-between align-items-center">';
		      				  		        	content += '<span class="d-flex justify-content-between align-items-center">';
		      				  		        	content += '<span class="dept-name" style="width:9rem">'+data.dept_name+'</span>';
		      				  		       		content += '<span class="emp-name" style="width:6rem">'+data.emp_name+'</span>';
		      				  		       		content += '<span class="position-name" style="width:6rem">'+data.position_name+'</span>';
		      				  		       		content += '<span class="order" style="width:4rem"><button type="button" class="apv-list-del"><i class="bx bx-trash" ></i></button></span>';
		      				  		       		content += '<input class="emp-id" type="hidden" value="'+empId+'">';
		      				  		        	content += '</span>';
		      				  		        	content += '</li>';
		      				  		        	
		      				  		        	$("#pending-tasks").append(content);
	      				  		            content = '';
	      				  		            
			      				  		        $('.apv-list-del').on('click',function () {
			      				  		        	$(this).closest('li').remove();
			      				  		    		});
			      				  		        
	      				  		            },
	      				  		            error: function (e) {
	      				  		                console.log("Error:", e);
	      				  		            }
	      				  		        });
	      				  		  } 
	      				  }); // plus on click
      				
	      				  
    		}); // select_node.jstree 

    	} // if (checkboxTree.length) {}
    }// function
     */
    
    
    // 내용 받기 -------------------------------------------------------------------------------------------
    // Quill 에디터 초기화
    var snowEditor = new Quill('#snow-editor', {
		    bounds: '#snow-editor',
		    modules: {
		        formula: true,
		        toolbar: '#snow-toolbar'
		    },
		    theme: 'snow',
		   	readOnly: true  // 읽기 전용으로 설정
		});
    
    var deltaData = ${apv.apv_cnt};

    // Delta 데이터를 Quill 에디터에 적용
    snowEditor.setContents(deltaData);
    
   	//------------------------------------------------------------------------------------------------
    
    // 파일 업로드 -------------------------------------------------------------
    
    function projAllFile(){    	
    	var apv_idx = '${apv.apv_idx}';
    	
   		$.ajax({
   			type: 'get',
   			url: '/approval/approval_file.do',
   			data: {'apv_idx': apv_idx},
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

    function projAllFiledraw(obj){
        var content = '';
        var totalItems = obj.list.length;
        console.log(totalItems);
        
        if (totalItems === 1 && obj.list[0].ori_file_name == null){
        	content = '<div style="text-align:center">첨부 파일이 없습니다.</div>';
        }else{
        	obj.list.forEach(function (item){
        		if(item.ori_file_name != null){
	        				content += '<div class="card email-card-prev mx-sm-1 mx-3 border my-2" >';
	                content += '<div class="cursor-pointer">';
	                content += '<i class="bx bx-file"></i>';
	                content += '<span class="align-middle ms-1">';
	                content += '<a href="/file/approval/' + item.new_file_name + '" download="'+item.ori_file_name+'">' + item.ori_file_name + '</a>';
									content += '</span>';
	                content += '</div>';
	            		content += '</div>';
        		}
        	});
        }
        $('#fileAll').empty();
        $('#fileAll').append(content);
    }
    
   	//------------------------------------------------------------------------------------------------
   	
   	var selectedNodes = []; // 전역 범위에서 정의
    var permEmpIds = [];
    $('.permEmp_id').each(function() {
        permEmpIds.push($(this).val());
    });

    // permEmpIds 배열에는 각 요소의 값이 저장됨
    console.log(permEmpIds);
 
    function addPerm(){
    	console.log("열람자 추가 버튼 클릭");
    	// 모달이 열릴 때마다 체크박스 초기화
    	var apv_idx = '${apv.apv_idx}';
    	var apvReq_empId= '${apv.emp_id}';
    	
    	//리스트 받기
    		$.ajax({
    		type: 'get',
        	url: '../../getOrgListApvP',
        	data: {
        		apv_idx: apv_idx,
        		apvReq_empId: apvReq_empId
        	},
        	dataType: 'JSON',
            success : function(data){
              console.log("data",data);
            drawOrg(data.orgList, data.deptKind);
            } ,
            error : function(e){
              console.log("e",e);
            }
    	});
    	
    }
    
    function delPerm(iconElement) {
        // 클릭된 아이콘( bx bx-x ) 요소의 부모 li 태그에서 input 값을 가져옴
        var emp_id = $(iconElement).closest('div').find('.permEmp_id').val();
        var apv_idx = '${apv.apv_idx}';
        
     // AJAX 요청
        $.ajax({
            type: 'POST',
            url: '/approval/delApvPerm',  // 실제 서버 엔드포인트로 수정
            contentType: 'application/json',
            data: JSON.stringify({ emp_id: emp_id, apv_idx: apv_idx }),
            success: function (data) {
                // 서버 응답에 대한 처리
                console.log(data);
                if (data.idx !== null) {
                    console.log(data.idx);
                    drowCreatorPermList(data.apvPermList);
                    /* location.href = '../creators/creatorDetail.go?cre_idx='+cre_idx; */
                }
            },
            error: function (error) {
                // 오류 처리
                console.error('Error:', error);
            }
        });
       
    }
    
    
  //리스트 받기 실행 함수
    function drawOrg(orgList, deptKind) {
        		console.log('orgList', orgList);
        		console.log('deptKind',deptKind);
        		
        		var theme = $('html').hasClass('light-style') ? 'default' : 'default-dark';
        		var checkboxTree = $('#jstree-checkbox');
             	console.log("체크박스트리",checkboxTree);
        		if (checkboxTree.length) {
        			
        			var serverData = [];
        			
        			for (var i = 0; i < deptKind.length; i++) {
        			    var deptname = {
        			        text: deptKind[i],
        			        type: 'depart',
        			        children: []
        			    };
        			    console.log("deptKind",deptKind[i]);
        			    
        			    var empLength = function(){
        			    	var cnt=0;
       			    		for(var k=0; k < orgList.length; k++){
       			    			if(orgList[k].dept == deptKind[i]){
       			    				cnt++;
       			    				console.log("cnt", cnt);
       			    			}
       			    		}
       			    		return cnt;
        			    };
        			    var empInfo = function(index){
        			    	var info=[];
       			    		for(var k=0; k < orgList.length; k++){
       			    			if(orgList[k].dept == deptKind[i]){
       			    				console.log("emp_value : ", orgList[k].emp_name,orgList[k].grade);
       			    				info.push( orgList[k].emp_name+" | "+orgList[k].grade+" | "+orgList[k].position+"<input type='hidden' value='"+orgList[k].emp_id+"'/>");
       			    			}
       			    		}
       			    		return info[index];
        			    };
        			    
        			    for (var j = 0; j < empLength(); j++) {
        			    	console.log("empInfo("+j+")",empInfo(j));
        			        var emp = {
        			            text: empInfo(j)
        			        };
        			        deptname.children.push(emp);
        			    } 

        			    // 부모 데이터를 배열에 추가
       			    	serverData.push(deptname); 
        			}

        			console.log(serverData); 

        			// jstree에서 사용할 데이터 구성
    		    	var jstreeData = serverData.map(function (parent) {
    		    	  var parentNode = {
    		    	    text: parent.text,
    		    	    type: 'depart',
    		    	    children: parent.children.map(function (child) {
    		    	      return {
    		    	        text: child.text
    		    	      };
    		    	    })
    		    	  };
    		    	  return parentNode;
    		    	});
     
    		    	checkboxTree.jstree('destroy');
        			  checkboxTree.jstree({

        			    core: {
        			      themes: {
        			        name: theme
        			      },
        			      data: jstreeData
        			    },
        			    plugins: ['types', 'checkbox', 'wholerow'],
        			    types: {
        			      default: {
        			        icon: 'bx bx-user'
        			      },
        			      depart: {
        			    	icon: 'bx bx-folder'
        			      }
        			    }
        			  });
        			}
        		
        	}  
    //체크시 조직도 이벤트 (담당자)
    $(document).ready(function () {
        $('#jstree-checkbox').on('click', '.jstree-anchor', function (event) {
            event.preventDefault();

            var $clickedNode = $(this);
            var nodeName = $clickedNode.text().trim();
            var nodeHidden = $clickedNode.find('input[type="hidden"]').val();
            var isSelected = $clickedNode.attr('aria-selected') === 'true';

            setTimeout(function () {
                var currentSelected = $clickedNode.attr('aria-selected') === 'true';

                var isParentNode = !$clickedNode.parent().hasClass('jstree-leaf');
                if (isParentNode) {
                    var isOpen = $clickedNode.parent().hasClass('jstree-open');
                    if (!isOpen) {
                        $clickedNode.parent().find('> .jstree-icon').click();
                    }

                    $clickedNode.parent().find('.jstree-children li').each(function () {
                        var $childNode = $(this).find('> .jstree-anchor');
                        var childNodeName = $childNode.text().trim();
                        var childNodeSelected = $childNode.attr('aria-selected') === 'true';
                        var ChildHidden = $childNode.find('input[type="hidden"]').val();

                        // "|"를 기준으로 문자열 분할하고 첫 번째 부분 사용
                        var empNameParts = childNodeName.split('|');
                        var empName = empNameParts.length > 0 ? empNameParts[0].trim() : '';

                        // 객체 생성
                        var empObject = {
                            emp_id: ChildHidden,
                            emp_name: empName
                        };

                        // 배열에서 노드 정보 추가 또는 제외
                        if (childNodeSelected) {
                            if (!selectedNodes.some(node => node.emp_id === ChildHidden)) {
                                selectedNodes.push(empObject);
                                addToDamList(empName, ChildHidden);
                            }
                        } else {
                            selectedNodes = selectedNodes.filter(node => node.emp_id !== ChildHidden);
                            removeFromDamList(ChildHidden);
                        }

                        console.log('이름:', childNodeName, ' 클릭 후 체크 여부:', childNodeSelected, ' ChildHidden:', ChildHidden);
                    });
                } else {
                    // "|"를 기준으로 문자열 분할하고 첫 번째 부분 사용
                    var empNameParts = nodeName.split('|');
                    var empName = empNameParts.length > 0 ? empNameParts[0].trim() : '';

                    // 객체 생성
                    var empObject = {
                        emp_id: nodeHidden,
                        emp_name: empName
                    };

                    // 배열에서 노드 정보 추가 또는 제외
                    if (currentSelected) {
                        if (!selectedNodes.some(node => node.emp_id === nodeHidden)) {
                            selectedNodes.push(empObject);
                            addToDamList(empName, nodeHidden);
                        }
                    } else {
                        selectedNodes = selectedNodes.filter(node => node.emp_id !== nodeHidden);
                        removeFromDamList(nodeHidden);
                    }

                    console.log('이름:', nodeName, ' 클릭 후 체크 여부:', currentSelected, ' nodeHidden:', nodeHidden);
                }

                // 출력 선택된 노드 배열
                console.log('Selected Nodes:', selectedNodes);
            }, 0);
        });

        // 트리 노드 열림/닫힘 이벤트 리스너를 추가
        $('#jstree-checkbox').on('after_open.jstree', function (event, data) {
            // 열린 노드의 이름
            var nodeName = $(data.node).find('> a').text().trim();
    		
            // console.log('이름:', nodeName, ' 상태: 열림');
        });

        $('#jstree-checkbox').on('after_close.jstree', function (event, data) {
            // 닫힌 노드의 이름
            var nodeName = $(data.node).find('> a').text().trim();

            // console.log('이름:', nodeName, ' 상태: 닫힘');
        });
    });

    function addToDamList(name, hiddenValue) {
        var $damList = $('#addChamList');
        var Fname = name.split(' | ')[0];
        var $badge = $('<span style="margin-right:5px" class="badge bg-primary">' + Fname + '<button type="button" class="offset-1" onclick="removeNodeFromList1(\'' + hiddenValue + '\')"><i class=\'bx bx-x\'></i></button></span>');
        $damList.append($badge);
    }

    function removeFromDamList(hiddenValue) {
        var $badgeToRemove = $('#addDamList').find('[onclick="removeNodeFromList(\'' + hiddenValue + '\')"]').closest('.badge.bg-primary');
        $badgeToRemove.remove();
    }

    function removeNodeFromList(hiddenValue) {
        selectedNodes = selectedNodes.filter(node => node !== hiddenValue);
        removeFromDamList(hiddenValue);
        console.log('Selected Nodes after removal:', selectedNodes);
    }



    //선택 버튼 클릭 시 처리
    $('.org-list-select').click(function () {
    	console.log("selectedNodes",selectedNodes);
    	var apv_idx = '${apv.apv_idx}';
    	
    	// 데이터 객체 생성
        var requestData = {
            selectedNodes: selectedNodes,
            apv_idx: apv_idx
        };
    	
      	$.ajax({
            type: 'POST',
            url: '/approval/CompApproval_ViewerPlus',
            contentType: 'application/json',
            data: JSON.stringify(requestData),
            success: function (data) {
            	
                console.log(data);
                if (data.idx !== null) {
                    console.log(data.idx);
                    drowCreatorPermList(data.apvPermList);
                }
            },
            error: function (error) {
                console.error('Error:', error);
            }
        });
        

        // 모달 닫기
        selectedNodes = [];
        $('#apv-org-modal').modal('hide');
        
        
    });

    //모달이 닫힐 때 selectedNodes 배열 초기화
    $('#apv-org-modal').on('hidden.bs.modal', function () {
    	selectedNodes = [];
    	// 체크된 상태 해제 코드 추가
        $('#jstree-checkbox').jstree('deselect_all');
    });

 // 동적으로 리스트 생성하고 추가
    function drowCreatorPermList(apvPermList) {
        var $ul = $('<ul>');

        apvPermList.forEach(function (apvPerm) {
            var $div = $('<div>').html(
            		'<input class="permEmp_id" type="hidden" value="' + apvPerm.emp_id + '" />' +	
            		apvPerm.emp_name + ' ' + apvPerm.grade_name + '(' + apvPerm.dept_name + ')'
                + ' <i class="bx bx-x" onclick="delPerm(this)"></i>'
            );
            $ul.append($div);
        });

        // 기존의 내용을 비우고 새로운 내용을 추가
        $('#creator-list-ul').empty().append($ul);
    }

    </script>
  </body>
</html>