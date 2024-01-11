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
    <link rel="stylesheet" href="../../assets/vendor/libs/flatpickr/flatpickr.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/jstree/jstree.css" /> <!-- 조직도 -->

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
		--bs-badge-padding-x: 1.22em;
	  --bs-badge-padding-y: 0.32em;
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
	
	/*project-add*/
	
	.project-add-button{
			display: flex;
	    justify-content: center;
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
	
	.project-entry .bx-x{
		color:#fff;
	}
	/* 조직도 모달 */
    div#projModal {
	    width: 350px;
    	height: 430px;
    	background-color: white;
	}
    div#projModal1 {
    	width: 350px;
    	height: 430px;
    	background-color: white;
	}
	.card-body {
    	overflow-y: auto;
    	max-height: 85%;
	}
    /* 조직도 모달 여기까지 */
    </style>
  </head>

  <body>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
        <!-- 여기서부터 붙여넣기 -->
      
        <!-- Menu -->
        
        <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
          <div class="app-brand demo">
            <a href="../home.go" class="app-brand-link">
              <span class="app-brand-logo demo">
              	<img src="../../assets/img/branding/logo.png" class="logo_beHit" width="96px"/>
              </span>
            </a>

            <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto">
              <i class="bx bx-chevron-left bx-sm align-middle"></i>
            </a>
          </div>

          <div class="menu-inner-shadow"></div>

          <ul class="menu-inner py-1">
            <!-- Dashboards -->
            <li class="menu-item">
              <a href="../home.go" class="menu-link">
                <i class="menu-icon tf-icons bx bx-home-circle"></i>
                <div class="text-truncate" data-i18n="홈">홈</div>
              </a>
            </li>
            
            <li class="menu-item">
              <a href="../approval/approval_main.go" class="menu-link">
                <i class="menu-icon tf-icons bx bx-food-menu"></i>
                <div class="text-truncate" data-i18n="전자 결재">전자 결재</div>
              </a>
            </li>
            
            <li class="menu-item">
              <a href="../creators/creator_list_all.go" class="menu-link">
                 <i class="menu-icon tf-icons bx bx-slideshow"></i>
                <div class="text-truncate" data-i18n="크리에이터">크리에이터</div>
              </a>
            </li>
            
            <li class="menu-item active">
              <a href="../project/project_main.go" class="menu-link">
                 <i class="menu-icon tf-icons bx bx-customize"></i>
                <div class="text-truncate" data-i18n="프로젝트">프로젝트</div>
              </a>
            </li>
            
            <li class="menu-item">
              <a href="../calendar/calendar.go" class="menu-link">
                 <i class="menu-icon tf-icons bx bx-calendar"></i>
                <div class="text-truncate" data-i18n="캘린더">캘린더</div>
              </a>
            </li>
            
            <li class="menu-item">
              <a href="../reserve/reserveRoom_list.go" class="menu-link">
                 <i class="menu-icon tf-icons bx bx-time-five"></i>
                <div class="text-truncate" data-i18n="예약">예약</div>
              </a>
            </li>
            
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-pie-chart-alt-2"></i>
                <div class="text-truncate" data-i18n="근태관리">근태관리</div>
              </a>

              <ul class="menu-sub">
              	<li class="menu-item">
                  <a href="../myHr/mhr_timeline.go" class="menu-link">
                    <div class="text-truncate" data-i18n="내 근태관리">내 근태관리</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="../myHr/mhr_vacation.go" class="menu-link">
                    <div class="text-truncate" data-i18n="내 연차내역">내 연차내역</div>
                  </a>
                </li>
              </ul>
            </li>
            
            <li class="menu-item">
              <a href="../chat/messenger.go" class="menu-link">
                 <i class="menu-icon tf-icons bx bx-chat"></i>
                <div class="text-truncate" data-i18n="메신저">메신저</div>
              </a>
            </li>
            
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-user"></i>
                <div class="text-truncate" data-i18n="인사 관리">인사 관리</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="../employee/employee_list.go" class="menu-link">
                    <div class="text-truncate" data-i18n="직원 관리">직원 관리</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="javascript:void(0);" class="menu-link menu-toggle">
                    <div class="text-truncate" data-i18n="근태 관리">근태 관리</div>
                  </a>
                  <ul class="menu-sub">
                    <li class="menu-item">
                      <a href="../employee/workHour_list.go" class="menu-link">
                        <div class="text-truncate" data-i18n="근태 현황">근태 현황</div>
                      </a>
                    </li>
                    <li class="menu-item">
                      <a href="../employee/vacation_list.go" class="menu-link">
                        <div class="text-truncate" data-i18n="연차 관리">연차 관리</div>
                      </a>
                    </li>
                  </ul>
                </li>
              </ul>
            </li>
          </ul>
        </aside>
        <!-- / Menu -->

        <!-- Layout container -->
        <div class="layout-page">
          <!-- Navbar -->

          <nav
            class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme"
            id="layout-navbar">
            <div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
              <a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)">
                <i class="bx bx-menu bx-sm"></i>
              </a>
            </div>

            <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">
              <!-- Search -->
              <div class="navbar-nav align-items-center">
                
              </div>
              <!-- /Search -->

              <ul class="navbar-nav flex-row align-items-center ms-auto">
                <!-- Language -->
                <li class="nav-item dropdown-language dropdown me-2 me-xl-0">
                  
                </li>
                <!-- /Language -->

                <!-- Quick links  -->
                <li class="nav-item dropdown-shortcuts navbar-dropdown dropdown me-2 me-xl-0">
                  
                </li>
                <!-- Quick links -->

                <!-- Style Switcher -->
                <li class="nav-item dropdown-style-switcher dropdown me-2 me-xl-0">
                  
                </li>
                <!-- / Style Switcher-->

                <!-- Notification -->
                <li class="nav-item dropdown-notifications navbar-dropdown dropdown me-3 me-xl-1">
                  <a
                    class="nav-link dropdown-toggle hide-arrow"
                    href="javascript:void(0);"
                    data-bs-toggle="dropdown"
                    data-bs-auto-close="outside"
                    aria-expanded="false">
                    <i class="bx bx-bell bx-sm"></i>
                    <span class="badge bg-danger rounded-pill badge-notifications">5</span>
                  </a>
                  <ul class="dropdown-menu dropdown-menu-end py-0">
                    <li class="dropdown-menu-header border-bottom">
                      <div class="dropdown-header d-flex align-items-center py-3">
                        <h5 class="text-body mb-0 me-auto">알림</h5>
                        <a
                          href="javascript:void(0)"
                          class="dropdown-notifications-all text-body"
                          data-bs-toggle="tooltip"
                          data-bs-placement="top"
                          title="Mark all as read"
                          ><i class="bx fs-4 bx-envelope-open"></i
                        ></a>
                      </div>
                    </li>
                    <li class="dropdown-notifications-list scrollable-container">
                      <ul class="list-group list-group-flush">
                        <li class="list-group-item list-group-item-action dropdown-notifications-item">
                          <div class="d-flex">
                            <div class="flex-shrink-0 me-3">
                              <div class="avatar">
                                <img src="../../assets/img/avatars/1.png" alt class="w-px-40 h-auto rounded-circle" />
                              </div>
                            </div>
                            <div class="flex-grow-1">
                              <h6 class="mb-1">윤예성님이 메세지를 보냈습니다 메세지 확인해보세요~~~~~~~~</h6>
                              <small class="text-muted">11:00</small>
                            </div>
                            <div class="flex-shrink-0 dropdown-notifications-actions">
                              <a href="javascript:void(0)" class="dropdown-notifications-read"
                                ><span class="badge badge-dot"></span
                              ></a>
                              <a href="javascript:void(0)" class="dropdown-notifications-archive"
                                ><span class="bx bx-x"></span
                              ></a>
                            </div>
                          </div>
                        </li>
                      </ul>
                    </li>
                    <li class="dropdown-menu-footer border-top p-3">
                      <button class="btn btn-primary text-uppercase w-100">알림 전체 삭제</button>
                    </li>
                  </ul>
                </li>
                <!--/ Notification -->
                <!-- User -->
                <li class="nav-item navbar-dropdown dropdown-user dropdown">
                  <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
                    <div class="avatar avatar-online">
                      <img src="../../assets/img/avatars/1.png" alt class="w-px-40 h-auto rounded-circle" />
                    </div>
                  </a>
                  <ul class="dropdown-menu dropdown-menu-end">
                    <li>
                      <a class="dropdown-item" href="pages-account-settings-account.go">
                        <div class="d-flex">
                          <div class="flex-shrink-0 me-3">
                            <div class="avatar avatar-online">
                              <img src="../../assets/img/avatars/1.png" alt class="w-px-40 h-auto rounded-circle" />
                            </div>
                          </div>
                          <div class="flex-grow-1">
                            <span class="fw-medium d-block">John Doe</span>
                            <small class="text-muted">Admin</small>
                          </div>
                        </div>
                      </a>
                    </li>
                    <li>
                      <div class="dropdown-divider"></div>
                    </li>
                    <li>
                      <a class="dropdown-item" href="auth-login-cover.go" target="_blank">
                        <i class="bx bx-power-off me-2"></i>
                        <span class="align-middle">Log Out</span>
                      </a>
                    </li>
                  </ul>
                </li>
                <!--/ User -->
              </ul>
            </div>

            <!-- Search Small Screens -->
            
          </nav>

          <!-- / Navbar -->
          
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
                    
                    <div class="sidebar-header pt-3 px-3 mx-1">
                      <div class="d-flex align-items-center me-3 me-lg-0">
                        <button type="button" id="project-add-move" class="btn btn-primary text-nowrap">프로젝트 추가</button>
                       </div>
                    </div>
                    
                    <hr class="container-m-nx mt-3 mb-0" />
                    
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
										<h4 class="pt-4 pb-2 px-3">프로젝트 추가</h4>
										
										<hr class="my-3" />
										<!-- 지연된 프로젝트일시 -->
										<!-- 프로젝트 제목 -->
										<input id="createId" type="hidden" value="${sessionScope.loginInfo.getEmp_id()}"/>
										<div class="fs-5 px-3 fw-semibold">프로젝트 제목</div>
										<div class="project-subject col-12">
											<span class="project-subject-left col-12">
												<span class="py-2 px-3 fs-4 col-12">
													<input id="defaultInput" class="form-control" type="text" placeholder="프로젝트 제목을 입력하세요">
												</span>
											</span>
										</div>
										
										<div class="project-entry px-3">
											<div class="project-entry-ls">
												<h5>담당자</h5>
												<div class="name">
												<div id="addDamList">
												</div>
													<button onclick="adddam()" type="button" id="confirm-text" class="mx-2"><i class='bx bx-plus'></i> 추가</button>
													<!-- 모달영역에서 그냥 모달자체를 넣기 -->
													<div id="projModal" style="display: none">
														<h5 class="card-header">조직도
														<span style="float: right;"><button style="background: none; border: none;" onclick="closeChartModal()">X</button></span>
														</h5>
														<div class="card-body">
														  <div id="jstree-checkbox"></div>
														</div>														
													</div>
													<!-- 여기까지 모달자체를 넣기 -->
												</div>
											</div>
											<div class="project-entry-ls">
												<h5>참조자</h5>
												<div class="name">
												<div id="addChamList">
												</div>
													<button onclick="addcham()" type="button" id="confirm-text" class="mx-2"><i class='bx bx-plus'></i> 추가</button>
													<div id="projModal1" style="display: none">
														<h5 class="card-header">조직도
														<span style="float: right;"><button style="background: none; border: none;" onclick="closeChartModal1()">X</button></span>
														</h5>
														<div class="card-body">
														  <div id="jstree-checkbox1"></div>
														</div>
													</div>
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
				                            <div class="project-date-start">
				                            	<input type="text" class="form-control" placeholder="YYYY-MM-DD" id="flatpickr-date-before" />
				                            </div>
				                          </div>
				                        </div>
				                      </div>
				                      <div class="col-sm-6 col-lg-6">
				                        <div class="d-flex justify-content-between align-items-start">
				                          <div>
				                            <h5>종료일</h5>
				                            <div class="project-date-end">
				                            	<input type="text" class="form-control" placeholder="YYYY-MM-DD" id="flatpickr-date-after" />
				                            </div>
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
													<div class="project-content-text">
												
 								                  <div id="snow-toolbar"> <!-- 에디터의 툴바 부분 -->
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
												</div>
											</div>
										</div>
										
										<div class="fs-5 m-3">파일 첨부</div>
										<input class="form-control mx-4" type="file" id="formFileMultiple" multiple>
										
										<div class="pt-4 project-add-button">
			                    <button type="reset" class="btn btn-secondary mx-2">작성 취소</button>
			                    <button onclick="et()" type="submit" class="btn btn-primary mx-2">등록</button>
			             	</div>
										
										<hr class="my-3" />
										
									<!-- modal -->
								
                  
                  <div class="app-overlay"></div>
                  
                </div>
              </div>
            </div>
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
    <script src="../../assets/vendor/libs/quill/quill.js"></script> <!-- 주석할수도 -->
    <script src="../../assets/vendor/libs/jstree/jstree.js"></script>
    
    <!-- Flat Picker -->
    <script src="../../assets/vendor/libs/moment/moment.js"></script>
    <script src="../../assets/vendor/libs/flatpickr/flatpickr.js"></script>

    <!-- Main JS -->
    <script src="../../assets/js/main.js"></script>

    <!-- Page JS -->
    <script src="../../assets/js/app-chat.js"></script>
    <script src="../../assets/js/forms-editors.js"></script><!-- 상세 에디터 js -->
    
    <!-- custom JS -->
    <script>
    
    $('#project-add-move').on('click',function(){
    	location.href="../project/project_add.go";
    });
    
 			// 날짜 input
    (function () {
    	  // Flat Picker
    	  // --------------------------------------------------------------------
    	  const flatpickrDateBefore = document.querySelector('#flatpickr-date-before');
    	  const flatpickrDateAfter = document.querySelector('#flatpickr-date-after');

    	  // Date
    	  if (flatpickrDateBefore) {
    	    flatpickrDateBefore.flatpickr({
    	      monthSelectorType: 'static'
    	    });
    	  }
    	  
    	  if (flatpickrDateAfter) {
      	    flatpickrDateAfter.flatpickr({
      	      monthSelectorType: 'static'
      	    });
      	  }
    	  
    })();
 			
    const snowEditor = new Quill('#snow-editor', { // 텍스트에디터
    	  bounds: '#snow-editor',
    	  modules: {
    	    formula: true,
    	    toolbar: '#snow-toolbar'
    	  },
    	  theme: 'snow'
    	});
    </script>
  </body>
  
  
