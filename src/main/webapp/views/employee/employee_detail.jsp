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
    <link rel="stylesheet" href="../../assets/vendor/libs/datatables-checkboxes-jquery/datatables.checkboxes.css" />

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
img.rounded-top{
	height: 95px;
    }

</style>

  </head>

  <body>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
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
                      <a class="dropdown-item" href="#">
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
          </nav>

          <!-- / Navbar -->

          <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
              <h4 class="py-3 mb-4"><span class="text-muted fw-light">User Profile /</span> Profile</h4>

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
                            <h4>${empdetail.emp_name}</h4>
                            <ul
                              class="list-inline mb-0 d-flex align-items-center flex-wrap justify-content-sm-start justify-content-center gap-2">
                              <li class="list-inline-item fw-medium"><i class="bx bx-pen"></i> 아이디 : ${empdetail.emp_id}</li>
                            </ul>
                          </div>
                          <a href="javascript:void(0)" class="btn btn-primary text-nowrap">
                            <i class="bx bx-user-check me-1"></i>로그인 제한 해제
                          </a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!--/ Header -->
              <!-- User Profile Content -->
               <!-- Form with Tabs -->
              <div class="row">
                <div class="col">
                  <div class="nav-align-top mb-3">
                    <ul class="nav nav-tabs" role="tablist">
                      <li class="nav-item">
                        <button
                          class="nav-link active"
                          data-bs-toggle="tab"
                          data-bs-target="#form-tabs-personal"
                          role="tab"
                          aria-selected="true">
                          기본 정보
                        </button>
                      </li>
                      <li class="nav-item">
                        <button
                          class="nav-link"
                          data-bs-toggle="tab"
                          data-bs-target="#form-tabs-account"
                          role="tab"
                          aria-selected="false">
                          상세 정보
                        </button>
                      </li>
                      <li class="nav-item">
                        <button
                          class="nav-link"
                          data-bs-toggle="tab"
                          data-bs-target="#form-tabs-social"
                          role="tab"
                          aria-selected="false">
                          부서 직급
                        </button>
                      </li>
                    </ul>
                    <div class="tab-content">
                      <div class="tab-pane fade active show" id="form-tabs-personal" role="tabpanel">
                      <form>                 
                          <div class="row g-3">
                            <div class="col-md-6">
                              <label class="form-label" for="formtabs-first-name">이름</label>
                              <input type="text" id="emp_name" name="emp_name" class="form-control" value="${empdetail.emp_name}" />
                            </div>
                            <div class="col-md-6">
                              <label class="form-label" for="password">임시 비밀번호</label>
                              <input type="text" id="password" name="password" class="form-control" value=""/>
                            </div>
                           <div class="col-md-6">
                              <label class="form-label" for="cp_phone">사내 전화번호</label>
                              <input type="text" id="cp_phone" name="cp_phone" class="form-control" value="${empdetail.cp_phone}" />
                            </div>
                           <div class="col-md-6">
                              <label class="form-label" for="mobile_phone">휴대폰 번호</label>
                              <input type="text" id="mobile_phone" name="mobile_phone" class="form-control" value="${empdetail.mobile_phone}" />
                            </div>
                            <div class="col-md-6">
                              <label class="form-label" for="formtabs-birthdate">생년 월일</label>
                              <input
                                type="text"
                                id="emp_birth"
                                name="emp_birth"
                                class="form-control dob-picker"
                                value="${empdetail.emp_birth}"/>
                            </div>
                            <div class="col-md-6">
                              <label class="form-label" for="email">이메일</label>
                              <input type="text" id="email" name="email" class="form-control" value="${empdetail.email}"/>
                            </div>
                          <div class="pt-4">
                            <button type="submit" class="btn btn-primary me-sm-3 me-1">Submit</button>
                            <button type="reset" class="btn btn-label-secondary">Cancel</button>
                          </div>
                         </div>
						<!-- Activity Timeline -->
						<br>
		                <div class="row.g-3">
		                  <div class="card" style="width: 100%;">
		                    <div class="card-header d-flex align-items-center justify-content-between">
		                      <h5 class="card-title m-0 me-2">기본정보 변경 이력</h5>
		                    </div>
		                    <div class="card-body">
		                      <!-- Activity Timeline -->
		                      <ul class="timeline">
		                        <li class="timeline-item timeline-item-transparent">
		                          <span class="timeline-point-wrapper"
		                            ><span class="timeline-point timeline-point-primary"></span
		                          ></span>
		                          <div class="timeline-event">
		                            <div class="timeline-header mb-1">
		                              <h6 class="mb-0">이메일 수정</h6>
		                              <small class="text-muted">2010-01-01 12:30</small>
		                            </div>
		                            <p class="mb-2">solluna9@example.com -> admin@example.com</p>
		                          </div>
		                        </li>
		                        <li class="timeline-item timeline-item-transparent">
		                          <span class="timeline-point-wrapper"
		                            ><span class="timeline-point timeline-point-warning"></span
		                          ></span>
		                          <div class="timeline-event">
		                            <div class="timeline-header mb-1">
		                              <h6 class="mb-0">이름 수정</h6>
		                              <small class="text-muted">2010-01-01 12:30</small>
		                            </div>
		                            <p class="mb-2">아무개 -> 홍길동</p>
		                          </div>
		                        </li>
		                        <li class="timeline-end-indicator">
		                          <i class="bx bx-check-circle"></i>
		                        </li>
		                      </ul>
		                      <!-- /Activity Timeline -->
		                    </div>
		                  </div>
		                </div>
		                </form>
	                <!--/ Activity Timeline -->
                      </div>
                      <div class="tab-pane fade" id="form-tabs-account" role="tabpanel">
                        <form>
                          <div class="row g-3">
                            <div class="col-md-6">
                              <label class="form-label" for="address">주소</label>
                              <input type="text" id="address" name="address" class="form-control" value="${empdetail.address}" />
                            </div>
                            <div class="col-md-6">
                              <label class="form-label" for="detail-addr">상세 주소</label>
                              <input type="text" id="detail-addr" name="detail-addr" class="form-control" value="${empdetail.detail-addr}" />
                            </div>
                            <div class="mb-3 col-md-6">
	                            <label for="hiredate" class="form-label">입사일</label>
	 							<input type="date" class="form-control" id="hiredate" name="hiredate" value="${empdetail.hiredate}">
	                        </div>
	                        <div class="mb-3 col-md-6">
	                            <label for="leavedate" class="form-label">퇴사일</label>
	 							<input type="date" class="form-control" id="leavedate" name="leavedate" value="${empdetail.leavedate}">
	                         </div>
                          </div>
                          <div class="pt-4">
                            <button type="submit" class="btn btn-primary me-sm-3 me-1">수정 등록</button>
                            <button type="reset" class="btn btn-label-secondary">취소</button>
                          </div>
                          <!-- Activity Timeline -->
						<br>
		                <div class="row.g-3">
		                  <div class="card" style="width: 100%;">
		                    <div class="card-header d-flex align-items-center justify-content-between">
		                      <h5 class="card-title m-0 me-2">상세정보 변경 이력</h5>
		                    </div>
		                    <div class="card-body">
		                      <!-- Activity Timeline -->
		                      <ul class="timeline">
		                        <li class="timeline-item timeline-item-transparent">
		                          <span class="timeline-point-wrapper"
		                            ><span class="timeline-point timeline-point-primary"></span
		                          ></span>
		                          <div class="timeline-event">
		                            <div class="timeline-header mb-1">
		                              <h6 class="mb-0">상세주소 수정</h6>
		                              <small class="text-muted">2010-01-01 12:30</small>
		                            </div>
		                            <p class="mb-2">OO아파트 1111동 001호 -> OO아파트 1111동 111호</p>
		                          </div>
		                        </li>
		                        <li class="timeline-item timeline-item-transparent">
		                          <span class="timeline-point-wrapper"
		                            ><span class="timeline-point timeline-point-warning"></span
		                          ></span>
		                          <div class="timeline-event">
		                            <div class="timeline-header mb-1">
		                              <h6 class="mb-0">입사일 수정</h6>
		                              <small class="text-muted">2010-01-01 12:30</small>
		                            </div>
		                            <p class="mb-2">2001-01-01 -> 2000-01-01</p>
		                          </div>
		                        </li>
		                        <li class="timeline-end-indicator">
		                          <i class="bx bx-check-circle"></i>
		                        </li>
		                      </ul>
		                      <!-- /Activity Timeline -->
		                    </div>
		                  </div>
		                </div>
	                <!--/ Activity Timeline -->
                        </form>
                      </div>
                      <div class="tab-pane fade" id="form-tabs-social" role="tabpanel">
                        <form>
                          <div class="row g-3">
                          <div class="mb-3 col-md-6">
                            <label for="department" class="form-label">부서</label>
                            <select id="department" class="select2 form-select">
                              <option value="">${empdetail.department}</option>
                              <option value="finance">재무</option>
                              <option value="personnel">인사</option>
                              <option value="management">매니지먼트 / 기획</option>
                              <option value="business">사업 기획</option>
                              <option value="marketing">마케팅</option>
                            </select>
                          </div> 
                          <div class="mb-3 col-md-6">
                            <label class="form-label" for="position">직급</label>
                            <select id="position" class="position">
                              <option value="">${empdetail.position}</option>
                              <option value="staff">사원</option>
                              <option value="associate">주임</option>
                              <option value="As_manager">대리</option>
                              <option value="manager">과장</option>
                              <option value="sn_manager">차장</option>
                              <option value="gn_manager">부장</option>
                              <option value="director">이사</option>
                            </select>
                          </div>
                           <div class="mb-3 col-md-6">
                            <label for="job" class="form-label">직책</label>
                            <select id="job" class="job">
                              <option value="">${empdetail.job}</option>
                              <option value="member">팀원</option>
                              <option value="leader">팀장</option>
                              <option value="dm_manager">실장</option>
                              <option value="hq_manager">본부장</option>
                            </select>
                          </div>
                          </div>
                          <div class="pt-4">
                            <button type="submit" class="btn btn-primary me-sm-3 me-1">수정 등록</button>
                            <button type="reset" class="btn btn-label-secondary">취소</button>
                          </div>
                          <!-- Activity Timeline -->
						<br>
		                <div class="row.g-3">
		                  <div class="card" style="width: 100%;">
		                    <div class="card-header d-flex align-items-center justify-content-between">
		                      <h5 class="card-title m-0 me-2">부서 / 직급 변경 이력</h5>
		                    </div>
		                    <div class="card-body">
		                      <!-- Activity Timeline -->
		                      <ul class="timeline">
		                        <li class="timeline-item timeline-item-transparent">
		                          <span class="timeline-point-wrapper"
		                            ><span class="timeline-point timeline-point-primary"></span
		                          ></span>
		                          <div class="timeline-event">
		                            <div class="timeline-header mb-1">
		                              <h6 class="mb-0">직책 정보 수정</h6>
		                              <small class="text-muted">2010-01-01 12:30</small>
		                            </div>
		                            <p class="mb-2">실장 -> 본부장</p>
		                          </div>
		                        </li>
		                        <li class="timeline-item timeline-item-transparent">
		                          <span class="timeline-point-wrapper"
		                            ><span class="timeline-point timeline-point-warning"></span
		                          ></span>
		                          <div class="timeline-event">
		                            <div class="timeline-header mb-1">
		                              <h6 class="mb-0">직급 수정</h6>
		                              <small class="text-muted">2010-01-01 12:30</small>
		                            </div>
		                            <p class="mb-2">부장 -> 이사</p>
		                          </div>
		                        </li>
		                        <li class="timeline-end-indicator">
		                          <i class="bx bx-check-circle"></i>
		                        </li>
		                      </ul>
		                      <!-- /Activity Timeline -->
		                    </div>
		                  </div>
		                </div>
	                <!--/ Activity Timeline -->
                        </form>
                      </div>
                    </div>
                  </div>
                </div>      
              </div>
              <!-- --------------------------------------------------------------------------------------------------------------------------------------- -->
              <div class="tab-content">
              	<div class="tab-pane fade active show" id="form-tabs-personal" role="tabpanel">
              		
	              	</div> 	
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
    <script src="../../assets/vendor/libs/datatables-bs5/datatables-bootstrap5.js"></script>
    <script>
    	var emp_id = ${detail.emp_id};
    	console.log(emp_id);
    
    </script>

    <!-- Main JS -->
    <script src="../../assets/js/main.js"></script>

    <!-- Page JS -->
    <script src="../../assets/js/app-user-view-account.js"></script>
  </body>
</html>
