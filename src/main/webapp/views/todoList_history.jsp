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

    <title>eCommerce Category List - Apps | Sneat - Bootstrap 5 HTML Admin Template - Pro</title>

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
    <link rel="stylesheet" href="../../assets/vendor/libs/quill/typography.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/quill/katex.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/quill/editor.css" />

    <!-- Page CSS -->

    <link rel="stylesheet" href="../../assets/vendor/css/pages/app-ecommerce.css" />

    <!-- Helpers -->
    <script src="../../assets/vendor/js/helpers.js"></script>
    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Template customizer: To hide customizer set displayCustomizer value false in config.js.  -->
    <!-- <script src="../../assets/vendor/js/template-customizer.js"></script> -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="../../assets/js/config.js"></script>
    
        <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f2f2f2;
        }

        #taskList {
            max-width: 100%;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            border-radius: 8px;
        }

        .date-header {
            font-size: 18px;
            font-weight: bold;
            border-bottom: 1px solid #ccc;
            padding-bottom: 10px;
            padding-top: 10px;
            margin-bottom: 10px;
            margin-top: 10px;
            color: white;
            background-color: green;
            text-align: center; 
        }		
		.form-check-input:checked, .form-check-input[type=checkbox]:indeterminate {
		    background-color: #71dd37;
		    border-color: #71dd37;
		    box-shadow: 0 2px 4px 0 rgba(113, 221, 55, 0.4);
		}

        .delete-btn {
            background-color: white;
            color: black;
            border: none;
            padding: 5px 10px;
            cursor: pointer;
        }
        
        #todohistoryContainer{
        	overflow-y: auto;
        	height: 530px;
        }
        
        .tb-history{
			width: 100%;        
        }
        #modalContent {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            width: 100%;
            height: 628px; /* 최대 높이 설정 */
            overflow: hidden;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        #todoListContainer {
            max-height: 80%;
            overflow-y: auto;
            margin-bottom: 10px;
            height:80%;
        }
        #todoInput {
            width: calc(100% - 22px); /* 20px는 패딩, 2px는 테두리 고려 */
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
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
              <h4 class="py-3 mb-4">완료한 히스토리</h4>
              <div class="col-12">
              	<div class="row">
              	<div class="col-8">
                	<!-- Category List Table -->
					<div id="taskList">
						<div class="date-header" style="color:green; background-color:white; text-align:left; margin-top:0px;">
							완료한 개수<a id="todoYCount" style="color: green"></a>개
						</div>
						<div id="todohistoryContainer"><!-- 투두히스토리 -->
							<table class="tb-history">
							<thead>
							<tr>
								<th></th>
								<th></th>
								<th></th>
							</tr>
							</thead>
							<tbody id="todohistory"></tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="col-4">
					<div id="modalContent">
				    <div>
				        <span style="color: green">할 일 <a id="todoNCount" style="color: green"></a>개 남음</span>
				    </div>
				    <hr>
				    <div id="todoListContainer"><!-- 투두리스트 -->
				        <table style="width:100%">
				        	<thead>
					        <tr>
					        	<th></th>
					        	<th></th>
					        	<th></th>
					        </tr>
					        </thead>
				        	<tbody id="todolist"></tbody>
				        </table>
				    </div>
				    <div>
				        <input type="text" id="todoInput" placeholder="할 일을 입력하세요" onkeydown="handleKeyPress(event)">
				    </div>
				</div>
				</div>
				</div>
				</div>
				<div>${sessionScope.loginInfo.getEmp_id()}</div>
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
    <script src="../../assets/vendor/libs/select2/select2.js"></script>
    <!-- <script src="../../assets/vendor/libs/@form-validation/umd/bundle/popular.min.js"></script> -->
    <!-- <script src="../../assets/vendor/libs/@form-validation/umd/plugin-bootstrap5/index.min.js"></script> -->
    <!-- <script src="../../assets/vendor/libs/@form-validation/umd/plugin-auto-focus/index.min.js"></script> -->
    <script src="../../assets/vendor/libs/quill/katex.js"></script>
    <script src="../../assets/vendor/libs/quill/quill.js"></script>

    <!-- Main JS -->
    <!-- <script src="../../assets/js/main.js"></script> -->

    <!-- Page JS -->
    <!-- <script src="../../assets/js/app-ecommerce-category-list.js"></script> -->
    
    
    <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
    
  </body>
<script>
todohistory();
todoList();

////////////////// 히스토리 //////////////////
// 투두히스토리 가져오기
function todohistory(){
	$.ajax({
		type: 'get',
		url: 'todohistory.do',
		data: {},
		dataType: 'json',
		success: function (data) {
			console.log(data);
			todohistorydraw(data);
		},
		error: function (e) {
			console.log(e);
		}
	});
}

