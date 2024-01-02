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

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iKt6iOp+J8r+longdZlF/YJ83QpvL+fm9ifktD5tr5Q/f1vZ/EKUnDSny" crossorigin="anonymous">
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
    <link rel="stylesheet" href="../../assets/vendor/libs/datatables-checkboxes-jquery/datatables.checkboxes.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/animate-css/animate.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/sweetalert2/sweetalert2.css" />

    <!-- Page CSS -->
    <link rel="stylesheet" href="../../assets/vendor/css/pages/page-profile.css" />

    <!-- Helpers -->
    <script src="../../assets/vendor/js/helpers.js"></script>
    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Template customizer: To hide customizer set displayCustomizer value false in config.js.  -->
    <script src="../../assets/vendor/js/template-customizer.js"></script>
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="../../assets/js/config.js"></script>
    
    <style>
    .homePosition{
    font-size: 12px;
    }
    
    img.rounded-top{
	height: 95px;
    }
    .bx.bxl-youtube{
    margin-right: 15px;
    }
    .homeCate{
    font-size: 11px;
    }
    .text-muted.text-uppercase.homeO{
    font-size: 20px;
    }
    .todayWork{
    text-align: center;
    font-size: 15px;
    margin-top: 30px;
    margin-bottom: 0px;
    }
    .todayWorkTime{
    text-align: center;
    font-size: 30px;
    margin-top: -5px;
    }
    .card-header.plus{
    margin-top: 10px;
    font-size: 13px;
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
            <li class="menu-item active">
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
              <!-- Header -->
              <div class="row">
                <div class="col-12">
                  <div class="card mb-4">
                    <div class="user-profile-header-banner">
                      <img src="../../assets/img/pages/profile-banner.png" alt="Banner image" class="rounded-top" />
                    </div>
                    <div class="user-profile-header d-flex flex-column flex-sm-row text-sm-start text-center mb-4">
                      <div class="flex-shrink-0 mt-n2 mx-sm-0 mx-auto">
                        <img
                          src="../../assets/img/avatars/1.png"
                          alt="user image"
                          class="d-block h-auto ms-0 ms-sm-4 rounded user-profile-img" />
                      </div>
                      <div class="flex-grow-1 mt-3 mt-sm-5">
                        <div
                          class="d-flex align-items-md-end align-items-sm-start align-items-center justify-content-md-between justify-content-start mx-4 flex-md-row flex-column gap-4">
                          <div class="user-profile-info">
                            <h4>한가인  <span class='homePosition'>/ 대리</span></h4>
                            <ul
                              class="list-inline mb-0 d-flex align-items-center flex-wrap justify-content-sm-start justify-content-center gap-2">
                              <li class="list-inline-item fw-medium"><i class="bx bx-map"></i></i> 매니지먼트팀</li>
                              <li class="list-inline-item fw-medium"><i class='bx bx-ghost'></i></i> 팀원</li>
                              <li class="list-inline-item fw-medium"><i class='bx bxs-time' ></i> 사용 연차 : 66시간</li>
                              <li class="list-inline-item fw-medium"><i class='bx bx-time-five' ></i> 잔여 연차 : 12시간</li>
                            </ul>
                          </div>
                          <a href="../profile/profiledetail" class="btn btn-primary text-nowrap">
                            <i class="bx bx-user-check me-1"></i>내 정보 보기
                          </a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!--/ Header -->

              

              <!-- User Profile Content -->
              <div class="row">
                <div class="col-xl-4 col-lg-5 col-md-5">
                  <!-- About User -->
                  <div class="card mb-4">
                    <div class="card-body">
                      <small class="text-muted text-uppercase homeO">근태관리</small>                      
                      <hr/>
                      <div class="container">
					    <small class="text-muted text-uppercase moreS" id="currentDateTime">오늘 날짜</small>
					  </div>
                      <div>
	                      <div>
	                      	<p class="todayWork">오늘의 출퇴근 시간</p>
	                      	<p class="todayWorkTime">09:00 ~ 18:00</p>
	                      </div>
                      </div>
                      <br/>
                      <ul class="list-unstyled mb-4 mt-3">
                        <li class="d-flex align-items-center mb-3">
                          <i class='bx bx-timer' ></i><span class="fw-medium mx-2">출근 시간:</span>
                          <span>09:34</span>
                        </li>
                        <li class="d-flex align-items-center mb-3">
                         <i class='bx bxs-timer' ></i><span class="fw-medium mx-2">퇴근 시간:</span> <span>18:30</span>
                        </li>
                        
                      </ul>

                      <div class="row">
				        <div class="col-md-6">
				            <button type="button" class="btn btn-success" id="type-success">출근하기</button>
				        </div>
				        <div class="col-md-6 text-end">
				            <button type="button" class="btn btn-warning" id="type-warning">퇴근하기</button>
				        </div>
				    </div>
                    </div>
                  </div>
                  <!--/ About User -->
                  <!-- Profile Overview -->
                  <div class="card mb-4">
                    <div class="card-body">
                      <small class="text-muted text-uppercase">주간 날씨</small>
                      <hr/>
                      <div>날씨 api 위치
                      </div>
                    </div>
                  </div>
                  <!--/ Profile Overview -->
                </div>
                <!-- 급상승 유튜버 영역 -->
	                <div class="col-xl-8 col-lg-7 col-md-7">
	                  <!-- Activity Timeline -->
	                  <div class="card card-action mb-4">
	                    <div class="card-header align-items-center">
	                      <h5 class="card-action-title mb-0"><i class='bx bxl-youtube' ></i>급상승 유튜버</h5>
	                    </div>
	                    <!-- Basic Bootstrap Table -->
	              <div class="card">
	                <div class="table-responsive text-nowrap">
	                  <table class="table">
	                    <thead>
	                      <tr>
	                      	<th>순위</th>
	                        <th>썸네일</th>
	                        <th>채널 이름/분야</th>
	                        <th>구독자수</th>
	                        <th>구독자 급상승 수</th>
	                        <th>일일 조회수</th>
	                      </tr>
	                    </thead>
	                    <tbody class="table-border-bottom-0">
	                      <tr>
	                        <td>1</td>
	                        <td>
	                        <div class="avatar avatar-lg me-2">
	                        <img src="../../assets/img/avatars/1.png" alt="Avatar" class="rounded-circle">
	                        </div>
	                        </td>
	                        <td>
	                          <span class="fw-medium">가인은 가인가인</span>
	                          <div><span class="badge bg-label-primary me-1">#일상</span></div>
	                        </td>
	                        <td><span>41222</span></td>
	                        <td>
	                         <span>223</span>
	                        </td>
	                        <td>
	                         <span>1542843</span>
	                        </td>
	                      </tr>
	                      <tr>
	                        <td>2</td>
	                        <td>
	                        <div class="avatar avatar-lg me-2">
	                        <img src="../../assets/img/avatars/1.png" alt="Avatar" class="rounded-circle">
	                        </div>
	                        </td>
	                        <td>
	                          <span class="fw-medium">금요일은 반차 쓰고 싶다</span>
	                          <div><span class="badge bg-label-primary me-1">#회사생활</span></div>
	                        </td>
	                        <td><span>41222</span></td>
	                        <td>
	                         <span>223</span>
	                        </td>
	                        <td>
	                         <span>1542843</span>
	                        </td>
	                      </tr>
	                      <tr>
	                        <td>3</td>
	                        <td>
	                        <div class="avatar avatar-lg me-2">
	                        <img src="../../assets/img/avatars/1.png" alt="Avatar" class="rounded-circle">
	                        </div>
	                        </td>
	                        <td>
	                          <span class="fw-medium">놀토</span>
	                          <div><span class="badge bg-label-primary me-1">#예능</span></div>
	                        </td>
	                        <td><span>41222</span></td>
	                        <td>
	                         <span>223</span>
	                        </td>
	                        <td>
	                         <span>1542843</span>
	                        </td>
	                      </tr>
	                      <tr>
	                        <td>4</td>
	                        <td>
	                        <div class="avatar avatar-lg me-2">
	                        <img src="../../assets/img/avatars/1.png" alt="Avatar" class="rounded-circle">
	                        </div>
	                        </td>
	                        <td>
	                          <span class="fw-medium">모름</span>
	                          <div><span class="badge bg-label-primary me-1">#모름</span></div>
	                        </td>
	                        <td><span>41222</span></td>
	                        <td>
	                         <span>223</span>
	                        </td>
	                        <td>
	                         <span>1542843</span>
	                        </td>
	                      </tr>
	                      <tr>
	                        <td>5</td>
	                        <td>
	                        <div class="avatar avatar-lg me-2">
	                        <img src="../../assets/img/avatars/1.png" alt="Avatar" class="rounded-circle">
	                        </div>
	                        </td>
	                        <td>
	                          <span class="fw-medium">모름</span>
	                          <div><span class="badge bg-label-primary me-1">#모름</span></div>
	                        </td>
	                        <td><span>41222</span></td>
	                        <td>
	                         <span>223</span>
	                        </td>
	                        <td>
	                         <span>1542843</span>
	                        </td>
	                      </tr>
	                    </tbody>
	                  </table>
	                </div>
	              </div>
                  </div>
                  <!--/ 급상승 유튜버 -->
                  <!-- Projects table -->
                  <div class="card mb-4">
                    <div class="row">
				        <div class="col-md-6">
				            <h5 class="card-header">전자결재(상신한 결재)</h5>
				        </div>
				        <div class="col-md-6 text-end">
				            <h5 class="card-header plus">+더보기</h5>
				        </div>
				    </div>
                    <div class="table-responsive mb-3">
                      <table class="table datatable-project">
                        <thead class="table-light">
                          <tr>
                            <th>문서 제목</th>
                            <th>상신일</th>
                            <th class="text-nowrap">마지막 결재일</th>
                            <th>현 결재자</th>
                          </tr>
                        </thead>
                        <tbody>
                        	<tr>
                        		<td>카메라 대량 구입의 건</td>
                        		<td>2023.12.21</td>
                        		<td>2023.12.23</td>
                        		<td>이지훈</td>
                        	</tr>
                        </tbody>
                      </table>
                    </div>
                  </div>
                  <!--/ Projects table -->
                  <!-- Projects table -->
                  <div class="card mb-4">
                    <div class="row">
				        <div class="col-md-6">
				            <h5 class="card-header">프로젝트(마감임박)</h5>
				        </div>
				        <div class="col-md-6 text-end">
				            <h5 class="card-header plus">+더보기</h5>
				        </div>
				    </div>
                    <div class="table-responsive mb-3">
                      <table class="table datatable-project">
                        <thead class="table-light">
                          <tr>
                            <th>시작일</th>
                            <th>종료일</th>
                            <th>프로젝트명</th>                          
                          </tr>
                        </thead>
                        <tbody>
                        	<tr>
                        		<td>2023.12.21</td>
                        		<td>2023.12.23</td>
                        		<td>소속 유튜버 합방 스케줄</td>
                        	</tr>
                        </tbody>
                     
                      </table>
                    </div>
                  </div>
                  <!--/ Projects table -->
                </div>
              </div>
              <!--/ User Profile Content -->
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
    <script src="../../assets/vendor/libs/datatables-bs5/datatables-bootstrap5.js"></script>

    <!-- Main JS -->
    <script src="../../assets/js/main.js"></script>
    
    <!-- 시간 반영 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-oGNHuvKMC5LEHibI2NCAp8CKO98iz+cbJP5r9XtZADn1I2QFsgJj8peNrtQ8iS9Z" crossorigin="anonymous"></script>


	<!-- Page JS -->
    <script src="../../assets/js/extended-ui-sweetalert2.js"></script>
    <!-- Vendors JS -->
    <script src="../../assets/vendor/libs/sweetalert2/sweetalert2.js"></script>   

    <!-- Page JS -->
<!--      <script src="../../assets/js/app-user-view-account.js"></script> -->
<!-- 페이징 필요 없는 리스트 뿌리기라 js 빼버림  -->     
     

  </body>
<script>
     document.addEventListener("DOMContentLoaded", function () {
         // 초 단위로 실시간으로 업데이트
         setInterval(updateCurrentDateTime, 1000);

         // 초기 로딩 시 한번 업데이트
         updateCurrentDateTime();
     });

     function updateCurrentDateTime() {
         var currentDate = new Date();
         var options = {
             year: 'numeric',
             month: 'long',
             day: 'numeric',
             weekday: 'long',
             hour: 'numeric',
             minute: 'numeric',
             second: 'numeric',
             timeZone: 'Asia/Seoul'
         };
         var formattedDateTime = currentDate.toLocaleString('ko-KR', options);

         // 현재 날짜와 시간을 업데이트
         document.getElementById('currentDateTime').textContent = formattedDateTime;
     }
     
     </script>
</html>
