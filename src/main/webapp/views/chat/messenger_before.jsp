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
	<link rel="stylesheet" href="../../assets/vendor/libs/jstree/jstree.css" /> <!-- 조직도 -->

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
    /* 채팅방 추가 버튼 */
    .btn.btn-primary.text-nowrap{
    	margin-left: 5px;
    	width: 130px;
    	font-size: 13px;
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
	/* 메시지 전송 버튼 */
	.btn.btn-primary.d-flex.send-msg-btn{
		width: 95px;
	}
	
 	.bx.bx-message-dots.chat{
	font-size: 10rem;
	margin-top : 20rem;
	margin-left: 27rem;
	}
	
	.text-primary.mb-0{
	margin: 1rem;
	}
	.flex-grow-1.input-group.input-group-merge.rounded-pill.ms-1{
	margin-top: 1rem;
	}
	.chatListAndS{
	margin-left: 1rem;
	}
.chat-names{
font-size: 10px;
}

.modal-content{
width: 23rem;
}
.card.mb-md-0.mb-4.shadow-none.border.overflow-hidden{

width: 20rem;
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
            
            <li class="menu-item">
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
            
            <li class="menu-item active">
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
                        <div
                          class="flex-shrink-0 avatar avatar-online me-2"
                          data-bs-toggle="sidebar"
                          data-overlay="app-overlay-ex"
                          data-target="#app-chat-sidebar-left">
                          <img
                            class="user-avatar rounded-circle cursor-pointer"
                            src="../../assets/img/avatars/1.png"
                            alt="Avatar" />
                        </div>
                        <div class="text-muted text-uppercase">
                        	<span class="chat-contact-name text-truncate m-0">${emp_name}</span><span id="emp_id">${emp_id}</span>
                        	<div><span class="m-0">${emp_dept_name}</span></div>
                        	</div>
                        	<button type="button" class="btn btn-primary text-nowrap" data-bs-toggle="modal" data-bs-target="#apv-modal">채팅방 추가</button>
                       <!--  <button class="btn btn-primary text-nowrap">채팅방 추가</button> -->
                       </div>
                    </div>
                    <hr class="container-m-nx mt-3 mb-0" />
                    <div class="sidebar-body">
                      <!-- Chats -->
                      <ul class="list-unstyled chat-contact-list pt-1" id="chat-list">
                        <li class="chat-contact-list-item">
                          <h6 class="text-primary mb-0">채팅 리스트</h6>
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
                        <li class="chat-contact-list-item chat-list-item-0 d-none">
                          <h6 class="text-muted mb-0">No Chats Found</h6>
                        </li>
                        <!-- 온라인일 경우 표시 -->
                        <c:forEach items="${ChatRoomAll}" var="ChatRoomAll" varStatus="loop">
                        <li class="chat-contact-list-item">
                          <a class="d-flex align-items-center">
                            <div class="flex-shrink-0 avatar avatar-online">
                              <img src="../../assets/img/avatars/13.png" alt="Avatar" class="rounded-circle" />
                            </div>
                            <div class="chat-contact-info flex-grow-1 ms-3">
                            <input type=hidden value="${ChatRoomAll.chat_room_idx}"/>
                              <h6 class="chat-contact-name text-truncate m-0">${ChatRoomAll.chat_room_name}</h6>
                              <p class="chat-contact-status text-truncate mb-0 text-muted">
							    <c:forEach items="${ChatRoomAll.chatMb}" var="chatMb" varStatus="loop">
							        <span>${chatMb.emp_id}</span>
							        <c:if test="${not loop.last}">
							            <!-- Add "," only if it's not the last element -->
							            ,
							        </c:if>
							    </c:forEach>
							</p>
                            </div>                         
                            <small class="text-muted mb-auto">${ChatRoomAll.chat_room_date}</small>
                          </a>
                        </li>
                        </c:forEach>                      
                      </ul>
                      
                    </div>
                  </div>
                  <!-- /Chat contacts -->

                  <!-- Chat History -->
                 <!--  <div class="col app-chat-history">
                    <i class='bx bx-message-dots chat' ></i>
                      
                    </div>
                  </div> -->
                  <!-- /Chat History -->
                  <!-- Chat History -->
                  <div class="col app-chat-history">
                    <div class="chat-history-wrapper">
                      <div class="chat-history-header border-bottom">
                        <div class="d-flex justify-content-between align-items-center">
                          <div class="d-flex overflow-hidden align-items-center">
                            <i
                              class="bx bx-menu bx-sm cursor-pointer d-lg-none d-block me-2"
                              data-bs-toggle="sidebar"
                              data-overlay
                              data-target="#app-chat-contacts"></i>
                            <div class="flex-shrink-0 avatar">
                              <img
                                src="../../assets/img/avatars/2.png"
                                alt="Avatar"
                                class="rounded-circle"
                                data-bs-toggle="sidebar"
                                data-overlay
                                data-target="#app-chat-sidebar-right" />
                            </div>
                            <div class="chat-contact-info flex-grow-1 ms-3">
                              <h6 class="m-0">김세연</h6>
                              <small class="user-status text-muted">인사팀</small>
                            </div>
                          </div>
                          
                        </div>
                      </div>
                      <div class="chat-history-body">
                        
                        <ul id="chatMessageList" class="list-unstyled chat-history mb-0">
						    <!-- 채팅 메시지가 동적으로 추가될 곳 -->
						</ul>
						<ul id="webChatMessage" class="list-unstyled chat-history mb-0">
						    <!-- 채팅 메시지가 동적으로 추가될 곳 -->
						</ul>
                      </div>
                      <!-- Chat message form -->
                      <div class="chat-history-footer">
                        <form class="form-send-message d-flex justify-content-between align-items-center">
                          <input id="chatSend"
                            class="form-control message-input border-0 me-3 shadow-none"
                            placeholder="메시지를 입력하세요..." />
                          <div class="message-actions d-flex align-items-center">                      
                            <label for="attach-doc" class="form-label mb-0">
                              <!-- <i class="bx bx-paperclip bx-sm cursor-pointer mx-3 text-body"></i> -->
                              <input type="file" id="attach-doc" hidden />
                            </label>
                            <button class="btn btn-primary d-flex send-msg-btn"  onclick="sendMessage()">
                              <i class="bx bx-paper-plane me-md-1 me-0"></i>
                              <span class="align-middle d-md-inline-block d-none" >전송</span>
                            </button>
                          </div>
                        </form>
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
			
			<!-- modal -->
			<!-- 조직도 모달 -->
              <div class="modal fade" id="apv-modal" tabindex="-1" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered1 modal-simple modal-add-new-cc">
                  <div class="modal-content p-3 p-md-5">
                    <div class="modal-body">
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                       
			              <div class="list">
			                
			              </div>
			              

                      <div class="col-12 text-center">
                        <button type="button" class="btn btn-primary me-sm-3 me-1 mt-3 apv-doc-select">선택</button>
                        <button
                          type="reset"
                          class="btn btn-label-secondary btn-reset mt-3"
                          data-bs-dismiss="modal"
                          aria-label="Close">
                          취소</button>
                       </div>
                       </div>
            	</div>
            	</div>
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
    <script src="../../assets/vendor/libs/jstree/jstree.js"></script>
    

    <!-- Main JS -->
    <script src="../../assets/js/main.js"></script>

    <!-- Page JS -->
    <script src="../../assets/js/app-chat.js"></script>
    
    <!-- 소켓 -->
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.5.1/sockjs.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>


<script>/* 웹소켓 스크립트  */
$(function () {
    connect();
});
//문서가 로드될 때 실행되는 함수, 'connect' 함수를 호출하여 웹소켓 연결을 수행

var stompClient = null; //웹소켓 통신을 위한 Stomp 클라이언트를 저장하는 변수
var emp_id = "";
var loginId ="";

function connect() {
	// 웹소켓 연결을 수행하는 함수
    var socket = new SockJS('/chat/messenger_inner');
	// SockJS 를 통해 서버의 웹소켓 엔드포인트에 연결
    stompClient = Stomp.over(socket);
	// Stomp 클라이언트 생성
    stompClient.connect({}, function (frame) {
    	// 연결이 성공하면 콜백 함수에서 로그 출력
        console.log('Connected: ' + frame);
    });
}


    
 // 채팅방 생성
//직원 리스트 모달 시작
$.ajax({
	type: 'get',
	url: '../getOrgList',
	data: {},
	dataType: 'JSON',
    success : function(data){
      console.log(data);
      drawOrg(data.orgList, data.deptKind);
    } ,
    error : function(e){
      console.log(e);
    }
});

function drawOrg(orgList, deptKind) {
    var modalBody = $('#apv-modal .modal-body .list');

    // 리스트 초기화
    modalBody.empty();

    // 각각의 데이터를 리스트에 추가
    orgList.forEach(function (employee) {
        var listItem = $('<div class="list-item"></div>');
        listItem.append('<input type="checkbox" class="emp-checkbox" data-emp-id="' + employee.emp_id + '">');
        listItem.append('<span class="emp-id">' + employee.emp_id + '</span>');
        listItem.append(' | <span class="emp-name">' + employee.emp_name + '</span>');


        // 리스트 아이템을 모달 바디에 추가
        modalBody.append(listItem);
    });

    // 체크박스 변경 시 처리
    modalBody.on('change', '.emp-checkbox', function () {
        var isChecked = $(this).prop('checked');
        var empId = $(this).data('emp-id');

        // 선택된 정보를 사용하여 원하는 동작 수행
        console.log('Employee ID:', empId, 'Checked:', isChecked);
    });

    // 선택 버튼 클릭 시 처리
    $('.apv-doc-select').click(function () {
        var selectedEmpIds = [];

        // 체크된 항목의 emp_id 가져오기
        modalBody.find('.list-item input:checked').each(function () {
            selectedEmpIds.push($(this).data('emp-id'));
        });

        // 선택된 정보를 사용하여 원하는 동작 수행
        console.log('Selected Employee IDs:', selectedEmpIds);
        
        // 채팅방 이름 첫 번째 선택한 사람 외 1명으로 변경하여 서버에 값 보내기
        // 셀렉트한 emp_id 들 값들 서버로 보내기
        // 생성자는 서버에서 세션 id 받아서 저장하기
        // 생성일은 커런트 타임 스탬프로 넣기
        // 채팅방 제너레이트키 사용해서 채팅방 참여자 테이블에 참여자들 id 넣기
        
        
        $.ajax({
		    type: 'GET',
		    url: '/createRoom',
		    data: { emp_ids: selectedEmpIds },
		    traditional: true,
		    success: function (data) {
		        console.log(data);
		        if(data.idx > 0){
		        	console.log("생성");
		        	location.href='../chat/messenger_inner.go';
		        }
		    },
		    error: function (error) {
		        console.error('Error:', error);
		    }
		});
        

        // 모달 닫기
        $('#apv-modal').modal('hide');
        
    });
    
	 // 모달이 닫힐 때 체크박스 상태 초기화
    $('#apv-modal').on('hidden.bs.modal', function () {
        modalBody.find('.emp-checkbox').prop('checked', false);
        checkboxStates = {}; // 체크박스 상태 초기화
    });
    
}

/*/직원 리스트 모달 끝 */

var currentSubscription = null;
var chatRoomIdx = '';
    
 // 채팅방 구독
    
// 클릭한 채팅방 빨간색으로 활성화
$(document).ready(function() {
        // 각 리스트 아이템에 클릭 이벤트 리스너 추가
        $('.chat-contact-list-item').click(function() {
        	
        	$('#webChatMessage').empty();
            // 기존 active 클래스를 모두 제거
            $('.chat-contact-list-item').removeClass('active');
            
            // 클릭한 리스트에 active 클래스 추가
            $(this).addClass('active');
            
         // 선택한 채팅방의 ID를 가져와서 해당 채팅방에 가입
            chatRoomIdx = $(this).find('input[type=hidden]').val();
            console.log(chatRoomIdx);

            if (currentSubscription) {
                // 현재 구독이 있으면 해지
                currentSubscription.unsubscribe();
            }

            currentSubscription = stompClient.subscribe("/topic/chatRoom/" + chatRoomIdx, function (webMessage) {
                console.log('특정 방에 뿌림', webMessage);
                showMessage(JSON.parse(webMessage.body));
            });
            
            $.ajax({
                type: 'GET',
                url: '/chatList', // 서버에서 처리할 요청 URL
                data: { chatRoomIdx: chatRoomIdx }, // 전송할 데이터 (chatRoomIdx)
                success: function(data) {
                    // 서버에서 받은 데이터(response)를 처리
                    console.log('채팅 리스트 가져오기 성공', data);

                    loginId= data.loginId;
                    // 여기서 받은 데이터를 이용하여 화면에 채팅 리스트를 업데이트하거나 처리
                    showMessageList(data.chatList, loginId);
                },
                error: function(error) {
                    console.error('채팅 리스트 가져오기 실패', error);
                }
            });
            
            
            
        });
        
});



   
function showMessageList(chatList, loginId) {
	$('#chatMessageList').empty();
	console.log("쇼메시지리스트함수",chatList);
	console.log("쇼메시지리스트함수",loginId);
    // chatList를 순회하며 각 메시지에 대한 처리
    chatList.forEach(function(message) {
        // 적절한 메시지 형식을 선택하여 화면에 추가
        var messageHtml = getMessageHtml(message, loginId);
        
        // 채팅 메시지 목록에 추가
        $('#chatMessageList').append(messageHtml);
    });
}

function getMessageHtml(message, loginId) {
	console.log("겟메시지함수",message);
	console.log("겟메시지함수",loginId);
    var messageHtml = '';

    if (message.emp_id == loginId) {
        // 로그인한 사용자의 메시지
        messageHtml += '<li class="chat-message chat-message-right">';
        messageHtml += '<div class="d-flex overflow-hidden">';
        messageHtml += '<div class="chat-message-wrapper flex-grow-1">';
        messageHtml += '<div class="chat-message-text">';
        messageHtml += '<p class="mb-0">' + message.message + '</p>';
        messageHtml += '</div>';
        messageHtml += '<div class="text-end text-muted mt-1">';
        messageHtml += '<small>' + message.message_date + '</small>';
        messageHtml += '</div>';
        messageHtml += '</div>';
    } else {
        // 다른 사용자의 메시지
        messageHtml += '<li class="chat-message">';
        messageHtml += '<div class="d-flex overflow-hidden">';
        messageHtml += '<div class="user-avatar flex-shrink-0 me-3">';
        messageHtml += '<div class="avatar avatar-sm">';
        messageHtml += '<img src="../../assets/img/avatars/2.png" alt="Avatar" class="rounded-circle" />';
        messageHtml += '<span>' + message.emp_id + '</span>';
        messageHtml += '</div>';
        messageHtml += '</div>';
        messageHtml += '<div class="chat-message-wrapper flex-grow-1">';
        messageHtml += '<div class="chat-message-text">';
        messageHtml += '<p class="mb-0">' + message.message + '</p>';
        messageHtml += '</div>';
        messageHtml += '<div class="text-muted mt-1">';
        messageHtml += '<small>' + message.message_date + '</small>';
        messageHtml += '</div>';
        messageHtml += '</div>';
    }


    messageHtml += '</div>';
    messageHtml += '</li>';

    return messageHtml;
}


function sendMessage() {
    // 메시지 내용 가져오기
    var messageContent = $('#chatSend').val();
    console.log(messageContent);
    
    // 선택된 채팅방의 chat_room_idx 가져오기
    var chatRoomIdx = $('.chat-contact-list-item.active input[type=hidden]').val();
    console.log(chatRoomIdx);
    
 // 현재 시간을 가져오기
    var currentDate = new Date();

    // 시간을 원하는 형식으로 변환 (예: "2024-01-02")
    var formattedDate = currentDate.getFullYear() + "-" +
                        padZero(currentDate.getMonth() + 1) + "-" +
                        padZero(currentDate.getDate());
    
    console.log(formattedDate);
    
    console.log(loginId);
    stompClient.send("/app/chatRoom/" + chatRoomIdx, {}, JSON.stringify({
    	'chat_room_idx':chatRoomIdx,
        'message': messageContent,
        'emp_id': loginId,
        'message_date': formattedDate
    }));

    // 메시지 전송 후 입력창 초기화
    $('#chatSend').val('');
}

//숫자가 한 자리일 경우 앞에 0을 붙이는 함수
function padZero(number) {
    return (number < 10 ? '0' : '') + number;
}


function showMessage(webMessage) {
	console.log("웹소켓쇼메시지",loginId);
	var webMessageHtml = getWebMessageHtml(webMessage, loginId);
	$('#webChatMessage').append(webMessageHtml);
	
	
}

function getWebMessageHtml(webMessage, loginId) {
/* 	$('#webChatMessage').empty(); */
	console.log("웹메시지함수",webMessage);
	console.log("웹메시지함수",loginId);
    var webMessageHtml = '';

    if (webMessage.emp_id == loginId) {
        // 로그인한 사용자의 메시지
        webMessageHtml += '<li class="chat-message chat-message-right">';
        webMessageHtml += '<div class="d-flex overflow-hidden">';
        webMessageHtml += '<div class="chat-message-wrapper flex-grow-1">';
        webMessageHtml += '<div class="chat-message-text">';
        webMessageHtml += '<p class="mb-0">' + webMessage.message + '</p>';
        webMessageHtml += '</div>';
        webMessageHtml += '<div class="text-end text-muted mt-1">';
        webMessageHtml += '<small>' + webMessage.message_date + '</small>';
        webMessageHtml += '</div>';
        webMessageHtml += '</div>';
    } else {
        // 다른 사용자의 메시지
        webMessageHtml += '<li class="chat-message">';
        webMessageHtml += '<div class="d-flex overflow-hidden">';
        webMessageHtml += '<div class="user-avatar flex-shrink-0 me-3">';
        webMessageHtml += '<div class="avatar avatar-sm">';
        webMessageHtml += '<img src="../../assets/img/avatars/2.png" alt="Avatar" class="rounded-circle" />';
        webMessageHtml += '<span>' + webMessage.emp_id + '</span>';
        webMessageHtml += '</div>';
        webMessageHtml += '</div>';
        webMessageHtml += '<div class="chat-message-wrapper flex-grow-1">';
        webMessageHtml += '<div class="chat-message-text">';
        webMessageHtml += '<p class="mb-0">' + webMessage.message + '</p>';
        webMessageHtml += '</div>';
        webMessageHtml += '<div class="text-muted mt-1">';
        webMessageHtml += '<small>' + webMessage.message_date + '</small>';
        webMessageHtml += '</div>';
        webMessageHtml += '</div>';
    }


    webMessageHtml += '</div>';
    webMessageHtml += '</li>';

    return webMessageHtml;
}

    
    
</script>
    
    
  </body>
</html>
