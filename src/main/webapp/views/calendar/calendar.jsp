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

    <title>Fullcalendar - Apps | Sneat - Bootstrap 5 HTML Admin Template - Pro</title>

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
    <link rel="stylesheet" href="../../assets/vendor/libs/fullcalendar/fullcalendar.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/flatpickr/flatpickr.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/select2/select2.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/quill/editor.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/@form-validation/umd/styles/index.min.css" />

    <!-- Page CSS -->

    <link rel="stylesheet" href="../../assets/vendor/css/pages/app-calendar.css" />

    <!-- Helpers -->
    <script src="../../assets/vendor/js/helpers.js"></script>
    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Template customizer: To hide customizer set displayCustomizer value false in config.js.  -->
    <script src="../../assets/vendor/js/template-customizer.js"></script>
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="../../assets/js/config.js"></script>
    
    <style>


/* 필터 글자  */
.mb-4{
	margin-bottom: 0.5rem !important;
}
/* 내일정보기랑 버튼 사이 마진 */
.text-muted.text-uppercase{
	margin-right: 1rem;
}
/* 내일정보기와 체크필터 사이 마진 */
.checkFilter{
	margin-bottom: 1rem;
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
            
            <li class="menu-item">
              <a href="../project/project_main.go" class="menu-link">
                 <i class="menu-icon tf-icons bx bx-customize"></i>
                <div class="text-truncate" data-i18n="프로젝트">프로젝트</div>
              </a>
            </li>
            
            <li class="menu-item active">
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
              <div class="card app-calendar-wrapper">
                <div class="row g-0">
                  <!-- Calendar Sidebar -->
                  <div class="col app-calendar-sidebar" id="app-calendar-sidebar">
                    <div class="border-bottom p-4 my-sm-0 mb-3">
                      <div class="d-grid">
                        <button
                          class="btn btn-primary btn-toggle-sidebar"
                          data-bs-toggle="offcanvas"
                          data-bs-target="#addEventSidebar"
                          aria-controls="addEventSidebar">
                          <i class="bx bx-plus me-1"></i>
                          <span class="align-middle">일정 추가</span>
                        </button>
                      </div>
                    </div>
                    <div class="p-4">
                      <!-- inline calendar (flatpicker) -->
                      <div class="ms-n2">
                        <div class="inline-calendar"></div>
                      </div>

                      <hr class="container-m-nx my-4" />

                      <!-- Filter -->
                      <div class="mb-4">
                        <small class="text-small text-muted text-uppercase align-middle">Filter</small>
                      </div>
                      <div class="checkFilter">
	                      <label class="switch">
                              <input type="checkbox" class="switch-input allDay-switch">
                              <span class="switch-toggle-slider">
                                <span class="switch-on"></span>
                                <span class="switch-off"></span>
                              </span>
                              <span class="switch-label">내 일정만 보기</span>
                            </label>
					  </div>
                      <div class="form-check mb-2">
                        <input
                          class="form-check-input select-all"
                          type="checkbox"
                          id="selectAll"
                          data-value="all"
                          checked />
                        <label class="form-check-label" for="selectAll">모든 일정</label>
                      </div>

                      <div class="app-calendar-events-filter">
                        <div class="form-check form-check-danger mb-2">
                          <input
                            class="form-check-input input-filter"
                            type="checkbox"
                            id="select-personal"
                            data-value="personal"
                            checked />
                          <label class="form-check-label" for="select-personal">내 일정</label>
                        </div>
                        <div class="form-check mb-2">
                          <input
                            class="form-check-input input-filter"
                            type="checkbox"
                            id="select-business"
                            data-value="business"
                            checked />
                          <label class="form-check-label" for="select-business">프로젝트 일정</label>
                        </div>
                        <div class="form-check form-check-warning mb-2">
                          <input
                            class="form-check-input input-filter"
                            type="checkbox"
                            id="select-family"
                            data-value="family"
                            checked />
                          <label class="form-check-label" for="select-family">회의실 예약</label>
                        </div>
                        
                      </div>
                    </div>
                  </div>
                  <!-- /Calendar Sidebar -->

                  <!-- Calendar & Modal -->
                  <div class="col app-calendar-content">
                    <div class="card shadow-none border-0">
                      <div class="card-body pb-0">
                        <!-- FullCalendar -->
                        <div id="calendar"></div>
                      </div>
                    </div>
                    <div class="app-overlay"></div>
                    <!-- FullCalendar Offcanvas -->
                    <div
                      class="offcanvas offcanvas-end event-sidebar"
                      tabindex="-1"
                      id="addEventSidebar"
                      aria-labelledby="addEventSidebarLabel">
                      <div class="offcanvas-header border-bottom">
                        <h5 class="offcanvas-title mb-2" id="addEventSidebarLabel">일정 상세</h5>
                        <button
                          type="button"
                          class="btn-close text-reset"
                          data-bs-dismiss="offcanvas"
                          aria-label="Close"></button>
                      </div>
                      <div class="offcanvas-body">
                        <form class="event-form pt-0" id="eventForm" onsubmit="return false">
                          <div class="mb-3">
                            <label class="form-label" for="eventTitle">제목</label>
                            <input
                              type="text"
                              class="form-control"
                              id="eventTitle"
                              name="eventTitle"
                              placeholder="제목을 입력하세요" />
                          </div>
                          
                          <div class="mb-3">
                            <label class="form-label" for="eventStartDate">일정 시작</label>
                            <input
                              type="text"
                              class="form-control"
                              id="eventStartDate"
                              name="eventStartDate"
                              placeholder="입력" />
                          </div>
                          <div class="mb-3">
                            <label class="form-label" for="eventEndDate">일정 끝</label>
                            <input
                              type="text"
                              class="form-control"
                              id="eventEndDate"
                              name="eventEndDate"
                              placeholder="입력" />
                          </div>
                          <div class="mb-3">
                            <label class="switch">
                              <input type="checkbox" class="switch-input allDay-switch" />
                              <span class="switch-toggle-slider">
                                <span class="switch-on"></span>
                                <span class="switch-off"></span>
                              </span>
                              <span class="switch-label">종일</span>
                            </label>
                          </div>
                          
                          <div class="mb-3 select2-primary">
                            <label class="form-label" for="eventGuests">참여자 추가</label>
                            <select
                              class="select2 select-event-guests form-select"
                              id="eventGuests"
                              name="eventGuests"
                              multiple>
                              <option data-avatar="1.png" value="Jane Foster">Jane Foster</option>
                              <option data-avatar="3.png" value="Donna Frank">Donna Frank</option>
                              <option data-avatar="5.png" value="Gabrielle Robertson">Gabrielle Robertson</option>
                              <option data-avatar="7.png" value="Lori Spears">Lori Spears</option>
                              <option data-avatar="9.png" value="Sandy Vega">Sandy Vega</option>
                              <option data-avatar="11.png" value="Cheryl May">Cheryl May</option>
                            </select>
                          </div>
                          
                          <div class="mb-3">
                            <label class="form-label" for="eventDescription">설명</label>
                            <textarea class="form-control" name="eventDescription" id="eventDescription"></textarea>
                          </div>
                          <div class="mb-3 d-flex justify-content-sm-between justify-content-start my-4">
                            <div>
                              <button type="submit" class="btn btn-primary btn-add-event me-sm-3 me-1">완료</button>
                              <button
                                type="reset"
                                class="btn btn-label-secondary btn-cancel me-sm-0 me-1"
                                data-bs-dismiss="offcanvas">
                                취소
                              </button>
                            </div>
                            <div><button class="btn btn-label-danger btn-delete-event d-none">삭제</button></div>
                          </div>
                        </form>
                      </div>
                    </div>
                  </div>
                  <!-- /Calendar & Modal -->
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
    <script src="../../assets/vendor/libs/fullcalendar/fullcalendar.js"></script>
    <script src="../../assets/vendor/libs/@form-validation/umd/bundle/popular.min.js"></script>
    <script src="../../assets/vendor/libs/@form-validation/umd/plugin-bootstrap5/index.min.js"></script>
    <script src="../../assets/vendor/libs/@form-validation/umd/plugin-auto-focus/index.min.js"></script>
    <script src="../../assets/vendor/libs/select2/select2.js"></script>
    <script src="../../assets/vendor/libs/flatpickr/flatpickr.js"></script>
    <script src="../../assets/vendor/libs/moment/moment.js"></script>

    <!-- Main JS -->
    <script src="../../assets/js/main.js"></script>

    <!-- Page JS -->
    <script src="../../assets/js/app-calendar-events.js"></script>
    <script src="../../assets/js/app-calendar.js"></script>
  </body>
</html>
