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
	<!-- pretendard 폰트 -->
	<link rel="stylesheet" type="text/css" href='https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css'>
	
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
    <link rel="stylesheet" href="../../assets/vendor/libs/datatables-bs5/datatables.bootstrap5.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/datatables-responsive-bs5/responsive.bootstrap5.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/datatables-buttons-bs5/buttons.bootstrap5.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/animate-css/animate.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/sweetalert2/sweetalert2.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/select2/select2.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/@form-validation/umd/styles/index.min.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/apex-charts/apex-charts.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/jstree/jstree.css" /> <!-- 조직도 -->

    <!-- Page CSS -->

    <link rel="stylesheet" href="../../assets/vendor/css/pages/page-user-view.css" />

    <!-- Helpers -->
    <script src="../../assets/vendor/js/helpers.js"></script>
    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Template customizer: To hide customizer set displayCustomizer value false in config.js.  -->
    <script src="../../assets/vendor/js/template-customizer.js"></script>
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="../../assets/js/config.js"></script>
    
    <!-- 커스텀 -->
    <style>
    .d-flex.justify-content-center.pt-3{
    	padding-top: 0rem !important;
    	margin-right: -7rem;
    }
    .custom-logo{
    	display: inline-block;
	    border: 1px solid #868686;
	    height: 20px;
	    width: 20px;
	    border-radius: 3px;
	    background-color: #c20000;
	    color: #FFF;
	    text-align: center;
    }
    .no-border {
    border: none;
    padding: 0px;
  }
  .modal-content{
width: 23rem;
}
.card-body.modal{
width: 20rem;
}