// 투두히스토리 그려주기
function todohistorydraw(obj){
    var content = '';
    var groupedByDate = {};

    obj.list.forEach(function (item) {
    if (!groupedByDate[item.todo_update]) {
            groupedByDate[item.todo_update] = [];
        }
        groupedByDate[item.todo_update].push(item);
    });

    for (var date in groupedByDate) {
        content += '<tr>';
        content += '<th colspan="3"><div class="date-header">' + date + '</div></th>';
        content += '</tr>';

        groupedByDate[date].forEach(function (item) {
            var isChecked = item.todo_state === 'Y' ? 'checked' : '';
            $("#todoYCount").text(item.todoY);

            content += '<tr>';
            content += '<th style="width: 40px"><input onclick="todocheck(this)" type="checkbox" class="form-check-input input-filter" value="'+item.todo_idx+'" ' + isChecked + '></th>';
            content += '<td>'+ item.todo_content +'</td>';
            content += '<th style="width: 50px"><button onclick="tododel(this)" class="delete-btn" value="'+item.todo_idx+'"><i class="bx bx-trash"></i></button>'+'</th>';
            content += '</tr>';
        });
    }

    if (content === '') {
        content = '<tr><th colspan="3">완료한 일이 없습니다.</th></tr>';
        $("#todoYCount").text(0);
    }

    $('#todohistory').empty();
    $('#todohistory').append(content);
}
////////////////// 투두리스트 //////////////////
// 투두리스트 데이터 가져오기
function todoList(){
	$.ajax({
		type: 'get',
		url: 'todoList.do',
		data: {},
		dataType: 'json',
		success: function (data) {
			console.log(data);
			todoListdraw(data);
		},
		error: function (e) {
			console.log(e);
		}
	});
}

// 투두리스트 그려주기
function todoListdraw(obj){
    var content = '';
    var totalItems = obj.list.length;
    console.log(totalItems);
    
    if (totalItems === 0){
    	content = '<tr><th colspan="3">할일이 없습니다.</th></tr>';
    	$("#todoNCount").text(0);
    }else{
    	obj.list.forEach(function (item){
    		var isChecked = item.todo_state === 'Y' ? 'checked' : '';
    		var textcolor = item.todo_state === 'Y' ? '' : 'black';
    		$("#todoNCount").text(item.todoN);
    		
    		content += '<tr>';
    		content += '<th style="width:30px"><input onclick="todocheck(this)" type="checkbox" class="form-check-input input-filter" value="'+item.todo_idx+'" ' + isChecked + '></th>';
    		content += '<td style="color: '+ textcolor+'">'+ item.todo_content +'</td>';
    		content += '<th style="width:40px"><button onclick="tododel(this)" class="delete-btn" value="'+item.todo_idx+'"><i class="bx bx-trash"></i></button>'+'</th>';
    		
    		content += '</tr>';
    	});
    }
    $('#todolist').empty();
    $('#todolist').append(content);
}

// 할일 입력하기
function handleKeyPress(event) {
    if (event.key === 'Enter') {
    	var todoText = $("#todoInput").val();
    	var trimtodoText = todoText.trim();
    	if(trimtodoText !== ''){
	    	console.log("입력한 내용: ", todoText);
	    	$.ajax({
	    		type: 'post',
	    		url: 'todoListwrite.do',
	    		data: {todoText: todoText},
	    		dataType: 'json',
	    		success: function (data) {
	    			console.log(data);
	    			$("#todoInput").val('');
	    			todoList();
	    		},
	    		error: function (e) {
	    			console.log(e);
	    		}
	    	});
    	}else{
    		$("#todoInput").val('');
    	}
    }
}

////////////////// 투두 공통 //////////////////
//할일 삭제하기
function tododel(del){
	var todoIdx = del.value;
	console.log("삭제할 투두idx: ", todoIdx);
	$.ajax({
		type: 'post',
		url: 'todoListdel.do',
		data: {todoIdx: todoIdx},
		dataType: 'json',
		success: function (data) {
			console.log(data);
			todohistory();
			todoList();
		},
		error: function (e) {
			console.log(e);
		}
	});
}

// 체크박스 클릭시 이벤트
function todocheck(check){
	var checked = check.checked;
	var todoIdx = check.value;
	
	if (checked){
		console.log("체크true idx값: ", todoIdx);
		$.ajax({
			type: 'post',
			url: 'todoListcheck.do',
			data: {todoIdx: todoIdx,checked: checked},
			datatype: 'json',
			success: function (data) {
				console.log(data);
				todohistory();
				todoList();
			},
			error: function (e) {
				console.log(e);
			}
		});
	}else{
		console.log("체크false idx값: ", todoIdx);
		$.ajax({
			type: 'post',
			url: 'todoListcheck.do',
			data: {todoIdx: todoIdx,checked: checked},
			datatype: 'json',
			success: function (data) {
				console.log(data);
				todohistory();
				todoList();
			},
			error: function (e) {
				console.log(e);
			}
		});
	}
}
</script>
</html>
