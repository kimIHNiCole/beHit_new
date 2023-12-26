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
    <link rel="stylesheet" href="../../assets/vendor/libs/sweetalert2/sweetalert2.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/select2/select2.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/@form-validation/umd/styles/index.min.css" />
	<link rel="stylesheet" href="../../assets/vendor/libs/apex-charts/apex-charts.css" />

    <!-- Page CSS -->

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
                      <a class="nav-link" href="../creators/creator_detail.go"><i class='bx bx-face' ></i></i>크리에이터 정보</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link active" href="../creators/creator_detail_channel.go"
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

					<!-- Line Area Chart -->
                <div class="col-12 mb-4">
                  <div class="card">
                    <div class="card-header d-flex justify-content-between">
                      <div>
                        <h5 class="card-title mb-0">일별 구독자 수</h5>
                        <small class="text-muted">구독자 성장세 확인</small>
                      </div>
                      <!-- 쓸 수도 있을 것 같아서 일단 남겨둠
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
                            <a href="javascript:void(0);" class="dropdown-item d-flex align-items-center">Today</a>
                          </li>
                          <li>
                            <a href="javascript:void(0);" class="dropdown-item d-flex align-items-center">Yesterday</a>
                          </li>
                          <li>
                            <a href="javascript:void(0);" class="dropdown-item d-flex align-items-center"
                              >Last 7 Days</a
                            >
                          </li>
                          <li>
                            <a href="javascript:void(0);" class="dropdown-item d-flex align-items-center"
                              >Last 30 Days</a
                            >
                          </li>
                          <li>
                            <hr class="dropdown-divider" />
                          </li>
                          <li>
                            <a href="javascript:void(0);" class="dropdown-item d-flex align-items-center"
                              >Current Month</a
                            >
                          </li>
                          <li>
                            <a href="javascript:void(0);" class="dropdown-item d-flex align-items-center">Last Month</a>
                          </li>
                        </ul>
                      </div>
                       달력 드롭다운 영역--> 
                    </div>
                    <div class="card-body">
                      <div id="lineAreaChart"></div>
                    </div>
                  </div>
                </div>
                <!-- /Line Area Chart -->
					
				<!-- Line Chart -->
                <div class="col-12 mb-4">
                  <div class="card">
                    <div class="card-header d-flex justify-content-between">
                      <div>
                        <h5 class="card-title mb-0">일일 조회수 추이</h5>
                        <small class="text-muted">조회수 변동값 체크를 통해 알고리즘 상태와 채널 성장도 체크</small>
                      </div>
                      <!-- 
                      <div class="d-sm-flex d-none align-items-center">
                        <h5 class="mb-0 me-3">$ 100,000</h5>
                        <span class="badge bg-label-secondary">
                          <i class="bx bx-down-arrow-alt bx-xs text-danger"></i>
                          <span class="align-middle">20%</span>
                        </span>
                      </div>
                       -->
                    </div>
                    <div class="card-body">
                      <div id="lineChart"></div>
                    </div>
                  </div>
                </div>
                <!-- /Line Chart -->
               
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
    <script src="../../assets/js/modal-edit-user.js"></script>
    <script src="../../assets/js/app-user-view.js"></script>
     <script src="../../assets/vendor/libs/apex-charts/apexcharts.js"></script>
     <!-- <script src="../../assets/js/charts-apex.js"></script> -->
     <script>
     
     /**
      * Charts Apex
      */

     'use strict';

     (function () {
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

       // Color constant
       const chartColors = {
         column: {
           series1: '#826af9',
           series2: '#d2b0ff',
           bg: '#f8d3ff'
         },
         donut: {
           series1: '#fee802',
           series2: '#3fd0bd',
           series3: '#826bf8',
           series4: '#2b9bf4'
         },
         area: {
           series1: '#29dac7',
           series2: '#60f2ca',
           series3: '#a5f8cd'
         }
       };

       // Heat chart data generator
       function generateDataHeat(count, yrange) {
         let i = 0;
         let series = [];
         while (i < count) {
           let x = 'w' + (i + 1).toString();
           let y = Math.floor(Math.random() * (yrange.max - yrange.min + 1)) + yrange.min;

           series.push({
             x: x,
             y: y
           });
           i++;
         }
         return series;
       }

       // Line Area Chart
       // --------------------------------------------------------------------
       const areaChartEl = document.querySelector('#lineAreaChart'),
         areaChartConfig = {
           chart: {
             height: 400,
             type: 'area',
             parentHeightOffset: 0,
             toolbar: {
               show: false
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
           colors: [chartColors.area.series3, chartColors.area.series2, chartColors.area.series1],
           series: [
             {
               name: '구독자 수',
               data: [100, 120, 90, 170, 130, 160, 140, 240, 220, 180, 270, 280, 375]
             },
             {
               name: '컨텐츠 수',
               data: [60, 80, 70, 110, 80, 100, 90, 180, 160, 140, 200, 220, 275]
             },
             {
               name: '총 조회수',
               data: [20, 40, 30, 70, 40, 60, 50, 140, 120, 100, 140, 180, 220]
             }
           ],
           xaxis: {
             categories: [
               '7/12',
               '8/12',
               '9/12',
               '10/12',
               '11/12',
               '12/12',
               '13/12',
               '14/12',
               '15/12',
               '16/12',
               '17/12',
               '18/12',
               '19/12',
               '20/12'
             ],
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
             type: 'solid'
           },
           tooltip: {
             shared: false
           }
         };
       if (typeof areaChartEl !== undefined && areaChartEl !== null) {
         const areaChart = new ApexCharts(areaChartEl, areaChartConfig);
         areaChart.render();
       }

       // Bar Chart
       // --------------------------------------------------------------------
       const barChartEl = document.querySelector('#barChart'),
         barChartConfig = {
           chart: {
             height: 400,
             type: 'bar',
             stacked: true,
             parentHeightOffset: 0,
             toolbar: {
               show: false
             }
           },
           plotOptions: {
             bar: {
               columnWidth: '15%',
               colors: {
                 backgroundBarColors: [
                   chartColors.column.bg,
                   chartColors.column.bg,
                   chartColors.column.bg,
                   chartColors.column.bg,
                   chartColors.column.bg
                 ],
                 backgroundBarRadius: 10
               }
             }
           },
           dataLabels: {
             enabled: false
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
           colors: [chartColors.column.series1, chartColors.column.series2],
           stroke: {
             show: true,
             colors: ['transparent']
           },
           grid: {
             borderColor: borderColor,
             xaxis: {
               lines: {
                 show: true
               }
             }
           },
           series: [
             {
               name: 'Apple',
               data: [90, 120, 55, 100, 80, 125, 175, 70, 88, 180]
             },
             {
               name: 'Samsung',
               data: [85, 100, 30, 40, 95, 90, 30, 110, 62, 20]
             }
           ],
           xaxis: {
             categories: ['7/12', '8/12', '9/12', '10/12', '11/12', '12/12', '13/12', '14/12', '15/12', '16/12'],
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
             opacity: 1
           }
         };
       if (typeof barChartEl !== undefined && barChartEl !== null) {
         const barChart = new ApexCharts(barChartEl, barChartConfig);
         barChart.render();
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
               data: [280, 200, 220, 180, 270, 250, 70, 90, 200, 150, 160, 100, 150, 100, 50]
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
               return '<div class="px-3 py-2">' + '<span>' + series[seriesIndex][dataPointIndex] + '%</span>' + '</div>';
             }
           },
           xaxis: {
             categories: [
               '7/12',
               '8/12',
               '9/12',
               '10/12',
               '11/12',
               '12/12',
               '13/12',
               '14/12',
               '15/12',
               '16/12',
               '17/12',
               '18/12',
               '19/12',
               '20/12',
               '21/12'
             ],
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




     })();

     
     </script>
     
     
  </body>
</html>