/* 비활성화된 노드의 체크박스 숨기기 */
.jstree-wholerow-disabled > .jstree-checkbox {
    display: none;
}

    
    </style>
    
  </head>

  <body>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
        <!-- Menu -->
		<jsp:include page="/views/header_menu.jsp" />
        <!-- Layout container -->
        <div class="layout-page">
          <!-- Navbar -->
		  <jsp:include page="/views/header_navbar.jsp" /> 
          <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->
            <div class="container-xxl flex-grow-1 container-p-y">
              <h4 class="py-3 mb-4"><span class="text-muted fw-light"></span> 크리에이터 관리</h4>
              <div class="row">
                <!-- User Sidebar -->
                <div class="col-xl-4 col-lg-5 col-md-5 order-1 order-md-0">
                  <!-- User Card -->
                  <div class="card mb-4">
                    <div class="card-body">
                      <div class="user-avatar-section">
                        <div class="d-flex align-items-center flex-column">
                          <img
                            class="img-fluid rounded my-4"
                            src="/file/creator/${creatorInfo.new_file_name}"
                            alt="${creatorInfo.ori_file_name}"
                            height="300"
                            width="300"/>
                          <div class="user-info text-center">
                            <h4 class="mb-2">${creatorInfo.cre_nick_name}</h4>
                            <input id="cre_idx" type="hidden" value="${creatorInfo.cre_idx}"/>
                          </div>
                        </div>
                      </div>
                      <div class="d-flex justify-content-around flex-wrap my-4 py-3">
                        <div class="d-flex align-items-start me-4 mt-3 gap-3">
                          <span class="badge bg-label-primary p-2 rounded"><i class="bx bx-check bx-sm"></i></span>
                          <div>
                            <h5 class="mb-0">구독자</h5>
                            <span>${channelSum.total_subscribers} 명</span>
                          </div>
                        </div>
                        <div class="d-flex align-items-start mt-3 gap-3">
                          <span class="badge bg-label-primary p-2 rounded"><i class="bx bx-customize bx-sm"></i></span>
                          <div>
                            <h5 class="mb-0">컨텐츠 수</h5>
                            <span>${channelSum.total_contents} 개</span>
                          </div>
                        </div>
                      </div>
                      <h5 class="pb-2 border-bottom mb-4">상세정보</h5>
                      <div class="info-container">
                        <ul class="list-unstyled">
                          <li class="mb-3">
                            <span class="fw-medium me-2">이름:</span>
                            <span>${creatorInfo.cre_name}</span>
                          </li>
                          <li class="mb-3">
                            <span class="fw-medium me-2">성별:</span>
                            <span>${creatorInfo.cre_gender}</span>
                          </li>
                          <li class="mb-3">
                            <span class="fw-medium me-2">생년월일:</span>
                            <span>${creatorInfo.cre_birthday}</span>
                          </li>
                          <li class="mb-3">
                            <span class="fw-medium me-2">국적:</span>
                            <span>${creatorInfo.cre_country}</span>
                          </li>
                          <li class="mb-3">
                            <span class="fw-medium me-2">연락처:</span>
                            <span>${creatorInfo.cre_phone}</span>
                          </li>
                          <li class="mb-3">
                            <span class="fw-medium me-2">Email:</span>
                            <span>${creatorInfo.cre_email}</span>
                          </li>
                          <li class="mb-3">
                            <span class="fw-medium me-2">주소:</span>
                            <span>${creatorInfo.cre_address}</span>
                            <span class="fw-medium me-2"> , </span>
                            <span>${creatorInfo.cre_address_detail}</span>
                          </li>
                          <li class="mb-3">
                            <span class="fw-medium me-2">계약 시작일:</span>
                            <span>${creatorInfo.cre_contract_start}</span>
                          </li>
                          <li class="mb-3">
                            <span class="fw-medium me-2">계약 만료일:</span>
                            <span>${creatorInfo.cre_contract_end}</span>
                          </li>
                          
                        </ul>
                        
                      </div>
                    </div>
                  </div>
                  <!-- /User Card -->
                  <!-- Plan Card -->
                  <div class="card mb-4">
                    <div class="card-body">
                      
                      <h5 class="pb-2 border-bottom mb-4">특이사항</h5>
                      <p class="fw-medium me-2">${creatorInfo.cre_specifics}</p>
                      
                      
                    </div>
                    
                  </div>
                  <!-- /Plan Card -->
                  <!-- Plan Card -->
                  <div class="card mb-4">
                    <div class="card-body">
                      <div class="row">
				        <div class="col-md-6">
				            <h5 class="card-header">열람권한</h5>
				        </div>
				        <div class="col-md-6 text-end mt-4">
				        	<button type="button" onclick="addPerm()" class="card-header plus no-border" data-bs-toggle="modal" data-bs-target="#apv-org-modal">+추가</button>
				        </div>
				        <h5 class="pb-2 border-bottom mb-4">
				    </div>
					<p class="fw-medium me-2 creator-list-container">
					    <ul id="creator-list-ul">
					        <c:forEach var="creatorPermList" items="${creatorPermList}" varStatus="loop">
					            <div>
					                <input class="permEmp_id" type="hidden" value="${creatorPermList.emp_id}" />
					                ${creatorPermList.emp_name} ${creatorPermList.grade_name}(${creatorPermList.dept_name})
					                <i class='bx bx-x' onclick="delPerm(this)"></i>
					            </div>
					        </c:forEach>
					    </ul>
					</p>
                      
                      
                    </div>
                    
                  </div>
                  <!-- /Plan Card -->
                  
                </div>
                <!--/ User Sidebar -->

                <!-- User Content -->
                <div class="col-xl-8 col-lg-7 col-md-7 order-0 order-md-1">
                  <!-- 탭 메뉴 영역 -->
                  <div class="row" style="flex-wrap: nowrap;">
		            <div class="col-md-8">
		   			  <!-- 탭 추가 -->                    
		   			  <ul class="nav nav-pills" role="tablist">
		   			    <li class="nav-item">
		       		      <button 
		       		      		class="nav-link active" 
		       		      		data-bs-toggle="tab" 
		       		      		data-bs-target="#form-tabs-first" 
		       		      		role="tab" 
		       		      		aria-selected="true">
		         				<i class='bx bx-face' ></i>크리에이터 정보
		       		      </button>
		   			    </li>
		   			    <li class="nav-item">
		     			  <button 
		     			  		class="nav-link" 
		     			  		data-bs-toggle="tab" 
		     			  		data-bs-target="#form-tabs-second" 
		     			  		role="tab" 
		     			  		aria-selected="false" >
		       					<i class='bx bxl-sketch' ></i>대표 채널 정보
		    			  </button>
		   			    </li>
		   			    <!-- <li class="nav-item">
		     			  <button 
		     			  		class="nav-link" 
		     			  		data-bs-toggle="tab" 
		     			  		data-bs-target="#form-tabs-third" 
		     			  		role="tab" 
		     			  		aria-selected="false" >
		       					<i class='bx bxl-youtube' ></i>컨텐츠 정보(임시)
		    			  </button>
		   			    </li> -->
		   			  </ul>
		   			</div>
		   			<div>
		   			 <c:if test="${deptCheck eq true}">
		   			  <div class="col-md-4 text-end">
	                  	<div class="d-flex justify-content-center pt-3">
	                          <a
	                            href="/creators/creatorUpdate.go?cre_idx=${creatorInfo.cre_idx}"
	                            class="btn btn-primary me-3">수정</a>
	                          <a href="javascript:;" class="btn btn-label-danger suspend-user">삭제</a>
	                     </div>
                   	  </div>
                   	  </c:if>
		   			</div>
		   		  </div>
                  <!--/ 탭 메뉴 영역 -->
                  
                  <!-- 탭 컨텐츠 영역 -->
                  <div class="tab-content p-0 pt-3">
                  
				  	<!-- 기본 정보 영역 -->
				  	<div class="tab-pane fade active show" id="form-tabs-first" role="tabpanel">
				      <!-- 채널 리스트 -->
				      <div class="card mb-4" >
				        <h5 class="card-header">활동 채널 리스트</h5>
				        <div class="table-responsive mb-3">
				          <table class="table datatable-project border-top">
				            <thead>
				              <tr>
				                <th>채널명</th>
				                <th>카테고리</th>
				                <th>구독자 수</th>
				                <th>컨텐츠 수</th>
				                <th>총 조회수</th>
				                <th>가입일자</th>
				              </tr>
				            </thead>
				            <tbody>
				              <c:forEach var="channelInfo" items="${channelInfoList}">
				            	<tr>
				            	  
				                  <th>
				                  	<a href="https://www.youtube.com/channel/${channelInfo.channel_id}" onclick="window.open(this.href, '_blank', 'width=1000,height=800'); return false;">
				                  	  ${channelInfo.channel_name}
				                  	</a>
				                  	<c:if test="${channelInfo.rep_channel eq '1'}">
				                  		<input id="repChannelId" type="hidden" value="${channelInfo.channel_id}"/>
				                  		<span class="badge bg-label-primary">대표</span>
				                  	</c:if>
				                  </th>
				                  <th>${channelInfo.channel_cate}</th>
				                  <th>${channelInfo.subscriber} 명</th>
				                  <th>${channelInfo.contents} 개</th>
				                  <th>${channelInfo.views} 회</th>
				                  <th>${channelInfo.channel_date}</th>
				              	</tr>
				           	  </c:forEach>
				            </tbody>
				          </table>
				        </div>
				      </div>
				      <!-- / 채널 리스트 -->
				      <!-- SNS 리스트 -->
				      <div class="card mb-4">
				        <h5 class="card-header">SNS</h5>
				        <div class="table-responsive mb-3">
				          <table class="table datatable-project border-top">
				            <thead>
				              <tr>                         
				                <th>SNS</th>
				                <th>주소</th>
				              </tr>
				            </thead>
				            <tbody>
				              <c:forEach var="snsItem" items="${snsList}">
				            	<tr>                         
				                  <th>
				                  	<c:choose>
				                  	  <c:when test="${snsItem.sns_cate eq 'instagram'}">
				                  	    <img src="/sns_logo/instagram.png" alt="instagram" class="me-3" height="20">
				                  	  </c:when>
				                  	  <c:when test="${snsItem.sns_cate eq 'facebook'}">
				                  	    <img src="/sns_logo/facebook.png" alt="facebook" class="me-3" height="20">
				                      </c:when>
				                  	  <c:when test="${snsItem.sns_cate eq 'twitter'}">
				                  	    <img src="/sns_logo/twitter.png" alt="twitter" class="me-3" height="20">
				                  	  </c:when>
				                  	  <c:when test="${snsItem.sns_cate eq 'tiktok'}">
				                  	    <img src="/sns_logo/tiktok.png" alt="tiktok" class="me-3" height="20">
				                  	  </c:when>
				                  	  <c:otherwise>
				                  	  	<div class="custom-logo me-3">${snsItem.sns_cate.substring(0, 1)}</div>
				                  	  </c:otherwise>
				                  	</c:choose>
				                  	${snsItem.sns_cate}
				                  </th>
				                  <th>
				                  	<a href="${snsItem.sns_url}" onclick="window.open(this.href, '_blank', 'width=1000,height=800'); return false;">${snsItem.sns_url}</a>
				                  </th>
				              	</tr>
				              </c:forEach>
				            </tbody>
				          </table>
				        </div>
				      </div>
				      <!-- / SNS 리스트 -->
				      <!-- 활동이력 Timeline -->
				      <div class="card mb-4">
				        <h4 class="card-header">활동이력</h4>
				        <div class="card-body">
				          <ul class="timeline">
				          <!-- 
					         danger		: 빨강	: 채널시작
					         primary	: 보라	: 구독자
					         info		: 하늘	: 조회수
					         warning	: 노랑	: 버튼획득
					         success	: 초록	: 수상
					         dark		: 검정	: 미정
				           -->
				           <c:forEach var="hisItem" items="${creatorHistory}">
				            <li class="timeline-item timeline-item-transparent">
				              <span class="timeline-point-wrapper">
				              <c:if test="${hisItem.cre_his_cate eq '채널시작'}">
				              	<span class="timeline-point timeline-point-danger"></span>
				              </c:if>
				              <c:if test="${hisItem.cre_his_cate eq '구독자'}">
				              	<span class="timeline-point timeline-point-primary"></span>
				              </c:if>
				              <c:if test="${hisItem.cre_his_cate eq '조회수'}">
				              	<span class="timeline-point timeline-point-info"></span>
				              </c:if>
				              <c:if test="${hisItem.cre_his_cate eq '버튼획득'}">
				              	<span class="timeline-point timeline-point-warning"></span>
				              </c:if>
				              <c:if test="${hisItem.cre_his_cate eq '수상이력'}">
				              	<span class="timeline-point timeline-point-success"></span>
				              </c:if>
				              </span>
				              <div class="timeline-event">
				                <div class="timeline-header mb-1">
				                  <h6 class="mb-0">${hisItem.cre_his_title}</h6>
				                  <small class="text-muted">${hisItem.history_date}</small>
				                </div>
				                <p class="mb-2">${hisItem.cre_his_content}</p>
				                
				              </div>
				            </li>
				           </c:forEach>
				       
				            <li class="timeline-end-indicator">
				              <i class="bx bx-check-circle"></i>
				            </li>
				          </ul>
				        </div>
				      </div>
				      <!-- / 활동이력 Timeline -->
					</div>
					
				   	<!-- 채널 데이터 영역 -->
				 	<div class="tab-pane fade" id="form-tabs-second" role="tabpanel">
				   	   <!-- Line Chart (조회수 추이)-->
					   <div class="col-12 mb-4">
					     <div class="card">
					       <div class="card-header d-flex justify-content-between">
					         <div>
					           <h5 class="card-title mb-0">일일 조회수 추이</h5>
					           <small class="text-muted">조회수 변동값 체크를 통해 알고리즘 상태와 채널 성장도 체크</small>
					         </div>
					       </div>
					       <div class="card-body">
				             <div id="lineChart"></div>
					       </div>
					     </div>
					   </div>
				       <!-- / Line Chart (조회수 추이)-->
				   
				   	   <!-- Line Area Chart1 -->
					   <div class="card mb-4">
					       <div class="card-header d-flex justify-content-between">
					         <div>
					           <h5 class="card-title mb-0">일별 구독자 수</h5>
					           <small class="text-muted">구독자 성장세 확인</small>
					         </div>
					         <!-- 달력 드롭다운 영역-->
					         <div class="dropdown">
					           <button
					             type="button"
					             class="btn dropdown-toggle px-0"
					             data-bs-toggle="dropdown"
					             aria-expanded="false">
					             <i class="bx bx-calendar"></i>
					           </button>
					           <ul class="dropdown-menu dropdown-menu-end">
					             <li>
					               <a href="javascript:void(0);" 
					                 class="dropdown-item d-flex align-items-center">
					                 Today
					               </a>
					             </li>
					             <li>
					               <a href="javascript:void(0);" 
					                 class="dropdown-item d-flex align-items-center">
					                 Yesterday
					               </a>
					             </li>
					             <li>
					               <a href="javascript:void(0);" 
					               	 class="dropdown-item d-flex align-items-center">
					               	 Last 7 Days
				               	   </a>
					             </li>
					             <li>
					               <a href="javascript:void(0);" 
					               	class="dropdown-item d-flex align-items-center">
					               	Last 30 Days
					               </a>
					             </li>
					             <li>
					               <hr class="dropdown-divider" />
					             </li>
					             <li>
					               <a href="javascript:void(0);" 
					               	class="dropdown-item d-flex align-items-center">
					               	Current Month
					               </a>
					             </li>
					             <li>
					               <a href="javascript:void(0);" class="dropdown-item d-flex align-items-center">Last Month</a>
					             </li>
					           </ul>
					         </div>
					         <!--  / 달력 드롭다운 영역--> 
					       </div>
					       <div class="card-body">
					         <div id="lineAreaChart1">
					         <!-- 스크립트로 그려질 차트 영역 -->
					         </div>
			       	   	   </div>
					   </div>
					   <!-- /Line Area Chart1 -->
					   <!-- Line Area Chart2 -->
					   <div class="card mb-4">
					       <div class="card-header d-flex justify-content-between">
					         <div>
					           <h5 class="card-title mb-0">일별 조회 수</h5>
					           <small class="text-muted">구독자 성장세 확인</small>
					         </div>
					         <!-- 달력 드롭다운 영역-->
					         <div class="dropdown">
					           <button
					             type="button"
					             class="btn dropdown-toggle px-0"
					             data-bs-toggle="dropdown"
					             aria-expanded="false">
					             <i class="bx bx-calendar"></i>
					           </button>
					           <ul class="dropdown-menu dropdown-menu-end">
					             <li>
					               <a href="javascript:void(0);" 
					                 class="dropdown-item d-flex align-items-center">
					                 Today
					               </a>
					             </li>
					             <li>
					               <a href="javascript:void(0);" 
					                 class="dropdown-item d-flex align-items-center">
					                 Yesterday
					               </a>
					             </li>
					             <li>
					               <a href="javascript:void(0);" 
					               	 class="dropdown-item d-flex align-items-center">
					               	 Last 7 Days
				               	   </a>
					             </li>
					             <li>
					               <a href="javascript:void(0);" 
					               	class="dropdown-item d-flex align-items-center">
					               	Last 30 Days
					               </a>
					             </li>
					             <li>
					               <hr class="dropdown-divider" />
					             </li>
					             <li>
					               <a href="javascript:void(0);" 
					               	class="dropdown-item d-flex align-items-center">
					               	Current Month
					               </a>
					             </li>
					             <li>
					               <a href="javascript:void(0);" class="dropdown-item d-flex align-items-center">Last Month</a>
					             </li>
					           </ul>
					         </div>
					         <!--  / 달력 드롭다운 영역--> 
					       </div>
					       <div class="card-body">
					         <div id="lineAreaChart2">
					         <!-- 스크립트로 그려질 차트 영역 -->
					         </div>
			       	   	   </div>
					   </div>
					   <!-- /Line Area Chart2 -->
					   <!-- Line Area Chart3 -->
					   <div class="card mb-4">
					       <div class="card-header d-flex justify-content-between">
					         <div>
					           <h5 class="card-title mb-0">영상 컨텐츠 수</h5>
					           <small class="text-muted">영상 업로드 주기 확인</small>
					         </div>
					         <!-- 달력 드롭다운 영역-->
					         <div class="dropdown">
					           <button
					             type="button"
					             class="btn dropdown-toggle px-0"
					             data-bs-toggle="dropdown"
					             aria-expanded="false">
					             <i class="bx bx-calendar"></i>
					           </button>
					           <ul class="dropdown-menu dropdown-menu-end">
					             <li>
					               <a href="javascript:void(0);" 
					                 class="dropdown-item d-flex align-items-center">
					                 Today
					               </a>
					             </li>
					             <li>
					               <a href="javascript:void(0);" 
					                 class="dropdown-item d-flex align-items-center">
					                 Yesterday
					               </a>
					             </li>
					             <li>
					               <a href="javascript:void(0);" 
					               	 class="dropdown-item d-flex align-items-center">
					               	 Last 7 Days
				               	   </a>
					             </li>
					             <li>
					               <a href="javascript:void(0);" 
					               	class="dropdown-item d-flex align-items-center">
					               	Last 30 Days
					               </a>
					             </li>
					             <li>
					               <hr class="dropdown-divider" />
					             </li>
					             <li>
					               <a href="javascript:void(0);" 
					               	class="dropdown-item d-flex align-items-center">
					               	Current Month
					               </a>
					             </li>
					             <li>
					               <a href="javascript:void(0);" class="dropdown-item d-flex align-items-center">Last Month</a>
					             </li>
					           </ul>
					         </div>
					         <!--  / 달력 드롭다운 영역--> 
					       </div>
					       <div class="card-body">
					         <div id="lineAreaChart3">
					         <!-- 스크립트로 그려질 차트 영역 -->
					         </div>
			       	   	   </div>
					   </div>
					   <!-- /Line Area Chart3 -->
				    </div>
				    <!-- / 체널 데이터 영역 -->
				   
				</div>
				<!-- / 탭 콘텐츠 영역 -->
				
               </div>
               <!--/ User Content -->
             </div>

           </div>
            <!-- / Content -->

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
    <script src="../../assets/vendor/libs/moment/moment.js"></script>
    <script src="../../assets/vendor/libs/datatables-bs5/datatables-bootstrap5.js"></script>
    <script src="../../assets/vendor/libs/sweetalert2/sweetalert2.js"></script>
    <script src="../../assets/vendor/libs/cleavejs/cleave.js"></script>
    <script src="../../assets/vendor/libs/cleavejs/cleave-phone.js"></script>
    <script src="../../assets/vendor/libs/select2/select2.js"></script>
    <script src="../../assets/vendor/libs/@form-validation/umd/bundle/popular.min.js"></script>
    <script src="../../assets/vendor/libs/@form-validation/umd/plugin-bootstrap5/index.min.js"></script>
    <script src="../../assets/vendor/libs/@form-validation/umd/plugin-auto-focus/index.min.js"></script>
    <script src="../../assets/vendor/libs/apex-charts/apexcharts.js"></script>
    <script src="../../assets/vendor/libs/jstree/jstree.js"></script>

    <!-- Main JS -->
    <script src="../../assets/js/main.js"></script>

    <!-- Page JS -->
