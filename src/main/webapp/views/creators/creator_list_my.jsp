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
    <link rel="stylesheet" href="../../assets/vendor/libs/datatables-bs5/datatables.bootstrap5.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/datatables-responsive-bs5/responsive.bootstrap5.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/datatables-buttons-bs5/buttons.bootstrap5.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/select2/select2.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/@form-validation/umd/styles/index.min.css" />

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
    /* 선택 탭과 셀렉트 박스 */
    .form-select.create{
    	width: 15rem;
    }
    .top-tap-select{
    	margin-bottom: 0.5rem;
    }
    .top-tap-only{
    	margin-top: 0.7rem;
    	font-size: 18px;
    }
    /* 중간 버튼 */
	.d-flex.justify-content-end.pt-3{
		margin-top: -1.3rem;
	}
	.btn.btn-label-danger.suspend-user{
		margin-right: 0.7rem;
	}
	
	.btn.btn-primary.me-3{
		margin-right: 0rem !important;
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

          <!-- Content wrapper --> <!-- 여기서부터~~~~~ -->
          <div class="content-wrapper">
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
            <div class ="top-tap-select" style="display: flex; justify-content: space-between;">
			    <a href="../creators/creator_list_all.go">전체리스트</a> | <a href="../creators/creator_list_my.go">나의 크리에이터</a>
			    <select class="form-select create">
                     <option value="name">이도훈(본인)</option>
                     <option value="id">한가인</option>
                     <option value="department">정우성</option>
                     <option value="position">황정민</option>
                     <option value="title">정성화</option>
                </select>
			</div>
              <div class="row g-4 mb-4">
                <div class="col-sm-6 col-xl-3">
                  <div class="card">
                    <div class="card-body">
                      <div class="d-flex align-items-start justify-content-between">
                        <div class="content-left">
                          <span>관리 크리에이터</span>
                          <div class="d-flex align-items-end mt-2">
                            <h4 class="mb-0 me-2">41 명</h4>
                          </div>
                          <p class="mb-0">　</p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-sm-6 col-xl-3">
                  <div class="card">
                    <div class="card-body">
                      <div class="d-flex align-items-start justify-content-between">
                        <div class="content-left">
                          <span>관리채널</span>
                          <div class="d-flex align-items-end mt-2">
                            <h4 class="mb-0 me-2">88 개</h4>
                          </div>
                          <p class="mb-0">　</p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-sm-6 col-xl-3">
                  <div class="card">
                    <div class="card-body">
                      <div class="d-flex align-items-start justify-content-between">
                        <div class="content-left">
                          <span>구독자 합계</span>
                          <div class="d-flex align-items-end mt-2">
                            <h4 class="mb-0 me-2">221,207,208 명</h4>
                          </div>
                          <p class="mb-0">전일대비 <small class="text-success">+0.0%</small></p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-sm-6 col-xl-3">
                  <div class="card">
                    <div class="card-body">
                      <div class="d-flex align-items-start justify-content-between">
                        <div class="content-left">
                          <span>컨텐츠 합계</span>
                          <div class="d-flex align-items-end mt-2">
                            <h4 class="mb-0 me-2">48,043개</h4>
                          </div>
                          <p class="mb-0">전일 대비 <small class="text-danger">-3.5%</small></p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- 버튼들 -->
              <div class="d-flex justify-content-end pt-3">
			    <a href="javascript:;" class="btn btn-label-danger suspend-user" data-bs-target="#editUser" data-bs-toggle="modal">열람 권한</a>
			    <a href="/creatorAdd.go" class="btn btn-primary me-3"><i class="bx bx-user-check me-1"></i>크리에이터 추가</a>
			  </div>
                     
              
              <!-- 크리에이터 카드들 -->
              <div class="row">
			    <div class="col-md-6 col-lg-4">
                  <h6 class="mt-2 text-muted"></h6>
                  <div class="card">
                    <img class="card-img-top" src="../../assets/img/elements/7.jpg" alt="Card image cap" />
                    <div class="card-body">
                      <h5 class="card-title">혜안</h5>
                      <br/>
                      <p class="card-text">대표 채널 | <a href="javascript:void(0)" class="card-link"> 혜안</a></p>
                      <p class="card-text">구독자 수 | 3,319,001</p>
                      <p class="card-text">| 게임, FUN |</p>
                    </div>
                  </div>
                </div>
			
			    <div class="col-md-6 col-lg-4">
                  <h6 class="mt-2 text-muted"></h6>
                  <div class="card">
                    <img class="card-img-top" src="../../assets/img/elements/5.jpg" alt="Card image cap" />
                    <div class="card-body">
                      <h5 class="card-title">허팝</h5>
                      <br/>
                      <p class="card-text">대표 채널 | <a href="javascript:void(0)" class="card-link"> 허팝</a></p>
                      <p class="card-text">구독자 수 | 3,319,001</p>
                      <p class="card-text">| 지식, 정보, 푸드, 먹방 |</p>
                    </div>
                  </div>
                </div>
			
			   <div class="col-md-6 col-lg-4">
                  <h6 class="mt-2 text-muted"></h6>
                  <div class="card">
                    <img class="card-img-top" src="../../assets/img/elements/18.jpg" alt="Card image cap" />
                    <div class="card-body">
                      <h5 class="card-title">히빱</h5>
                      <br/>
                      <p class="card-text">대표 채널 | <a href="javascript:void(0)" class="card-link"> 많이 먹어도 살 안 쪄서 좋겠당</a></p>
                      <p class="card-text">구독자 수 | 2,319,001</p>
                      <p class="card-text">| 먹방, 코믹 |</p>
                    </div>
                  </div>
                </div>
                <div class="col-md-6 col-lg-4">
                  <h6 class="mt-2 text-muted"></h6>
                  <div class="card">
                    <img class="card-img-top" src="../../assets/img/elements/7.jpg" alt="Card image cap" />
                    <div class="card-body">
                      <h5 class="card-title">혜안</h5>
                      <br/>
                      <p class="card-text">대표 채널 | <a href="javascript:void(0)" class="card-link"> 혜안</a></p>
                      <p class="card-text">구독자 수 | 3,319,001</p>
                      <p class="card-text">| 게임, FUN |</p>
                    </div>
                  </div>
                </div>
                
			
			
			    <!-- 다음 카드들도 유사하게 추가 -->
			</div>
              
              
            </div>
            <!-- / Content -->

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
    <script src="../../assets/vendor/libs/datatables-bs5/datatables-bootstrap5.js"></script> <!-- 페이징들어있는거 -->
    <script src="../../assets/vendor/libs/select2/select2.js"></script>
    <script src="../../assets/vendor/libs/@form-validation/umd/bundle/popular.min.js"></script>
    <script src="../../assets/vendor/libs/@form-validation/umd/plugin-bootstrap5/index.min.js"></script>
    <script src="../../assets/vendor/libs/@form-validation/umd/plugin-auto-focus/index.min.js"></script>
    <script src="../../assets/vendor/libs/cleavejs/cleave.js"></script>
    <script src="../../assets/vendor/libs/cleavejs/cleave-phone.js"></script>

    <!-- Main JS -->
    <script src="../../assets/js/main.js"></script>

    <!-- Page JS -->
    <!-- 
    <script src="../../assets/js/app-user-list.js"></script>
     --> 
    <script>
    'use strict';

    $(function () {
      var dataTablePermissions = $('.datatables-permissions'),
        dt_permission,
        userList = 
  		"data": [
			{
				"id": 1,
				"full_name": "Galen Slixby",
				"role": "Editor",
				"username": "gslixby0",
				"email": "gslixby0@abc.net.au",
				"current_plan": "Enterprise",
				"billing": "Manual - Credit Card",
				"status": 3,
				"avatar": ""
			},
			{
				"id": 2,
				"full_name": "Halsey Redmore",
				"role": "Author",
				"username": "hredmore1",
				"email": "hredmore1@imgur.com",
				"current_plan": "Team",
				"billing": "Manual - Paypal",
				"status": 1,
				"avatar": "10.png"
			}
		]

      // Users List datatable
      if (dataTablePermissions.length) {
        dt_permission = dataTablePermissions.DataTable({
          ajax: assetsPath + 'json/permissions-list.json', // JSON file to add data
          columns: [
            // columns according to JSON
            { data: '' },
            { data: 'id' },
            { data: 'name' },
            { data: 'assigned_to' },
            { data: 'created_date' },
            { data: '' }
          ],
          columnDefs: [
            {
              // For Responsive
              className: 'control',
              orderable: false,
              searchable: false,
              responsivePriority: 2,
              targets: 0,
              render: function (data, type, full, meta) {
                return '';
              }
            },
            {
              targets: 1,
              searchable: false,
              visible: false
            },
            {
              // Name
              targets: 2,
              render: function (data, type, full, meta) {
                var $name = full['name'];
                return '<span class="text-nowrap">' + $name + '</span>';
              }
            },
            {
              // User Role
              targets: 3,
              orderable: false,
              render: function (data, type, full, meta) {
                var $assignedTo = full['assigned_to'],
                  $output = '';
                var roleBadgeObj = {
                  Admin: '<a href="' + userList + '"><span class="badge  bg-label-primary m-1">Administrator</span></a>',
                  Manager: '<a href="' + userList + '"><span class="badge  bg-label-warning m-1">Manager</span></a>',
                  Users: '<a href="' + userList + '"><span class="badge  bg-label-success m-1">Users</span></a>',
                  Support: '<a href="' + userList + '"><span class="badge  bg-label-info m-1">Support</span></a>',
                  Restricted:
                    '<a href="' + userList + '"><span class="badge  bg-label-danger m-1">Restricted User</span></a>'
                };
                for (var i = 0; i < $assignedTo.length; i++) {
                  var val = $assignedTo[i];
                  $output += roleBadgeObj[val];
                }
                return '<span class="text-nowrap">' + $output + '</span>';
              }
            },
            {
              // remove ordering from Name
              targets: 4,
              orderable: false,
              render: function (data, type, full, meta) {
                var $date = full['created_date'];
                return '<span class="text-nowrap">' + $date + '</span>';
              }
            },
            {
              // Actions
              targets: -1,
              searchable: false,
              title: 'Actions',
              orderable: false,
              render: function (data, type, full, meta) {
                return (
                  '<span class="text-nowrap"><button class="btn btn-sm btn-icon me-2" data-bs-target="#editPermissionModal" data-bs-toggle="modal" data-bs-dismiss="modal"><i class="bx bx-edit"></i></button>' +
                  '<button class="btn btn-sm btn-icon delete-record"><i class="bx bx-trash"></i></button></span>'
                );
              }
            }
          ],
          order: [[1, 'asc']],
          dom:
            '<"row mx-1"' +
            '<"col-sm-12 col-md-3" l>' +
            '<"col-sm-12 col-md-9"<"dt-action-buttons text-xl-end text-lg-start text-md-end text-start d-flex align-items-center justify-content-md-end justify-content-center flex-wrap me-1"<"me-3"f>B>>' +
            '>t' +
            '<"row mx-2"' +
            '<"col-sm-12 col-md-6"i>' +
            '<"col-sm-12 col-md-6"p>' +
            '>',
          language: {
            sLengthMenu: '_MENU_',
            search: 'Search',
            searchPlaceholder: 'Search..'
          },
          // Buttons with Dropdown
          buttons: [
            {
              text: 'Add Permission',
              className: 'add-new btn btn-primary mb-3 mb-md-0',
              attr: {
                'data-bs-toggle': 'modal',
                'data-bs-target': '#addPermissionModal'
              },
              init: function (api, node, config) {
                $(node).removeClass('btn-secondary');
              }
            }
          ],
          // For responsive popup
          responsive: {
            details: {
              display: $.fn.dataTable.Responsive.display.modal({
                header: function (row) {
                  var data = row.data();
                  return 'Details of ' + data['name'];
                }
              }),
              type: 'column',
              renderer: function (api, rowIdx, columns) {
                var data = $.map(columns, function (col, i) {
                  return col.title !== '' // ? Do not show row in modal popup if title is blank (for check box)
                    ? '<tr data-dt-row="' +
                        col.rowIndex +
                        '" data-dt-column="' +
                        col.columnIndex +
                        '">' +
                        '<td>' +
                        col.title +
                        ':' +
                        '</td> ' +
                        '<td>' +
                        col.data +
                        '</td>' +
                        '</tr>'
                    : '';
                }).join('');

                return data ? $('<table class="table"/><tbody />').append(data) : false;
              }
            }
          },
          initComplete: function () {
            // Adding role filter once table initialized
            this.api()
              .columns(3)
              .every(function () {
                var column = this;
                var select = $(
                  '<select id="UserRole" class="form-select text-capitalize"><option value=""> Select Role </option></select>'
                )
                  .appendTo('.user_role')
                  .on('change', function () {
                    var val = $.fn.dataTable.util.escapeRegex($(this).val());
                    column.search(val ? '^' + val + '$' : '', true, false).draw();
                  });

                column
                  .data()
                  .unique()
                  .sort()
                  .each(function (d, j) {
                    select.append('<option value="' + d + '" class="text-capitalize">' + d + '</option>');
                  });
              });
          }
        });
      }

      // Delete Record
      $('.datatables-permissions tbody').on('click', '.delete-record', function () {
        dt_permission.row($(this).parents('tr')).remove().draw();
      });

      // Filter form control to default size
      // ? setTimeout used for multilingual table initialization
      setTimeout(() => {
        $('.dataTables_filter .form-control').removeClass('form-control-sm');
        $('.dataTables_length .form-select').removeClass('form-select-sm');
      }, 300);
    });
    </script>
    
  </body>
</html>
