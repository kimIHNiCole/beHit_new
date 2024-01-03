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
    
    <!-- pretendard 폰트 -->
	<link rel="stylesheet" type="text/css" href='https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css'>

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
    <link rel="stylesheet" href="../../assets/vendor/libs/datatables-buttons-bs5/buttons.bootstrap5.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/flatpickr/flatpickr.css" />
    <!-- Row Group CSS -->
    <link rel="stylesheet" href="../../assets/vendor/libs/datatables-rowgroup-bs5/rowgroup.bootstrap5.css" />
    <!-- Form Validation -->
    <link rel="stylesheet" href="../../assets/vendor/libs/@form-validation/umd/styles/index.min.css" />

    <!-- Page CSS -->

    <!-- Helpers -->
    <script src="../../assets/vendor/js/helpers.js"></script>
    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Template customizer: To hide customizer set displayCustomizer value false in config.js.  -->
    <script src="../../assets/vendor/js/template-customizer.js"></script>
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="../../assets/js/config.js"></script>
    
    
    <!-- custom CSS -->
    <style>
    	.col-md-4{
    		margin-top:3.625rem;
    	}
    	.row {
    		--bs-gutter-x: -0.175rem;
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
            
            <li class="menu-item">
              <a href="../chat/messenger.go" class="menu-link">
                 <i class="menu-icon tf-icons bx bx-chat"></i>
                <div class="text-truncate" data-i18n="메신저">메신저</div>
              </a>
            </li>
            
            <li class="menu-item active open">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-user"></i>
                <div class="text-truncate" data-i18n="인사 관리">인사 관리</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item active">
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
                            <div class="flex-shrink-0 dr	opdown-notifications-actions">
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
          <!-- Content wrapper -->
          <div class="content-wrapper">
          	<!-- Content -->
				<div class="container-xxl flex-grow-1 container-p-y mt-2">
   				<h4 class="py-3 mb-4"><span class="text-muted fw-light">직원 관리 </span></h4>
    			<!-- DataTable with Buttons -->
    			<div class="card">
       				<div class="card-datatable table-responsive" style="overflow-x: hidden; align-items: center;">
            			<div class="row mb-3" style="width: 100%;">
                			<div class="col-md-4">
                    			<!-- 탭 추가 -->                    
                    			<ul class="nav nav-pills" role="tablist">
	                      			<li class="nav-item">
		                        		<button
		                          			class="nav-link active"
		                          			data-bs-toggle="tab"
		                          			data-bs-target="#form-tabs-first"
		                          			role="tab"
		                          			aria-selected="true">
		                          			재직자
		                        		</button>
	                      			</li>
	                      			<li class="nav-item">
	                        			<button
	                          				class="nav-link"
	                          				data-bs-toggle="tab"
	                          				data-bs-target="#form-tabs-secend"
	                          				role="tab"
	                          				aria-selected="false"
	                          				onclick="tabsecend()">
	                          				퇴사자
	                       			 	</button>
	                      			</li>
                    			</ul>
                			</div>
                			<div class="col-md-4">
                    			<!-- 검색박스 및 셀렉트 박스 -->
                    			<div class="input-group">
                        			<div class="input-group-prepend">
                            			<select class="form-select">
                                			<option value="name">이름</option>
                                			<option value="id">아이디</option>
                                			<option value="department">부서</option>
                                			<option value="position">직급</option>
                                			<option value="title">직책</option>
                            			</select>
                       	 			</div>
                        			<input type="text" class="form-control" placeholder="검색어 입력">
                        			<button class="btn btn-primary" type="button">검색</button>
                    			</div>
                			</div>
                			<div class="col-md-4 text-end">
                    			<!-- 직원 등록 버튼 -->
                    			<button class="btn btn-primary" onclick="location.href='/empadd.go'">직원 등록</button>
                			</div>
            			</div>
            			<div class="tab-content">
            				<div class="tab-pane fade active show" id="form-tabs-first" role="tabpanel">
                				<div class="row g-3">
									<table class="datatables-basic table border-top" style="margin-top: -10px;">
                						<thead>
                    						<tr>
						                        <th colspan="2" style="width:350px;">이름 / 아이디</th>
						                        <th style="width: 200px;">부서</th>
						                        <th style="width: 200px;">직책</th>
						                        <th style="width: 200px;">직급</th>
						                        <th style="width: 100px;">채팅</th>
						                        <th style="width: 200px;">직원상세</th>
			                    			</tr>
			                			</thead>
			                			<tbody id="eflist">
			                
			                			</tbody>
			            			</table>
                    			</div>
                			</div>
           					<div class="tab-pane fade" id="form-tabs-secend" role="tabpanel">
                				<div class="row g-3">
									<table class="datatables-basic table border-top" style="margin-top: -10px;">
                						<thead>
                    						<tr>
			                        			<th colspan="2" style="width:350px;">이름 / 아이디</th>
			                        			<th style="width: 200px;">부서</th>
			                        			<th style="width: 200px;">직책</th>
			                        			<th style="width: 200px;">직급</th>
			                        			<th style="width: 100px;">채팅</th>
			                        			<th style="width: 200px;">직원상세</th>
			                    			</tr>
			                			</thead>
			                			<tbody id="eslist">
			                
			                			</tbody>
			            			</table>                            
                   				</div>
              				</div>
         				</div>
        			</div>
	    			<div class="container" style="display: flex; justify-content: flex-end;">									
						<nav aria-label="Page navigation" style="text-align:center">
							<ul class="pagination" id="pagination"></ul>
						</nav>					
					</div>
    			</div>
    			<hr class="my-5" />
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
    <script src="../../assets/vendor/libs/datatables-bs5/datatables-bootstrap5.js"></script>
    <!-- Flat Picker -->
    <script src="../../assets/vendor/libs/moment/moment.js"></script>
    <script src="../../assets/vendor/libs/flatpickr/flatpickr.js"></script>
    <!-- Form Validation -->
    <script src="../../assets/vendor/libs/@form-validation/umd/bundle/popular.min.js"></script>
    <script src="../../assets/vendor/libs/@form-validation/umd/plugin-bootstrap5/index.min.js"></script>
    <script src="../../assets/vendor/libs/@form-validation/umd/plugin-auto-focus/index.min.js"></script>
    <!-- pagenation -->
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"></script>
    <script src="../../assets/js/jquery.twbsPagination.js" type="text/javascript"></script>

    <!-- Main JS -->
    <script src="../../assets/js/main.js"></script>

    <!-- Page JS -->
<!--      <script src="../../assets/js/tables-datatables-basic.js"></script> -->
	<script>
    var showPage = 1;
	var defaultdate = '9999-10-10';
     
 	flistCall(showPage);
	
	function flistCall(page){
		$.ajax({
			type: 'get',
			url: 'emplist.do',
			data: {'page':page},
			dataType: 'json',
			success:function(data){
				console.log(data);
				drawList(data);		
			},
			error:function(e){
				console.log(e);
			}
		});
	} 
	
	function drawList(obj){
		
		var fcontent = '';
		var scontent = '';
		
		obj.elist.forEach(function(item, idx) {
			console.log(defaultdate);
			console.log(item.leavedate);
			
			if(item.leavedate == defaultdate) {
				fcontent += '<tr>';
				fcontent +='<td style="width:100px;">';
				if (item.new_file_name != 'default'){
					fcontent += '<img src="/photo/employee/'+item.new_file_name+'" alt="'+item.ori_file_name+'"class="d-block h-auto ms-0 rounded user-profile-img" width="50px" height="50px" />';
				} else {
					fcontent +=  '<img src="../../assets/img/avatars/1.png" alt="user image"class="d-block h-auto ms-0 rounded user-profile-img"width="50px" height="50px" />';
				}
				fcontent +='</td>';
				fcontent +='<td>'+'<div class="d-flex flex-column">'+
					'<span class="emp_name text-truncate">'+item.emp_name+'</span>'+
					'<small class="emp_post text-truncate text-muted" id="emp_id">'+item.emp_id+'</small>'+'</div>'+'</td>';	
				fcontent +='<td>'+item.dept_name+'</td>'
				fcontent +='<td>'+item.position_name+'</td>'
				fcontent +='<td>'+item.grade_name+'</td>'
				fcontent +='<td>'+'<span>'+'&#x1F4AC;'+'</span>'+'</td>';
				fcontent += '<td><button type="button" class="btn btn-sm btn-primary btn-view-details" onclick="location.href=\'empdetail?emp_id=' + item.emp_id + '\'">직원 상세보기</button></td>';
				fcontent += '</tr>';
			} else {
				scontent += '<tr>';
				scontent +='<td style="width:100px;">';
				if (item.new_file_name != 'default'){
					scontent += '<img src="/photo/employee/'+item.new_file_name+'" alt="'+item.ori_file_name+'"class="d-block h-auto ms-0 rounded user-profile-img" width="50px" height="50px" />';
				} else {
					scontent +=  '<img src="../../assets/img/avatars/1.png" alt="user image"class="d-block h-auto ms-0 rounded user-profile-img"width="50px" height="50px" />';
				}
				scontent +='</td>';
				scontent +='<td>'+'<div class="d-flex flex-column">'+
					'<span class="emp_name text-truncate">'+item.emp_name+'</span>'+
					'<small class="emp_post text-truncate text-muted" id="emp_id">'+item.emp_id+'</small>'+'</div>'+'</td>';	
				scontent +='<td>'+item.dept_name+'</td>'
				scontent +='<td>'+item.position_name+'</td>'
				scontent +='<td>'+item.grade_name+'</td>'
				scontent +='<td>'+'<span>'+'&#x1F4AC;'+'</span>'+'</td>';
				scontent += '<td><button type="button" class="btn btn-sm btn-primary btn-view-details" onclick="location.href=\'empdetail?emp_id=' + item.emp_id + '\'">직원 상세보기</button></td>';
				scontent += '</tr>';
			}
		});
		$('#eflist').empty();
		$('#eflist').append(fcontent);
		$('#eslist').empty();
		$('#eslist').append(scontent);
		
		// 페이징 처리 UI 그리기(플러그인 사용)		
		$('#pagination').twbsPagination({
			startPage:obj.currPage, // 보여줄 페이지
			totalPages:obj.pages, // 총 페이지 수 (총 갯수 / 페이지당 보여줄 게시물 수) : 서버에서 계산해서 가져와야 함
			visiblePages:5, // [1],[2],[3],[4],[5]
			onPageClick:function(e, page){
				// console.log(e);
				if (showPage != page) {
					console.log(page);
					showPage = page;
					flistCall(page);
				}
			}
		});
	}

     </script>
  </body>
</html>