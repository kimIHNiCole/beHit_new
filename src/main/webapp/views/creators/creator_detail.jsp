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

    <title>User View - Pages | Sneat - Bootstrap 5 HTML Admin Template - Pro</title>

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
    <link rel="stylesheet" href="../../assets/vendor/libs/datatables-bs5/datatables.bootstrap5.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/datatables-responsive-bs5/responsive.bootstrap5.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/datatables-buttons-bs5/buttons.bootstrap5.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/animate-css/animate.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/sweetalert2/sweetalert2.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/select2/select2.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/@form-validation/umd/styles/index.min.css" />

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
            
            <li class="menu-item active">
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
                            src="../../assets/img/avatars/10.png"
                            height="110"
                            width="110"
                            alt="User avatar" />
                          <div class="user-info text-center">
                            <h4 class="mb-2">히빱</h4>
                            
                          </div>
                        </div>
                      </div>
                      <div class="d-flex justify-content-around flex-wrap my-4 py-3">
                        <div class="d-flex align-items-start me-4 mt-3 gap-3">
                          <span class="badge bg-label-primary p-2 rounded"><i class="bx bx-check bx-sm"></i></span>
                          <div>
                            <h5 class="mb-0">구독자</h5>
                            <span>3,333,333 명</span>
                          </div>
                        </div>
                        <div class="d-flex align-items-start mt-3 gap-3">
                          <span class="badge bg-label-primary p-2 rounded"><i class="bx bx-customize bx-sm"></i></span>
                          <div>
                            <h5 class="mb-0">컨텐츠 수</h5>
                            <span>1,432 개</span>
                          </div>
                        </div>
                      </div>
                      <h5 class="pb-2 border-bottom mb-4">상세정보</h5>
                      <div class="info-container">
                        <ul class="list-unstyled">
                          <li class="mb-3">
                            <span class="fw-medium me-2">이름:</span>
                            <span>김희연</span>
                          </li>
                          <li class="mb-3">
                            <span class="fw-medium me-2">성별:</span>
                            <span>여자</span>
                          </li>
                          <li class="mb-3">
                            <span class="fw-medium me-2">생년월일:</span>
                            <span>1997.12.23</span>
                          </li>
                          <li class="mb-3">
                            <span class="fw-medium me-2">국적:</span>
                            <span>한국</span>
                          </li>
                          <li class="mb-3">
                            <span class="fw-medium me-2">연락처:</span>
                            <span>010-1111-2222</span>
                          </li>
                          <li class="mb-3">
                            <span class="fw-medium me-2">Email:</span>
                            <span>vafgot@vultukir.org</span>
                          </li>
                          
                          <li class="mb-3">
                            <span class="fw-medium me-2">계약 시작일:</span>
                            <span>2022.01.14</span>
                          </li>
                          <li class="mb-3">
                            <span class="fw-medium me-2">계약 만료일:</span>
                            <span>2023.01.13</span>
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
                      <p class="fw-medium me-2">동해물과 백두산이 마르고 닳도록 하느님이 보유하사 우리나라 만세</p>
                      <p class="fw-medium me-2">사실 히빱은 히밥의 짝퉁임을 여기에 고하매 하늘을 우러러 부끄럽기 짝이 없는 일이로다</p>
                      
                      
                    </div>
                  </div>
                  <!-- /Plan Card -->
                </div>
                <!--/ User Sidebar -->

                <!-- User Content -->
                <div class="col-xl-8 col-lg-7 col-md-7 order-0 order-md-1">
                  <!-- User Pills -->
                  <div class="row">
                  <div class="col-md-8">
                  <ul class="nav nav-pills flex-column flex-md-row mb-3">
                    <li class="nav-item">
                      <a class="nav-link active" href="javascript:void(0);"><i class='bx bx-face' ></i></i>크리에이터 정보</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="../creators/creator_detail_channel.go"
                        ><i class='bx bxl-sketch' ></i>대표 채널 정보</a
                      >
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="app-user-view-billing.go"
                        ><i class='bx bxl-youtube' ></i></i>컨텐츠 정보(임시)</a
                      >
                    </li>
                  </ul>
                  </div>
                  <div class="col-md-4 text-end">
                  	<div class="d-flex justify-content-center pt-3">
                          <a
                            href="javascript:;"
                            class="btn btn-primary me-3"
                            data-bs-target="#editUser"
                            data-bs-toggle="modal"
                            >수정</a
                          >
                          <a href="javascript:;" class="btn btn-label-danger suspend-user">삭제</a>
                        </div>
                      </div>
                    </div>
                  <!--/ User Pills -->

                  <!-- Project table -->
                  <div class="card mb-4">
                    <h5 class="card-header">활동 채널 리스트</h5>
                    <div class="table-responsive mb-3">
                      <table class="table datatable-project border-top">
                        <thead>
                          <tr>
                            <th>채널명</th>
                            <th class="text-nowrap">카테고리</th>
                            <th>구독자 수</th>
                            <th>컨텐츠 수</th>
                            <th>총 조회수</th>
                            <th>가입일자</th>
                          </tr>
                        </thead>
                        <tbody>
                        	<tr>
	                            <th>쀼쀼</th>
	                            <th class="text-nowrap">일상, 코믹</th>
	                            <th>11,234 명</th>
	                            <th>45 개</th>
	                            <th>1,999,356</th>
	                            <th>2023.10.01</th>
                          	</tr>
                          	<tr>
	                            <th>많이 먹어도 살 안 쪄서 좋겠당</th>
	                            <th class="text-nowrap">먹방</th>
	                            <th>3,332,123 명</th>
	                            <th>325 개</th>
	                            <th>515,745,435</th>
	                            <th>2019.04.24</th>
                          	</tr>
                        </tbody>
                      </table>
                    </div>
                  </div>
                  <!-- /Project table -->
                  <!-- Project table -->
                  <div class="card mb-4">
                    <h5 class="card-header">SNS</h5>
                    <div class="table-responsive mb-3">
                      <table class="table datatable-project border-top">
                        <thead>
                          <tr>                         
                            <th>SNS 주소</th>
                            <th class="text-nowrap">팔로워</th>
                            <th>팔로우</th>
                            <th>게시물</th>
                          </tr>
                        </thead>
                        <tbody>
                        	<tr>                         
	                            <th><img src="../../assets/img/icons/brands/instagram.png" alt="instagram" class="me-3" height="20">히빱 일상</th>
	                            <th class="text-nowrap">311,234</th>
	                            <th>1 명</th>
	                            <th>279 개</th>
                           </tr>
                        	<tr>                         
	                            <th><img src="../../assets/img/icons/brands/facebook.png" alt="facebook" class="me-3" height="20">히빱 페북</th>
	                            <th class="text-nowrap">22,222</th>
	                            <th>191 명</th>
	                            <th>-</th>
                           </tr>
                        </tbody>
                      </table>
                    </div>
                  </div>
                  <!-- /Project table -->

                  <!-- Activity Timeline -->
                  <div class="card mb-4">
                    <h4 class="card-header">활동이력</h4>
                    <div class="card-body">
                      <ul class="timeline">
                        <li class="timeline-item timeline-item-transparent">
                          <span class="timeline-point-wrapper"
                            ><span class="timeline-point timeline-point-primary"></span
                          ></span>
                          <div class="timeline-event">
                            <div class="timeline-header mb-1">
                              <h6 class="mb-0">유튜브 채널 1</h6>
                              <small class="text-muted">2023-12-12</small>
                            </div>
                            <p class="mb-2">200만 구독자 달성</p>
                            
                          </div>
                        </li>
                        <li class="timeline-item timeline-item-transparent">
                          <span class="timeline-point-wrapper"
                            ><span class="timeline-point timeline-point-warning"></span
                          ></span>
                          <div class="timeline-event">
                            <div class="timeline-header mb-1">
                              <h6 class="mb-0">유튜브 채널 2</h6>
                              <small class="text-muted">2023-11-28</small>
                            </div>
                            <p class="mb-2">10만 구독자 달성</p>
                            
                          </div>
                        </li>
                        <li class="timeline-item timeline-item-transparent">
                          <span class="timeline-point-wrapper"
                            ><span class="timeline-point timeline-point-info"></span
                          ></span>
                          <div class="timeline-event">
                            <div class="timeline-header mb-1">
                              <h6 class="mb-0">히빱</h6>
                              <small class="text-muted">2023-11-22</small>
                            </div>
                            <p class="mb-2">유튜브 크리에이터 대상 수상</p>
                            
                          </div>
                        </li>
                        <li class="timeline-item timeline-item-transparent">
                          <span class="timeline-point-wrapper"
                            ><span class="timeline-point timeline-point-success"></span
                          ></span>
                          <div class="timeline-event">
                            <div class="timeline-header mb-1">
                              <h6 class="mb-0">유튜브 채널 2</h6>
                              <small class="text-muted">2023-10-01</small>
                            </div>
                            <p class="mb-0">채널 가입일</p>
                          </div>
                        </li>
                        <li class="timeline-end-indicator">
                          <i class="bx bx-check-circle"></i>
                        </li>
                      </ul>
                    </div>
                  </div>
                  <!-- /Activity Timeline -->

                </div>
                <!--/ User Content -->
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
    <script src="../../assets/vendor/libs/moment/moment.js"></script>
    <script src="../../assets/vendor/libs/datatables-bs5/datatables-bootstrap5.js"></script>
    <script src="../../assets/vendor/libs/sweetalert2/sweetalert2.js"></script>
    <script src="../../assets/vendor/libs/cleavejs/cleave.js"></script>
    <script src="../../assets/vendor/libs/cleavejs/cleave-phone.js"></script>
    <script src="../../assets/vendor/libs/select2/select2.js"></script>
    <script src="../../assets/vendor/libs/@form-validation/umd/bundle/popular.min.js"></script>
    <script src="../../assets/vendor/libs/@form-validation/umd/plugin-bootstrap5/index.min.js"></script>
    <script src="../../assets/vendor/libs/@form-validation/umd/plugin-auto-focus/index.min.js"></script>

    <!-- Main JS -->
    <script src="../../assets/js/main.js"></script>

    <!-- Page JS -->
<!--     <script src="../../assets/js/modal-edit-user.js"></script>
    <script src="../../assets/js/app-user-view.js"></script>
    <script src="../../assets/js/app-user-view-account.js"></script> -->
  </body>
</html>
