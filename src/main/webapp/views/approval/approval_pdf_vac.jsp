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
    <link rel="stylesheet" href="../../assets/vendor/libs/quill/typography.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/quill/katex.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/quill/editor.css" />
	
    <!-- Page CSS -->

    <!-- Helpers -->
    <script src="../../assets/vendor/js/helpers.js"></script>
    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Template customizer: To hide customizer set displayCustomizer value false in config.js.  -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="../../assets/js/config.js"></script>
    
    <!-- custom CSS -->
    <style>
    
    button{
			background: inherit;
			border:none;
			box-shadow:none;
			border-radius:0;
			padding:0;
			overflow:visible;
			cursor:pointer;
		}
			
		.row{
			justify-content: center;
		}
   
    .mb-1{
    	margin-bottom:0.1rem !important;
    }
    
    h5{
    	font-family:pretendard;
    	font-weight:600;
    }
    
    h4{
    	font-family:pretendard;
    	font-weight:600;
    }
    
    .apv-home{
    	color:#c20000;
    	margin-bottom:2rem;
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
	    border: 2px solid black;
	    text-align: center;
	    font-weight: bold;
	    background: rgb(221, 221, 221);
	    padding: 3px !important;
    }
    
    .apv-form-vac .table-header-left-table-right{
    	width: 150px;
	    height: 22px;
	    vertical-align: middle;
	    border: 2px solid black;
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
    	border:2px solid black;
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
    	border-bottom:2px solid black;
    	border-left:2px solid black;
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
    
    /*table-content*/
    
    .apv-form-vac .table-content-left{
    	background: rgb(221, 221, 221);
	    padding: 5px;
	    border: 2px solid black;
	    height: 25px;
	    text-align: center;
	    color: rgb(0, 0, 0);
	    font-size: 14px;
	    font-weight: bold;
	    vertical-align: middle;
    }
    
    .apv-form-vac .table-content-right{
    	padding: 3px;
	    border: 2px solid black;
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
    	align-items: center
    }
    
    .table-content-right .form-control{
    	display: inline-block;
    	width: 30%;
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
    
    .apv-form-button button[type="submit"]{
    	margin-right: 5.125rem;
    }
    
    .apv-form-button button[type="reset"]{
    	margin-right:1rem;
    }
    
    .text-truncate{
    	font-family:pretendard;
    }
    
    .light-style .ql-snow.ql-container{
    	border:none;
    }
    
    .light-style .ql-snow.ql-toolbar{
    	display:none;
    }
    
    </style>

  </head>

  <body>
    <!-- Layout wrapper -->
<div class="layout-wrapper layout-content-navbar">
	<div class="layout-container">
	<!-- Content wrapper -->
 		<div class="content-wrapper">
   <!-- Content -->
		<div class="container-xxl flex-grow-1 container-p-y">
  	<!-- <h4 class="py-3 mb-4">전자 결재</h4> -->
  		<div class="row g-4">
			<!-- Options -->
		    <div class="col-lg-11 pt-4 pt-lg-0">
		    	<h4 class="apv-home">휴가 신청서</h4>
		    	<div class="apv-form-menu">
		    		<span class="text-truncate">
		    			<button type="button" id="confirm-text" class="apv-form-menu-cnt pdf-save"><i class='bx bx-plus'></i> pdf 저장</button>
		    		</span>
		    	</div>
		      <div class="tab-content p-0">
		        <!-- Store Details Tab -->
		        <div class="tab-pane fade show active" id="store_details" role="tabpanel">
		         <div class="card">
		         	<div class="apv-form-vac">
		           	<form>
		             <table class="table-header">
		             	<tbody>
		             		<tr>
		             			<td class="table-subject" colspan="2">연차신청서</td>
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
												  <c:when test="${form_type == 'detail'}">
												  
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
																  <c:when test="${form_type == 'detail'}">
																  
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
												<td class="table-content-left">연차 종류</td>
												<td class="table-content-right">
												
													<c:choose>
												    <c:when test="${form_type == 'write'}">
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
													    <c:when test="${form_type == 'write'}">
													    
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
															<span style="margin-left:2rem;">${apv.apv_time}</span>
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

					              	</form>
				                </div>
				                
				                <div class="pt-4 apv-form-button">
				                	<button type="reset" class="btn btn-label-secondary">닫기</button>
				              	</div>


                    </div>
                  </div>
                </div>
                <!-- /Options-->
              </div>
            </div>
            <!-- / Content -->
            </div>
            
            
            
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
    <script src="../../apv_library/build/jspdf.js"></script>
    <script src="../../apv_library/build/jspdf.plugin.autotable.js"></script>
    <script src="../../apv_library/build/html2canvas.js"></script>

    <!-- endbuild -->

    <!-- Vendors JS -->
    <script src="../../assets/vendor/libs/quill/katex.js"></script>
    <script src="../../assets/vendor/libs/quill/quill.js"></script>
    
    
    <!-- Main JS -->
    <script src="../../assets/js/main.js"></script>

    <!-- Page JS -->
    <script src="../../assets/js/app-ecommerce-settings.js"></script>
    <script src="../../assets/js/forms-editors.js"></script>
    <!-- custom JS -->
    <script>
    
    console.log('${form_type}');
    
    // pdf 저장 --------------------------------------------------------------------------------------------------
    
    window.jsPDF = window.jspdf.jsPDF;
    
    $('.pdf-save').on('click',function(){
    	
    	html2canvas($('.apv-form-vac'), {
		    			scale: 3,
		    	    logging: true, // 디버깅을 위한 로그 출력
		    	    useCORS: true, // CORS 사용 여부
		    	    allowTaint: true, // cross-origin allow
		    	    imageTimeout: 5000, // 이미지 로딩 타임아웃
		    	    letterRendering: true, // 글자 렌더링 사용 여부
           		 onrendered: function (canvas) {
                // 캔버스를 이미지로 변환
                
                var newCanvas = document.createElement('canvas');
                newCanvas.width = canvas.width * 3;  // 두 배로 크기를 늘림
                newCanvas.height = canvas.height * 3;  // 두 배로 크기를 늘림
                
                console.log(newCanvas.width);
                console.log(newCanvas.height);

                var imgWidth = 190; // 이미지 가로 길이(mm) A4 기준
                var pageHeight = imgWidth * 1.414; // 출력 페이지 세로 길이 계산 A4 기준
                var imgHeight = newCanvas.height * imgWidth / newCanvas.width;
                var heightLeft = imgHeight;

                var doc = new jsPDF('p', 'mm', 'a4');
                var position = 0;
                
                doc.setProperties({
                    marginLeft: 10, // 좌측 여백 조절 (단위: mm)
                });

                var imgData = canvas.toDataURL('image/png');
                // 첫 페이지 출력
                doc.addImage(imgData, 'PNG', 10, position, imgWidth, imgHeight);
                heightLeft -= pageHeight;

                // 한 페이지 이상일 경우 루프 돌면서 출력
                while (heightLeft >= 20) {
                    position = heightLeft - imgHeight;
                    doc.addPage();
                    doc.addImage(imgData, 'PNG', 0, position, imgWidth, imgHeight);
                    heightLeft -= pageHeight;
                }

                // 파일 저장
                doc.save('sample.pdf');
            }
        });
    			 
    });
    
	//------------------------------------------------------------------------------------------------
	
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
		
		// 날짜 형식 변경
		var options = { year: 'numeric', month: '2-digit', day: '2-digit', hour: 'numeric', minute: '2-digit' };
		var formattedStartTime = startTime.toLocaleString('en-US', options).replace(',', '');
		var formattedEndTime = endTime.toLocaleString('en-US', options).split(',')[1].trim();
		
		console.log(formattedStartTime);
		console.log(formattedEndTime);
		
		// 결과 생성
		var result = '<span>'+formattedStartTime+'</span><span> ~ </span><span>'+formattedEndTime+'</span>';
		
		// 결과를 출력합니다.
		var apvVacTypeTimeElement = document.getElementById("apv_vac_type_time");
		apvVacTypeTimeElement.innerHTML = result;
    
		}
    
  	//--------------------------------------------------------------------------------------------------------------
  	
  	// 내용 받기 -------------------------------------------------------------------------------------------
    // Quill 에디터 초기화
    
    var snowEditor = new Quill('#snow-editor', {
		    bounds: '#snow-editor',
		    modules: {
		        formula: false
		    },
		    theme: 'snow',
		   	readOnly: true  // 읽기 전용으로 설정
		});
    
    var deltaData = ${apv.apv_cnt};

    // Delta 데이터를 Quill 에디터에 적용
    snowEditor.setContents(deltaData);
    
   	//------------------------------------------------------------------------------------------------
    

    </script>
  </body>
</html>