<script> // 스크립트 내코드
//선택된 노드 정보를 담을 배열
var selectedNodes = [];
var selectedNodes1 = [];

	function et() {
		var textsubject = $("#defaultInput").val(); // 제목
		var startproj = $("#flatpickr-date-before").val(); // 시작날짜
		var endproj = $("#flatpickr-date-after").val(); // 종료날짜
		const textContent = snowEditor.getText(); // 내용
		var createId = $("#createId").val(); // 생성자 emp_id
		
		// 파일 첨부
	    var fileInput = document.getElementById('formFileMultiple');
	    var files = fileInput.files;
	    
	    var formData = new FormData();
		
	    formData.append('createId', createId);
	    formData.append('textsubject', textsubject);
	    formData.append('startproj', startproj);
	    formData.append('endproj', endproj);
	    formData.append('textContent', textContent);
	    if (files.length > 0) {
		    for (var i = 0; i < files.length; i++) {
		        formData.append('files[]', files[i]);
		    }
	    }
	    formData.append('selectedNodes', JSON.stringify(selectedNodes));
	    formData.append('selectedNodes1', JSON.stringify(selectedNodes1));
	    
	    /*
		console.log(textContent);
		console.log(textsubject);
		console.log(startproj);
		console.log(endproj);
		console.log(selectedNodes);
		console.log(selectedNodes1);
		*/
		
	    $.ajax({
	        type: 'POST',
	        url: '/project/project_add.do',
	        data: formData,
	        processData: false, // 필수: FormData가 문자열로 변환되지 않도록 설정
	        contentType: false, // 필수: Content-Type 헤더를 설정하지 않도록 설정
	        success: function (data) {
	            console.log('서버 응답:', data);
	            window.location.href = '/project/project_main.go'; // 실제 페이지 경로로 수정
	        },
	        error: function (error) {
	            console.error('오류 발생:', error);
	        }
	    });
	}
	
	function adddam(){ // 담당자 추가버튼 클릭시
		$.ajax({
			type: 'get',
	    	url: '/project/getOrgList',
	    	data: {},
	    	dataType: 'JSON',
	        success : function(data){
	          console.log(data);
	          drawOrg(data.orgList, data.deptKind);
	        },
	        error : function(e){
	          console.log(e);
	        }
		});
		document.getElementById('projModal').style.display = 'block';
	}
	
	function addcham(){ // 참조자 추가버튼클릭시
		$.ajax({
			type: 'get',
	    	url: '/project/getOrgList',
	    	data: {},
	    	dataType: 'JSON',
	        success : function(data){
	          console.log(data);
	          drawOrg1(data.orgList, data.deptKind);
	        },
	        error : function(e){
	          console.log(e);
	        }
		});
		document.getElementById('projModal1').style.display = 'block';
	}
	
	function drawOrg(orgList, deptKind) { // 담당자 추가시 div영역에 그려주는거
		console.log('orgList', orgList);
		console.log('deptKind',deptKind);
		
		var theme = $('html').hasClass('light-style') ? 'default' : 'default-dark',
			    checkboxTree = $('#jstree-checkbox');
     
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
	
	function drawOrg1(orgList, deptKind) { // 참조자 추가시 div영역에 그려주는거
		console.log('orgList', orgList);
		console.log('deptKind',deptKind);
		
		var theme = $('html').hasClass('light-style') ? 'default' : 'default-dark',
			    checkboxTree = $('#jstree-checkbox1');
     
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
  
	function closeChartModal() { // 담당자 모달창닫기
		document.getElementById('projModal').style.display = 'none';
	}
	
	function closeChartModal1() { // 참조자 모달창닫기
		document.getElementById('projModal1').style.display = 'none';
	}
	
// 체크시 조직도 이벤트 (담당자)
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

                    // 배열에서 노드 정보 추가 또는 제외
                    if (childNodeSelected) {
                        if (!selectedNodes.includes(ChildHidden)) {
                            selectedNodes.push(ChildHidden);
                            addToDamList(childNodeName, ChildHidden);
                        }
                    } else {
                        selectedNodes = selectedNodes.filter(node => node !== ChildHidden);
                        removeFromDamList(ChildHidden);
                    }

                    console.log('이름:', childNodeName, ' 클릭 후 체크 여부:', childNodeSelected, ' ChildHidden:', ChildHidden);
                });
            } else {
                // 배열에서 노드 정보 추가 또는 제외
                if (currentSelected) {
                    if (!selectedNodes.includes(nodeHidden)) {
                        selectedNodes.push(nodeHidden);
                        addToDamList(nodeName, nodeHidden);
                    }
                } else {
                    selectedNodes = selectedNodes.filter(node => node !== nodeHidden);
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
    var $damList = $('#addDamList');
    var Fname = name.split(' | ')[0];
    var $badge = $('<span style="margin-right:5px; margin-bottom:5px;" class="badge bg-primary">' + Fname + '<button type="button" class="offset-1" onclick="removeNodeFromList(\'' + hiddenValue + '\')"><i class=\'bx bx-x\'></i></button></span>');
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

//체크시 조직도 이벤트 (참조자)
$(document).ready(function () {
    $('#jstree-checkbox1').on('click', '.jstree-anchor', function (event) {
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

                    // 배열에서 노드 정보 추가 또는 제외
                    if (childNodeSelected) {
                        if (!selectedNodes1.includes(ChildHidden)) {
                            selectedNodes1.push(ChildHidden);
                            addToChamList(childNodeName, ChildHidden);
                        }
                    } else {
                        selectedNodes1 = selectedNodes1.filter(node => node !== ChildHidden);
                        removeFromChamList(ChildHidden);
                    }

                    console.log('이름:', childNodeName, ' 클릭 후 체크 여부:', childNodeSelected, ' ChildHidden:', ChildHidden);
                });
            } else {
                // 배열에서 노드 정보 추가 또는 제외
                if (currentSelected) {
                    if (!selectedNodes1.includes(nodeHidden)) {
                        selectedNodes1.push(nodeHidden);
                        addToChamList(nodeName, nodeHidden);
                    }
                } else {
                    selectedNodes1 = selectedNodes1.filter(node => node !== nodeHidden);
                    removeFromChamList(nodeHidden);
                }

                console.log('이름:', nodeName, ' 클릭 후 체크 여부:', currentSelected, ' nodeHidden:', nodeHidden);
            }

            // 출력 선택된 노드 배열
            console.log('Selected Nodes1:', selectedNodes1);
        }, 0);
    });

    // 트리 노드 열림/닫힘 이벤트 리스너를 추가
    $('#jstree-checkbox1').on('after_open.jstree', function (event, data) {
        // 열린 노드의 이름
        var nodeName = $(data.node).find('> a').text().trim();
		
        // console.log('이름:', nodeName, ' 상태: 열림');
    });

    $('#jstree-checkbox1').on('after_close.jstree', function (event, data) {
        // 닫힌 노드의 이름
        var nodeName = $(data.node).find('> a').text().trim();
        
        // console.log('이름:', nodeName, ' 상태: 닫힘');
    });
});

function addToChamList(name, hiddenValue) {
    var $damList = $('#addChamList');
    var Fname = name.split(' | ')[0];
    var $badge = $('<span style="margin-right:5px; margin-bottom:5px;" class="badge bg-primary">' + Fname + '<button type="button" class="offset-1" onclick="removeNodeFromList1(\'' + hiddenValue + '\')"><i class=\'bx bx-x\'></i></button></span>');
    $damList.append($badge);
}

function removeFromChamList(hiddenValue) {
    var $badgeToRemove = $('#addChamList').find('[onclick="removeNodeFromList1(\'' + hiddenValue + '\')"]').closest('.badge.bg-primary');
    $badgeToRemove.remove();
}

function removeNodeFromList1(hiddenValue) {
    selectedNodes1 = selectedNodes1.filter(node => node !== hiddenValue);
    removeFromChamList(hiddenValue);
    console.log('Selected Nodes1 after removal:', selectedNodes1);
}

</script>

</html>
