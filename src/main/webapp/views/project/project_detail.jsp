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

    <title>Chat - Apps | Sneat - Bootstrap 5 HTML Admin Template - Pro</title>

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
                      <!-- 검색 -->
                        <li class="chat-contact-list-item chat-contact-list-item-title">
                          <div class="flex-grow-1 input-group input-group-merge rounded-pill ms-1">
	                          <span class="input-group-text" id="basic-addon-search31"><i class="bx bx-search fs-4"></i></span>
	                          <input
	                            type="text"
	                            class="form-control chat-search-input"
	                            placeholder="Search..."
	                            aria-label="Search..."
	                            aria-describedby="basic-addon-search31" />
                        </div>
                        </li>
                        <!-- 진행중/대기/완료 분류 버튼 -->
                        <li>
											    <div class="d-flex justify-content-center">
											        <button class="btn btn-primary text-nowrap go">진행중</button>
											        <button class="btn btn-primary text-nowrap wait">대기</button>
											        <button class="btn btn-primary text-nowrap end">완료</button>
											    </div>
											  </li>
											  <!-- 프로젝트 리스트 -->
                       	<li class="chat-contact-list-item chat-list-item-0 d-none">
                        	<h6 class="text-muted mb-0">No Project Found</h6>
                       	</li>
                        <li class="chat-contact-list-item pro active">
                          <a class="d-flex align-items-center"> 
                            <div class="chat-contact-info flex-grow-1 ms-3">
                              <h6 class="chat-contact-name text-truncate m-0">크리에이터 영입</h6>
                              <p class="text-muted mb-auto">
                                2023-11-27~2023-12-27</p>
                              <p class="chat-contact-status text-truncate mb-0 text-muted">
                                전은호</p>
                            </div>
                            <small class="text-muted mb-auto">진행중</small>
                          </a>
                        </li>
                        <li class="chat-contact-list-item pro">
                          <a class="d-flex align-items-center"> 
                            <div class="chat-contact-info flex-grow-1 ms-3">
                              <h6 class="chat-contact-name text-truncate m-0">Be Hit 프로젝트</h6>
                              <p class="text-muted mb-auto">
                                2023-11-27~2024-01-16</p>
                              <p class="chat-contact-status text-truncate mb-0 text-muted">
                                이도훈, 김세연, 김인혜, 윤예성, 전은호, 글씨테스트, 글씨테스트</p>
                            </div>
                            <small class="text-muted mb-auto">진행중</small>
                          </a>
                        </li>
                        <li class="chat-contact-list-item pro">
                          <a class="d-flex align-items-center"> 
                            <div class="chat-contact-info flex-grow-1 ms-3">
                              <h6 class="chat-contact-name text-truncate m-0">진짜인지 가짜인지 모를 사나이 글씨테스트테스트</h6>
                              <p class="text-muted mb-auto">
                                2023-11-27~2024-02-16</p>
                              <p class="chat-contact-status text-truncate mb-0 text-muted">
                                김인혜</p>
                            </div>
                            <small class="text-muted mb-auto">진행중</small>
                          </a>
                        </li>
                        <li class="chat-contact-list-item pro">
                          <a class="d-flex align-items-center"> 
                            <div class="chat-contact-info flex-grow-1 ms-3">
                              <h6 class="chat-contact-name text-truncate m-0">Be Hit 프로젝트</h6>
                              <p class="text-muted mb-auto">
                                2023-11-27~2024-01-16</p>
                              <p class="chat-contact-status text-truncate mb-0 text-muted">
                                이도훈, 김세연, 김인혜, 윤예성, 전은호</p>
                            </div>
                            <small class="text-muted mb-auto">진행중</small>
                          </a>
                        </li>
                        <li class="chat-contact-list-item pro">
                          <a class="d-flex align-items-center"> 
                            <div class="chat-contact-info flex-grow-1 ms-3">
                              <h6 class="chat-contact-name text-truncate m-0">Be Hit 프로젝트</h6>
                              <p class="text-muted mb-auto">
                                2023-11-27~2024-01-16</p>
                              <p class="chat-contact-status text-truncate mb-0 text-muted">
                                이도훈, 김세연, 김인혜, 윤예성, 전은호</p>
                            </div>
                            <small class="text-muted mb-auto">진행중</small>
                          </a>
                        </li>
                        
                      </ul>
                    </div>
                  </div>
                  
                  <!-- /프로젝트 사이드바 -->

                   <!-- 프로젝트 생성/디테일/수정 -->
									<div class="col app-chat-history text chat-history-body">
										<h4 class="pt-4 pb-2 px-3">프로젝트 상세</h4>
										
										<hr class="my-3" />
										<!-- 지연된 프로젝트일시 -->
										<span class="px-3" style="color:#C20000"><i class='bx bx-error'></i> 지연된 프로젝트입니다.</span>
										<!-- 프로젝트 제목 -->
										<div class="project-subject">
											<span class="project-subject-left">
												<span class="py-2 px-3 fs-4">BeHit X T1 콜라보레이션 프로젝트</span>
												<span class="button">
													<button type="button" id="project-update-move" class="btn btn-sm btn-secondary">수정</button>
													<button type="button" class="btn btn-sm btn-secondary">삭제</button>
												</span>
											</span>
											<span class="project-subject-right">
												<select id="selectpickerBasic" class="selectpicker" data-style="btn-default">
					                <option>대기</option>
					                <option>진행중</option>
					                <option>완료</option>
					              </select>
					              <span class="selected-stat">
					              <!-- <span class="badge bg-secondary">대기</span> -->
					              <span class="badge bg-warning">진행중</span>
					              <!-- <span class="badge bg-success">완료</span> -->
					              </span>
											</span>
										</div>
										
										<div class="project-entry px-3">
											<div class="project-entry-ls">
												<h5>생성자</h5>
												<div class="name">
													<span class="badge bg-primary">이도훈</span>
												</div>
											</div>
											<div class="project-entry-ls">
												<h5>담당자</h5>
												<div class="name">
													<span class="badge bg-primary">윤예성</span>
													<span class="badge bg-primary">전은호</span>
												</div>
											</div>
											<div class="project-entry-ls">
												<h5>참조자</h5>
												<div class="name">
													<span class="badge bg-primary">김세연</span>
													<span class="badge bg-primary">김인혜</span>
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
				                            <div class="project-date-start">2023-11-24</div>
				                          </div>
				                        </div>
				                      </div>
				                      <div class="col-sm-6 col-lg-6">
				                        <div class="d-flex justify-content-between align-items-start">
				                          <div>
				                            <h5>종료일</h5>
				                            <div class="project-date-end">2023-12-24</div>
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
														어쩌구저쩌구
													</div>
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
			                    
			                      <div class="tab-pane fade show active" id="navs-top-home" role="tabpanel">
			                      
				                      <div class="card email-card-prev mx-sm-1 mx-3 border my-4">
			                          <div class="card-header d-flex justify-content-between align-items-center flex-wrap">
			                            <div class="d-flex align-items-center mb-sm-0 mb-3">
			                              <div class="avatar avatar-md me-2">
	                          					<img src="../../assets/img/avatars/1.png" alt="Avatar" class="rounded-circle">
	                        					</div>
			                              <div class="flex-grow-1 ms-1">
			                                <span class="fs-5">윤예성</span>
			                                <span class="fs-6 date">2023-12-26 10:23</span>
			                              </div>
			                            </div>
			                            <div class="d-flex align-items-center">
			                              <span class="fs-6 date">수정됨</span>
			                              <button class="btn p-0" type="button" data-bs-toggle="modal" data-bs-target="#project-modal-update">
			                                <i class='bx bxs-edit cursor-pointer me-2 bx-sm'></i>
			                              </button>
			                              <button class="btn p-0" type="button">
			                                <i class="bx bx-trash bx-sm me-3"></i>
			                              </button>
			                            </div>
			                          </div>
			                          <div class="card-body">
			                              - It is a long established fact that a reader will be distracted by the readable content of
			                              - a page when looking at its layout.The point of using Lorem Ipsum is that it has a
			                              - more-or-less normal distribution of letters, as opposed to using 'Content here, content
			                              - here',making it look like readable English.
			                            <hr />
			                            <p class="mb-2">첨부파일</p>
			                            <div class="cursor-pointer">
			                              <i class="bx bx-file"></i>
			                              <span class="align-middle ms-1">report.xlsx</span>
			                            </div>
			                          </div>
				                      </div>
				                      
				                      <div class="card email-card-prev mx-sm-1 mx-3 border my-4">
			                          <div class="card-header d-flex justify-content-between align-items-center flex-wrap">
			                            <div class="d-flex align-items-center mb-sm-0 mb-3">
			                              <div class="avatar avatar-md me-2">
	                          					<img src="../../assets/img/avatars/1.png" alt="Avatar" class="rounded-circle">
	                        					</div>
			                              <div class="flex-grow-1 ms-1">
			                                <span class="fs-5">전은호</span>
			                                <span class="fs-6 date">2023-12-26 10:23</span>
			                              </div>
			                            </div>
			                            <div class="d-flex align-items-center">
			                              <span class="fs-6 date">수정됨</span>
			                              <button class="btn p-0" type="button" data-bs-toggle="modal" data-bs-target="#project-modal-update">
			                                <i class='bx bxs-edit cursor-pointer me-2 bx-sm'></i>
			                              </button>
			                              <button class="btn p-0" type="button">
			                                <i class="bx bx-trash bx-sm me-3"></i>
			                              </button>
			                            </div>
			                          </div>
			                          <div class="card-body">
			                              - It is a long established fact that a reader will be distracted by the readable content of
			                              - a page when looking at its layout.The point of using Lorem Ipsum is that it has a
			                              - more-or-less normal distribution of letters, as opposed to using 'Content here, content
			                              - here',making it look like readable English.
			                            <hr />
			                            <p class="mb-2">첨부파일</p>
			                            <div class="cursor-pointer">
			                              <i class="bx bx-file"></i>
			                              <span class="align-middle ms-1">report.xlsx</span>
			                            </div>
			                          </div>
				                      </div>
			                      
			                      </div>
			                      
			                      <div class="tab-pane fade" id="navs-top-messages" role="tabpanel">
			                      	<div class="fs-5 py-3">첨부 파일</div>
			                      	<div class="card email-card-prev mx-sm-1 mx-3 border my-2" >
				                        <div class="cursor-pointer">
				                          <i class="bx bx-file"></i>
				                           <span class="align-middle ms-1">report.xlsx</span>
				                        </div>
			                        </div>
			                        <div class="card email-card-prev mx-sm-1 mx-3 border my-2">
				                        <div class="cursor-pointer">
				                          <i class="bx bx-file"></i>
				                           <span class="align-middle ms-1">report.xlsx</span>
				                        </div>
			                        </div>
			                        <div class="card email-card-prev mx-sm-1 mx-3 border my-2">
				                        <div class="cursor-pointer">
				                          <i class="bx bx-file"></i>
				                           <span class="align-middle ms-1">report.xlsx</span>
				                        </div>
			                        </div>
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
		                       			<img src="../../assets/img/avatars/1.png" alt="Avatar" class="rounded-circle">
		                      		</div>
				                      <div class="flex-grow-1 ms-1">
				                        <span class="fs-5">윤예성</span>
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
								                  <div id="snow-editor">
								                  </div>
	                    				</div>
													</div>
													
													<div class="fs-5 m-3">파일 첨부</div>
													<input class="form-control mx-4" type="file" id="formFile" />
																
		                      <div class="col-12 text-center">
		                        <button type="button" class="btn btn-primary me-sm-3 me-1 mt-3 apv-doc-select">작성</button>
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
		                       			<img src="../../assets/img/avatars/1.png" alt="Avatar" class="rounded-circle">
		                      		</div>
				                      <div class="flex-grow-1 ms-1">
				                        <span class="fs-5">윤예성</span>
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
								                  <div id="update-editor">
								                  </div>
	                    				</div>
													</div>
													
													<div class="fs-5 m-3">파일 첨부</div>
													<input class="form-control mx-4" type="file" id="formFile" />
																
		                      <div class="col-12 text-center">
		                        <button type="button" class="btn btn-primary me-sm-3 me-1 mt-3 apv-doc-select">수정</button>
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
		              <!--/ 활동 기록 수정 모달 -->
                  
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
    <script src="../../assets/vendor/libs/quill/quill.js"></script>

    <!-- Main JS -->
    <script src="../../assets/js/main.js"></script>

    <!-- Page JS -->
    <script src="../../assets/js/app-chat.js"></script>
    <script src="../../assets/js/forms-editors.js"></script>
    
    <!-- custom JS -->
    <script>
    
    $('#project-add-move').on('click',function(){
    	location.href="../project/project_add.go";
    });
    
    $('#project-update-move').on('click',function(){
    	location.href="../project/project_update.go";
    });
    
    
    
    (function () {
    	  // Snow Theme
    	  // --------------------------------------------------------------------
    	  const snowEditor = new Quill('#update-editor', {
    	    bounds: '#update-editor',
    	    modules: {
    	      formula: true,
    	      toolbar: '#update-toolbar'
    	    },
    	    theme: 'snow'
    	  });
    })();
    </script>
    
    
  </body>
</html>
