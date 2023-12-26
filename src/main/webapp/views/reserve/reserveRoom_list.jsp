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

    <title>Add - Invoice | Sneat - Bootstrap 5 HTML Admin Template - Pro</title>

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
    <link rel="stylesheet" href="../../assets/vendor/libs/flatpickr/flatpickr.css" />

    <!-- Page CSS -->

    <link rel="stylesheet" href="../../assets/vendor/css/pages/app-invoice.css" />

    <!-- Helpers -->
    <script src="../../assets/vendor/js/helpers.js"></script>
    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Template customizer: To hide customizer set displayCustomizer value false in config.js.  -->
    <script src="../../assets/vendor/js/template-customizer.js"></script>
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="../../assets/js/config.js"></script>
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
            
            <li class="menu-item active">
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
            
              <div class="row invoice-add" style="height : 100%;">
                <!-- Invoice Add-->
                <div class="col-lg-9 col-12 mb-lg-0 mb-4" style="width: 100%; height : 100%;">
                  <br><br><br>
                  <div style="width: 20%"> 																																																																																																																																																									
                  	<h5 class="card-header" style="font-size: 24px; font-weight: bold; color: #C20000;">회의실 예약</h5>
                  </div>
                  <br><br><br>
                  <div class="card invoice-preview-card" style="height: 80%; justify-content: center; display: flex; overflow: auto;">
                  <div class="card" style="box-shadow: none; background-color: none; max-height: 400px;" >
                   <div class="card-body">
						<!-- Date Picker-->
						<div style="align-items: center; justify-content: center; display: flex;">
							<div class="col-md-6 col-12 mb-4" style="width:200px;">
			                	<input type="text" class="form-control" value="YYYY-MM-DD" id="flatpickr-date" 
			                		style="text-align: center; border-color: transparent; width:200px; font-size:25px;"/>
			                </div>
						</div>
		                <!-- /Date Picker -->               
                    <div class="table-responsive text-nowrap">
                    	<table class="table table-bordered text-center text-nowrap" style="white-space: normal;">
	                      <thead>
	                        <tr>
	                          <th></th>
	                          <th colspan="2">7</th>
	                          <th colspan="2">8</th>
	                          <th colspan="2">9</th>
	                          <th colspan="2">10</th>
	                          <th colspan="2">11</th>
	                          <th colspan="2">12</th>
	                          <th colspan="2">13</th>
	                          <th colspan="2">14</th>
	                          <th colspan="2">15</th>
	                          <th colspan="2">16</th>
	                          <th colspan="2">17</th>
	                          <th colspan="2">18</th>
	                          <th colspan="2">19</th>
	                        </tr>
	                      </thead>
	                      <tbody>
	                        <tr>
	                        	<th class="text-start">회의실 1 (10명)</th>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>     	
	                        </tr>
	                        <tr>
	                        	<th class="text-start">회의실 2 (20명)</th>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                         	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>                         	
	                        </tr>
	                        <tr>
	                        	<th class="text-start">대   회의실 (30명)</th>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>           
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>
	                        	<td></td>        	
	                        </tr>
	                      </tbody>
                    	</table>
                    </div>
                    </div>
                    </div>
                  </div>
                </div>
                <!-- /Invoice Add-->
              </div>
              <!-- 모달창 정보 -->

              <div class="modal fade" id="editUser" tabindex="-1" aria-hidden="true" data-bs-backdrop="static">
                <div class="modal-dialog modal-lg modal-simple modal-edit-user"  style="display: flex; justify-content: center; align-items: center; height: 100%;" >
                  <div class="modal-content p-3 p-md-5">
                    <div class="modal-body" style="width: 100%">
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                      <h3 class="mb-5">회의실 예약</h3>
                      <div class="text-start" style="display: flex;">
                      	<div class="col-md-6 col-12" style="width: 100px; display:flex; align-items: center; justify-content: center;">
                      		<h5 style="margin-bottom: 0rem;">예약일</h5>
                      	</div>
                      	<div class="col-md-6 col-12" style="width: 150px; padding: 10 10">
                      		<label for="reservelabel" class="form-label">날짜 선택</label>
                        	<input type="text" class="form-control"/>
                        </div>
              			<div class="col-md-6 col-12" style="width: 150px; padding: 10 10">
				            <label for="flatpickr-time" class="form-label">시작 시간</label>
				            <input type="text" class="form-control" placeholder="HH:MM" id="flatpickr-time" data-bs-backdrop="static" />
			            </div>
			            <div class="col-md-6 col-12" style="width: 150px; padding: 10 10">
				            <label for="flatpickr-time" class="form-label">종료 시간</label>
				            <input type="text" class="form-control" placeholder="HH:MM" id="flatpickr-time" data-bs-backdrop="static" />
			            </div>
                      </div>
                      <div class="text-start mt-4" style="display: flex;">
                      	<div class="col-md-6 col-12" style="width: 100px; display:flex; align-items: center; justify-content: center;">
                      		<h5 style="margin-bottom: 0rem;">예약자</h5>
                      	</div>
                      	<div class="col-md-6 col-12" style="width: 100px; display:flex; align-items: center; justify-content: center;">
                      		<h5 style="margin-bottom: 0rem;">???</h5>
                      	</div>
                      </div>
                      <div class="text-start mt-4" style="display: flex;">
                      	<div class="col-md-6 col-12" style="width: 100px; display:flex; align-items: center; justify-content: center;">
                      		<h5 style="margin-bottom: 0rem;">사용 목적</h5>
                      	</div>
                      	<div class="col-md-6 col-12" style="padding: 10 10">
                      		<label for="reservelabel" class="form-label"></label>
                        	<input type="text" class="form-control"/>
                        </div>
                      </div>
                      <div class="text-end">
                      	<button type="button" class="btn rounded-pill btn-primary" data-bs-dismiss="modal">
                              <span class="tf-icons bx bx-pie-chart-alt me-1"></span>예약
                        </button>
                      </div>
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
    <script src="../../assets/vendor/libs/flatpickr/flatpickr.js"></script>
    <script src="../../assets/vendor/libs/cleavejs/cleave.js"></script>
    <script src="../../assets/vendor/libs/cleavejs/cleave-phone.js"></script>
    <script src="../../assets/vendor/libs/jquery-repeater/jquery-repeater.js"></script>
    <script>
    
    	// 날짜 선택
	    var flatpickrDate = document.querySelector("#flatpickr-date");
	
	    flatpickrDate.flatpickr({
	      monthSelectorType: "static"
	    });
	    
	    // 시간 선택
	    var flatpickrTime = document.querySelector("#flatpickr-time");
		
		flatpickrTime.flatpickr({
		  enableTime: true,
		  noCalendar: true
		});
	    
	    // 모달 실행 명령어
	    document.addEventListener('DOMContentLoaded', function () {
	        var allTds = document.querySelectorAll('td');

	        allTds.forEach(function (td) {
	            td.setAttribute('data-bs-toggle', 'modal');
	            td.setAttribute('data-bs-target', '#editUser');
	        });
	    });
    </script>

    <!-- Main JS -->
    <script src="../../assets/js/main.js"></script>

    <!-- Page JS -->
    <script src="../../assets/js/offcanvas-send-invoice.js"></script>
    <script src="../../assets/js/app-invoice-add.js"></script>
  </body>
</html>
