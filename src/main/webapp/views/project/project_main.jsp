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

    <!-- Page CSS -->

    <link rel="stylesheet" href="../../assets/vendor/css/pages/app-chat.css" />
    <link rel="stylesheet" href="../../assets/vendor/css/pages/page-profile.css" />

    <!-- Helpers -->
    <script src="../../assets/vendor/js/helpers.js"></script>
    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Template customizer: To hide customizer set displayCustomizer value false in config.js.  -->
    <script src="../../assets/vendor/js/template-customizer.js"></script>
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

	/* 사이드 바 폭 조정 */
/* .app-chat .app-chat-contacts{
flex-basis: 18rem;
} */

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
.py-3.mb-4{
	margin-bottom: 1rem !important;
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
	font-size: 13px;
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
            <a href="index.go" class="app-brand-link">
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
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
              <div class="app-chat overflow-hidden card">
                <div class="row g-0">
                  <!-- Sidebar Left -->
                  <div class="col app-chat-sidebar-left app-sidebar overflow-hidden" id="app-chat-sidebar-left">
                    <div
                      class="chat-sidebar-left-user sidebar-header d-flex flex-column justify-content-center align-items-center flex-wrap p-4 mt-2">
                      <div class="avatar avatar-xl avatar-online">
                        <img src="../../assets/img/avatars/1.png" alt="Avatar" class="rounded-circle" />
                      </div>
                      <h5 class="mt-3 mb-1">John Doe</h5>
                      <small class="text-muted">UI/UX Designer</small>
                      <i
                        class="bx bx-x bx-sm cursor-pointer close-sidebar me-1 fs-4"
                        data-bs-toggle="sidebar"
                        data-overlay
                        data-target="#app-chat-sidebar-left"></i>
                    </div>
                    <div class="sidebar-body px-4 pb-4">
                      <div class="my-3">
                        <span class="text-muted text-uppercase">About</span>
                        <textarea
                          id="chat-sidebar-left-user-about"
                          class="form-control chat-sidebar-left-user-about mt-2"
                          rows="4"
                          maxlength="120">
Dessert chocolate cake lemon drops jujubes. Biscuit cupcake ice cream bear claw brownie brownie marshmallow.</textarea
                        >
                      </div>
                      <div class="my-4">
                        <span class="text-muted text-uppercase">Status</span>
                        <div class="d-grid gap-1 mt-2">
                          <div class="form-check form-check-success">
                            <input
                              name="chat-user-status"
                              class="form-check-input"
                              type="radio"
                              value="active"
                              id="user-active"
                              checked />
                            <label class="form-check-label" for="user-active">Active</label>
                          </div>
                          <div class="form-check form-check-danger">
                            <input
                              name="chat-user-status"
                              class="form-check-input"
                              type="radio"
                              value="busy"
                              id="user-busy" />
                            <label class="form-check-label" for="user-busy">Busy</label>
                          </div>
                          <div class="form-check form-check-warning">
                            <input
                              name="chat-user-status"
                              class="form-check-input"
                              type="radio"
                              value="away"
                              id="user-away" />
                            <label class="form-check-label" for="user-away">Away</label>
                          </div>
                          <div class="form-check form-check-secondary">
                            <input
                              name="chat-user-status"
                              class="form-check-input"
                              type="radio"
                              value="offline"
                              id="user-offline" />
                            <label class="form-check-label" for="user-offline">Offline</label>
                          </div>
                        </div>
                      </div>
                      <div class="my-4">
                        <span class="text-muted text-uppercase">Settings</span>
                        <ul class="list-unstyled d-grid gap-2 mt-2">
                          <li class="d-flex justify-content-between align-items-center">
                            <div>
                              <i class="bx bx-check-circle me-1"></i>
                              <span class="align-middle">Two-step Verification</span>
                            </div>
                            <div class="form-check form-switch mb-0">
                              <input class="form-check-input" type="checkbox" id="twoStepVerification" />
                            </div>
                          </li>
                          <li class="d-flex justify-content-between align-items-center">
                            <div>
                              <i class="bx bx-bell me-1"></i>
                              <span class="align-middle">Notification</span>
                            </div>
                            <div class="form-check form-switch mb-0">
                              <input class="form-check-input" type="checkbox" id="switchNotification" checked />
                            </div>
                          </li>
                        </ul>
                      </div>
                      <div class="d-flex mt-4">
                        <button
                          class="btn btn-primary"
                          data-bs-toggle="sidebar"
                          data-overlay
                          data-target="#app-chat-sidebar-left">
                          Logout
                        </button>
                      </div>
                    </div>
                  </div>
                  <!-- /Sidebar Left-->

                  <!-- Chat & Contacts -->
                  <div
                    class="col app-chat-contacts app-sidebar flex-grow-0 overflow-hidden border-end"
                    id="app-chat-contacts">
                    <div class="sidebar-header pt-3 px-3 mx-1">
                      <div class="d-flex align-items-center me-3 me-lg-0">
                        
                        
                        <button class="btn btn-primary text-nowrap">프로젝트 추가</button>
                       </div>
                    </div>
                    <hr class="container-m-nx mt-3 mb-0" />
                    <div class="sidebar-body">
                      <!-- Chats -->
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
						        <button class="btn btn-primary text-nowrap go">진행중</button>
						        <button class="btn btn-primary text-nowrap wait">대기</button>
						        <button class="btn btn-primary text-nowrap end">완료</button>
						    </div>
						</li>
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
                  <!-- /Chat contacts -->

                  <!-- Chat History -->
                   <!-- Content -->
					<div class="col app-chat-history">
						<div class ="top-tap-select" style="display: flex; justify-content: space-between;">
					    <h4 class="py-3 mb-4"><span class="text-muted fw-light">프로젝트 현황 </span></h4>
						   <select class="form-select create">
		                     <option value="name">이도훈(본인)</option>
		                     <option value="id">한가인</option>
		                     <option value="department">정우성</option>
		                     <option value="position">황정민</option>
		                     <option value="title">정성화</option>
		                </select>
		                </div>
					   
					    <div class="chat-history-wrapper">
					        <div class="chat-history-body">
					            <div class="row">
					                <!-- 첫 번째 줄 -->
					                <div class="col-md-6">
					                    <div class="card mb-4">
					                        <div class="row">
					                            <div class="col-md-6">
					                                <h5 class="card-header" style=" color: #f2d200; font-weight: bold;">즉시 작업</h5>
					                            </div>
					                        </div>
					                        <div class="table-responsive mb-3pro">
					                            <table class="table datatable-project">
					                                <thead class="table-light">
					                                    <tr>
					                                        <th>종료일</th>
					                                        <th>프로젝트명</th>
					                                    </tr>
					                                </thead>
					                                <tbody>
					                                    <tr>
					                                        <td>2023.12.23</td>
					                                        <td>소속 유튜버 합방 스케줄</td>
					                                    </tr>
					                                    <tr>
					                                        <td>2023.12.23</td>
					                                        <td>소속 유튜버 합방 스케줄</td>
					                                    </tr>
					                                    <tr>
					                                        <td>2023.12.23</td>
					                                        <td>소속 유튜버 합방 스케줄</td>
					                                    </tr>
					                                    <tr>
					                                        <td>2023.12.23</td>
					                                        <td>소속 유튜버 합방 스케줄</td>
					                                    </tr>
					                                    
					                                </tbody>
					                            </table>
					                        </div>
					                    </div>
					                </div>
					
					                <div class="col-md-6">
					                    <div class="card mb-4">
					                        <div class="row">
					                            <div class="col-md-6">
					                                <h5 class="card-header" style=" color: #4974e3; font-weight: bold;">대기</h5>
					                            </div>
					                        </div>
					                        <div class="table-responsive mb-3">
					                            <table class="table datatable-project">
					                                <thead class="table-light">
					                                    <tr>
					                                        <th>시작일</th>
					                                        <th>프로젝트명</th>
					                                    </tr>
					                                </thead>
					                                <tbody>
					                                    <tr>
					                                        <td>2023.12.21</td>
					                                        <td>소속 유튜버 합방 스케줄</td>
					                                    </tr>
					                                    <tr>
					                                        <td>2023.12.21</td>
					                                        <td>소속 유튜버 합방 스케줄</td>
					                                    </tr>
					                                    <tr>
					                                        <td>2023.12.21</td>
					                                        <td>소속 유튜버 합방 스케줄</td>
					                                    </tr>
					                                    <tr>
					                                        <td>2023.12.21</td>
					                                        <td>소속 유튜버 합방 스케줄</td>
					                                    </tr>
					                                    <tr>
					                                        <td>2023.12.21</td>
					                                        <td>소속 유튜버 합방 스케줄</td>
					                                    </tr>
					                                </tbody>
					                            </table>
					                        </div>
					                    </div>
					                </div>
					            </div>
					
					            <!-- 두 번째 줄 -->
					            <div class="row">
					                <div class="col-md-6">
					                    <div class="card mb-4">
					                        <div class="row">
					                            <div class="col-md-6">
					                                <h5 class="card-header" style=" color: #23a62e; font-weight: bold;">진행중</h5>
					                            </div>
					                        </div>
					                        <div class="table-responsive mb-3">
					                            <table class="table datatable-project">
					                                <thead class="table-light">
					                                    <tr>
					                                        <th>시작일</th>
					                                        <th>프로젝트명</th>
					                                    </tr>
					                                </thead>
					                                <tbody>
					                                    <tr>
					                                        <td>2023.12.21</td>
					                                        <td>소속 유튜버 합방 스케줄</td>
					                                    </tr>
					                                    <tr>
					                                        <td>2023.12.21</td>
					                                        <td>소속 유튜버 합방 스케줄</td>
					                                    </tr>
					                                    <tr>
					                                        <td>2023.12.21</td>
					                                        <td>소속 유튜버 합방 스케줄</td>
					                                    </tr>
					                                    <tr>
					                                        <td>2023.12.21</td>
					                                        <td>소속 유튜버 합방 스케줄</td>
					                                    </tr>
					                                    <tr>
					                                        <td>2023.12.21</td>
					                                        <td>소속 유튜버 합방 스케줄</td>
					                                    </tr>
					                                </tbody>
					                            </table>
					                        </div>
					                    </div>
					                </div>
					
					                <div class="col-md-6">
					                    <div class="card mb-4">
					                        <div class="row">
					                            <div class="col-md-6">
					                                <h5 class="card-header" style=" color: #C20000; font-weight: bold;">지연</h5>
					                            </div>
					                        </div>
					                        <div class="table-responsive mb-3">
					                            <table class="table datatable-project">
					                                <thead class="table-light">
					                                    <tr>
					                                        <th>종료일</th>
					                                        <th>프로젝트명</th>
					                                    </tr>
					                                </thead>
					                                <tbody>
					                                    <tr>
					                                        <td>2023.12.23</td>
					                                        <td>소속 유튜버 합방 스케줄</td>
					                                    </tr>
					                                </tbody>
					                            </table>
					                        </div>
					                    </div>
					                </div>
					                
					                
					                
					            </div>
					        </div>
					    </div>
					</div>
                  
                  <!-- /Chat History -->

                  <!-- Sidebar Right -->
                  <div class="col app-chat-sidebar-right app-sidebar overflow-hidden" id="app-chat-sidebar-right">
                    <div
                      class="sidebar-header d-flex flex-column justify-content-center align-items-center flex-wrap p-4 mt-2">
                      <div class="avatar avatar-xl avatar-online">
                        <img src="../../assets/img/avatars/2.png" alt="Avatar" class="rounded-circle" />
                      </div>
                      <h6 class="mt-3 mb-1">Felecia Rower</h6>
                      <small class="text-muted">NextJS Developer</small>
                      <i
                        class="bx bx-x bx-sm cursor-pointer close-sidebar me-1 fs-4 d-block"
                        data-bs-toggle="sidebar"
                        data-overlay
                        data-target="#app-chat-sidebar-right"></i>
                    </div>
                    <div class="sidebar-body px-4 pb-4">
                      <div class="my-3">
                        <span class="text-muted text-uppercase">About</span>
                        <p class="mb-0 mt-2">
                          A Next. js developer is a software developer who uses the Next. js framework alongside ReactJS
                          to build web applications.
                        </p>
                      </div>
                      <div class="my-4">
                        <span class="text-muted text-uppercase">Personal Information</span>
                        <ul class="list-unstyled d-grid gap-2 mt-2">
                          <li class="d-flex align-items-center">
                            <i class="bx bx-envelope"></i>
                            <span class="align-middle ms-2">josephGreen@email.com</span>
                          </li>
                          <li class="d-flex align-items-center">
                            <i class="bx bx-phone-call"></i>
                            <span class="align-middle ms-2">+1(123) 456 - 7890</span>
                          </li>
                          <li class="d-flex align-items-center">
                            <i class="bx bx-time-five"></i>
                            <span class="align-middle ms-2">Mon - Fri 10AM - 8PM</span>
                          </li>
                        </ul>
                      </div>
                      <div class="mt-4">
                        <span class="text-muted text-uppercase">Options</span>
                        <ul class="list-unstyled d-grid gap-2 mt-2">
                          <li class="cursor-pointer d-flex align-items-center">
                            <i class="bx bx-bookmark"></i>
                            <span class="align-middle ms-2">Add Tag</span>
                          </li>
                          <li class="cursor-pointer d-flex align-items-center">
                            <i class="bx bx-star"></i>
                            <span class="align-middle ms-2">Important Contact</span>
                          </li>
                          <li class="cursor-pointer d-flex align-items-center">
                            <i class="bx bx-image-alt"></i>
                            <span class="align-middle ms-2">Shared Media</span>
                          </li>
                          <li class="cursor-pointer d-flex align-items-center">
                            <i class="bx bx-trash-alt"></i>
                            <span class="align-middle ms-2">Delete Contact</span>
                          </li>
                          <li class="cursor-pointer d-flex align-items-center">
                            <i class="bx bx-block"></i>
                            <span class="align-middle ms-2">Block Contact</span>
                          </li>
                        </ul>
                      </div>
                    </div>
                  </div>
                  <!-- /Sidebar Right -->

                  <div class="app-overlay"></div>
                </div>
              </div>
            </div>
            <!-- / Content -->

            <!-- Footer -->
            <footer class="content-footer footer bg-footer-theme">
              <div class="container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">
                <div class="mb-2 mb-md-0">
                  Â©
                  <script>
                    document.write(new Date().getFullYear());
                  </script>
                  , made with â¤ï¸ by
                  <a href="https://themeselection.com" target="_blank" class="footer-link fw-medium">ThemeSelection</a>
                </div>
                <div class="d-none d-lg-inline-block">
                  <a href="https://themeselection.com/license/" class="footer-link me-4" target="_blank">License</a>
                  <a href="https://themeselection.com/" target="_blank" class="footer-link me-4">More Themes</a>

                  <a
                    href="https://demos.themeselection.com/sneat-bootstrap-html-admin-template/documentation/"
                    target="_blank"
                    class="footer-link"
                    >Documentation</a
                  >

                  <a
                    href="https://themeselection.com/support/"
                    target="_blank"
                    class="footer-link d-none d-sm-inline-block"
                    >Support</a
                  >
                </div>
              </div>
            </footer>
            <!-- / Footer -->

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
    <script src="../../assets/vendor/libs/bootstrap-maxlength/bootstrap-maxlength.js"></script>

    <!-- Main JS -->
    <script src="../../assets/js/main.js"></script>

    <!-- Page JS -->
    <script src="../../assets/js/app-chat.js"></script>
  </body>
</html>