<!--     <script src="../../assets/js/modal-edit-user.js"></script>
    <script src="../../assets/js/app-user-view.js"></script>
    <script src="../../assets/js/app-user-view-account.js"></script> -->
    <script>
    var selectedNodes = []; // 전역 범위에서 정의
    var permEmpIds = [];
    $('.permEmp_id').each(function() {
        permEmpIds.push($(this).val());
    });

    // permEmpIds 배열에는 각 요소의 값이 저장됨
    console.log(permEmpIds);
/*     var creatorPermList = ${creatorPermList};

 // 값이 존재하면 처리
 if (creatorPermList != null) {
     console.log("권한 리스트",creatorPermList);
     drowCreatorPermList(creatorPermList);
 } */
    	
    
    
    function addPerm(){
    	console.log("열람자 추가 버튼 클릭");
    	// 모달이 열릴 때마다 체크박스 초기화
        
    	 
    	//리스트 받기
    		$.ajax({
    		type: 'get',
        	url: '../../getOrgList',
        	data: {},
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
        var cre_idx = $('#cre_idx').val();
        console.log(cre_idx);
        console.log(emp_id);
        
     // AJAX 요청
        $.ajax({
            type: 'POST',
            url: '/delPerm',  // 실제 서버 엔드포인트로 수정
            contentType: 'application/json',
            data: JSON.stringify({ emp_id: emp_id, cre_idx: cre_idx }),
            success: function (data) {
                // 서버 응답에 대한 처리
                console.log(data);
                if (data.idx !== null) {
                    console.log(data.idx);
                    drowCreatorPermList(data.creatorPermList);
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
    
    $(document).ready(function () {  	
    	
    	//체크시 조직도 이벤트 (담당자)
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
    	var cre_idx=$('#cre_idx').val();
    	console.log(cre_idx);
    	
    	// 데이터 객체 생성
        var requestData = {
            selectedNodes: selectedNodes,
            cre_idx: cre_idx
        };
    	
    	
      	$.ajax({
            type: 'POST',
            url: '/addCreator_perm',
            contentType: 'application/json',
            data: JSON.stringify(requestData),
            success: function (data) {
            	
                console.log(data);
                if (data.idx !== null) {
                    console.log(data.idx);
                    drowCreatorPermList(data.creatorPermList);
                    /* location.href = '../creators/creatorDetail.go?cre_idx='+cre_idx; */
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
    function drowCreatorPermList(creatorPermList) {
        var $ul = $('<ul>');

        creatorPermList.forEach(function (creator) {
            var $div = $('<div>').html(
            		'<input class="permEmp_id" type="hidden" value="' + creator.emp_id + '" />' +	
                creator.emp_name + ' ' + creator.grade_name + '(' + creator.dept_name + ')'
                + ' <i class="bx bx-x" onclick="delPerm(this)"></i>'
            );
            $ul.append($div);
        });

        // 기존의 내용을 비우고 새로운 내용을 추가
        $('#creator-list-ul').empty().append($ul);
    }
 
 
 
 
    
    
    </script>
    
    
    <script>
    /**
     * Charts Apex
     */

    'use strict';
	var repChannelId = $('#repChannelId').val();
	console.log('repChannelId : ',repChannelId);
    $.ajax({
    	type: 'get',
    	url: '/getChartData.ajax',
    	data: {'repChannelId': repChannelId},
    	dataType: 'JSON',
    	success: function(data){
    		console.log(data.channelDataList);
    		chart(data.channelDataList);
    	},
    	error: function(e){
    		console.log(e);
    	}
    	
    });
    
    
    function chart(dataList) {
      // 가져온 데이터 담기
	  let subList = [];
      let viewList = [];
      let contentList = [];
      let dateList = [];
      let viewTrendList = [];
      
      function formatDate(dateString) {	// 날짜 형식 바꿔주는 함수
    	  const options = { month: '2-digit', day: '2-digit'};
    	  const formattedDate = new Date(dateString).toLocaleDateString('ko-KR', options);
    	  return formattedDate;
      }
      
      for(let i =0; i<dataList.length; i++){
    	  const subs = dataList[i].subscriber;
    	  const view = dataList[i].views;
    	  const content = dataList[i].contents;
    	  const date = formatDate(dataList[i].channel_data_date);
    	  const viewTrend = dataList[i].view_trend;
	      subList.push(subs);	
	      viewList.push(view);	
	      contentList.push(content);
	      dateList.push(date);
	      viewTrendList.push(viewTrend);
      }
      console.log('subList:',subList);
      console.log('viewList:',viewList);
      console.log('contentList:',contentList);
      console.log('dateList:',dateList);
      console.log('viewTrendList:',viewTrendList);
   	  // / 가져온 데이터 담기	
   	  
      let cardColor, headingColor, labelColor, borderColor, legendColor;

      if (isDarkStyle) {
        cardColor = config.colors_dark.cardColor;
        headingColor = config.colors_dark.headingColor;
        labelColor = config.colors_dark.textMuted;
        legendColor = config.colors_dark.bodyColor;
        borderColor = config.colors_dark.borderColor;
      } else {
        cardColor = config.colors.cardColor;
        headingColor = config.colors.headingColor;
        labelColor = config.colors.textMuted;
        legendColor = config.colors.bodyColor;
        borderColor = config.colors.borderColor;
      }


      // Line Area Chart1
      // --------------------------------------------------------------------
      const areaChartEl1 = document.querySelector('#lineAreaChart1'),
        areaChartConfig1 = {
          chart: {
            height: 500,
            type: 'area',
            parentHeightOffset: 0,
            toolbar: {
              show: true
            }
          },
          dataLabels: {
            enabled: false
          },
          stroke: {
            show: false,
            curve: 'straight'
          },
          legend: {
            show: true,
            position: 'top',
            horizontalAlign: 'start',
            labels: {
              colors: legendColor,
              useSeriesColors: false
            }
          },
          grid: {
            borderColor: borderColor,
            xaxis: {
              lines: {
                show: true
              }
            }
          },
          colors: ['#2ecc71'],
          series: [
            {
              name: '구독자 수',
              data: subList
            }
          ],
          xaxis: {
            categories: dateList,
            axisBorder: {
              show: false
            },
            axisTicks: {
              show: false
            },
            labels: {
              style: {
                colors: labelColor,
                fontSize: '13px'
              }
            }
          },
          yaxis: {
            labels: {
              style: {
                colors: labelColor,
                fontSize: '13px'
              }
            }
          },
          fill: {
            opacity: 1,
            type: 'gradient'
          },
          tooltip: {
            shared: false
          }
        };
      if (typeof areaChartEl1 !== undefined && areaChartEl1 !== null) {
        const areaChart = new ApexCharts(areaChartEl1, areaChartConfig1);
        areaChart.render();
      }
      
   	  // Line Area Chart2
      // --------------------------------------------------------------------
      const areaChartEl2 = document.querySelector('#lineAreaChart2'),
        areaChartConfig2 = {
          chart: {
            height: 500,
            type: 'area',
            parentHeightOffset: 0,
            toolbar: {
              show: true
            }
          },
          dataLabels: {
            enabled: false
          },
          stroke: {
            show: false,
            curve: 'straight'
          },
          legend: {
            show: true,
            position: 'top',
            horizontalAlign: 'start',
            labels: {
              colors: legendColor,
              useSeriesColors: false
            }
          },
          grid: {
            borderColor: borderColor,
            xaxis: {
              lines: {
                show: true
              }
            }
          },
          colors: ['#3498db'],
          series: [
            {
              name: '총 조회 수',
              data: viewList
            },
          ],
          xaxis: {
            categories: dateList,
            axisBorder: {
              show: false
            },
            axisTicks: {
              show: false
            },
            labels: {
              style: {
                colors: labelColor,
                fontSize: '13px'
              }
            }
          },
          yaxis: {
            labels: {
              style: {
                colors: labelColor,
                fontSize: '13px'
              }
            }
          },
          fill: {
            opacity: 1,
            type: 'gradient'
          },
          tooltip: {
            shared: false
          }
        };
      if (typeof areaChartEl2 !== undefined && areaChartEl2 !== null) {
        const areaChart = new ApexCharts(areaChartEl2, areaChartConfig2);
        areaChart.render();
      }
		
      
     // Line Area Chart3
      // --------------------------------------------------------------------
      const areaChartEl3 = document.querySelector('#lineAreaChart3'),
        areaChartConfig3 = {
          chart: {
            height: 500,
            type: 'area',
            parentHeightOffset: 0,
            toolbar: {
              show: true
            }
          },
          dataLabels: {
            enabled: false
          },
          stroke: {
            show: false,
            curve: 'straight'
          },
          legend: {
            show: true,
            position: 'top',
            horizontalAlign: 'start',
            labels: {
              colors: legendColor,
              useSeriesColors: false
            }
          },
          grid: {
            borderColor: borderColor,
            xaxis: {
              lines: {
                show: true
              }
            }
          },
          colors: ['#e74c3c'],
          series: [
            {
              name: '컨텐츠 수',
              data: contentList
            }
          ],
          xaxis: {
            categories: dateList,
            axisBorder: {
              show: false
            },
            axisTicks: {
              show: false
            },
            labels: {
              style: {
                colors: labelColor,
                fontSize: '13px'
              }
            }
          },
          yaxis: {
            labels: {
              style: {
                colors: labelColor,
                fontSize: '13px'
              }
            }
          },
          fill: {
            opacity: 1,
            type: 'gradient'
          },
          tooltip: {
            shared: false
          }
        };
      if (typeof areaChartEl3 !== undefined && areaChartEl3 !== null) {
        const areaChart = new ApexCharts(areaChartEl3, areaChartConfig3);
        areaChart.render();
      }

      // Line Chart
      // --------------------------------------------------------------------
      const lineChartEl = document.querySelector('#lineChart'),
        lineChartConfig = {
          chart: {
            height: 400,
            type: 'line',
            parentHeightOffset: 0,
            zoom: {
              enabled: false
            },
            toolbar: {
              show: false
            }
          },
          series: [
            {
              data: viewTrendList
            }
          ],
          markers: {
            strokeWidth: 7,
            strokeOpacity: 1,
            strokeColors: [cardColor],
            colors: [config.colors.warning]
          },
          dataLabels: {
            enabled: false
          },
          stroke: {
            curve: 'straight'
          },
          colors: [config.colors.warning],
          grid: {
            borderColor: borderColor,
            xaxis: {
              lines: {
                show: true
              }
            },
            padding: {
              top: -20
            }
          },
          tooltip: {
            custom: function ({ series, seriesIndex, dataPointIndex, w }) {
              return '<div class="px-3 py-2">' + '<span>' + series[seriesIndex][dataPointIndex] + '회</span>' + '</div>';
            }
          },
          xaxis: {
            categories: dateList,	// 날짜 데이터
            axisBorder: {
              show: false
            },
            axisTicks: {
              show: false
            },
            labels: {
              style: {
                colors: labelColor,
                fontSize: '13px'
              }
            }
          },
          yaxis: {
            labels: {
              style: {
                colors: labelColor,
                fontSize: '13px'
              }
            }
          }
        };
      if (typeof lineChartEl !== undefined && lineChartEl !== null) {
        const lineChart = new ApexCharts(lineChartEl, lineChartConfig);
        lineChart.render();
      }

    };
    </script>
  </body>
</html>
