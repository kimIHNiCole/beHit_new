<%@page import="com.behit.employee.dto.EmployeeDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.behit.employee.dto.EmployeeDTO" %>
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
    
     .content-wrapper{
    	font-family:pretendard;
    	font-size:1.125rem;
    }
    
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
        <jsp:include page="/views/header_menu.jsp"/>
        <!-- / Menu -->

        <!-- Layout container -->
        <div class="layout-page">
          <!-- Navbar -->
		<jsp:include page="/views/header_navbar.jsp"/>
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
	                      			<c:choose>
	                      				<c:when test="${sessionScope.dept == 2}">
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
	                      				</c:when>
	                      				<c:otherwise>
	                      				
	                      				</c:otherwise>
	                      			</c:choose>
                    			</ul>
                			</div>
                			<div class="col-md-4">
                    			<!-- 검색박스 및 셀렉트 박스 -->
                    			<div class="input-group" style="visibility: hidden;">
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
                			<c:choose>
	                      		<c:when test="${sessionScope.dept == 2}">
				                	<div class="col-md-4 text-end">
				                    	<!-- 직원 등록 버튼 -->
				                    	<div>
						              	    <a href="/employee/employee_add.go" class="btn btn-primary">직원 등록</a>
				              		    </div>
				                	</div>   			
	                      		</c:when>
	                      		<c:otherwise>
	                      				
	                      		</c:otherwise>
	                       </c:choose>
            			</div>
            			<div class="tab-content">
            				<div class="tab-pane fade active show" id="form-tabs-first" role="tabpanel">
                				<div class="row g-3">
									<table class="datatables-basic table border-top" style="margin-top: -10px;">
                						<thead>
                    						<tr>
						                        <th colspan="2" style="width:350px;">이름 / 아이디</th>
						                        <th style="width: 225px;">부서</th>
						                        <th style="width: 225px;">직책</th>
						                        <th style="width: 225px;">직급</th>
						                        <th style="width: 225px;">직원상세</th>
			                    			</tr>
			                			</thead>
			                			<tbody id="eflist">
			                
			                			</tbody>
			            			</table>
                    			</div>
                    			<br/>
                    			<div class="container" style="display: flex; justify-content: flex-end;">									
									<nav aria-label="Page navigation" style="text-align:center">
										<ul class="pagination" id="fpagination"></ul>
									</nav>					
								</div>
                			</div>
           					<div class="tab-pane fade" id="form-tabs-secend" role="tabpanel">
                				<div class="row g-3">
									<table class="datatables-basic table border-top" style="margin-top: -10px;">
                						<thead>
                    						<tr>
			                        			<th colspan="2" style="width:350px;">이름 / 아이디</th>
			                        			<th style="width: 225px;">부서</th>
			                        			<th style="width: 225px;">직책</th>
			                        			<th style="width: 225px;">직급</th>
			                        			<th style="width: 225px;">직원상세</th>
			                    			</tr>
			                			</thead>
			                			<tbody id="eslist">
			                
			                			</tbody>
			            			</table>                            
                   				</div>
	              				<br/>
	              				<div class="container" style="display: flex; justify-content: flex-end;">									
									<nav aria-label="Page navigation" style="text-align:center">
										<ul class="pagination" id="spagination"></ul>
									</nav>					
								</div>
              				</div>
         				</div>
        			</div>

    			</div>
			</div>
			<!-- / Content -->
			<jsp:include page="/views/todo_include.jsp" />
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
	<script src="../../assets/js/app-ecommerce-settings.js"></script>
	
	<!-- Header JS -->
    <script src="../../assets/js/header.js"></script>
	
	<script>
    var msg = '${msg}';
    console.log(msg);
    if(msg != ""){
        Swal.fire({
             text: msg,
             icon: 'warning',
             customClass: {
               confirmButton: 'btn btn-primary'
             },
             buttonsStyling: false
           });
     }
    
    var dept = '${sessionScope.dept}';
    console.log(dept);
	
	
	// fshowPage = 첫번째 탭, sshowPage = 두번째 탭
    var fshowPage = 1;
    var sshowPage = 1;
	var defaultdate = '9999-10-10';
     
 	flistCall(fshowPage);
 	slistCall(sshowPage);
	
	function flistCall(page){
		$.ajax({
			type: 'get',
			url: 'empflist.do',
			data: {'page':page},
			dataType: 'json',
			success:function(data){
				console.log(data);
				drawfList(data);
			},
			error:function(e){
				console.log(e);
			}
		});
	}
	
	function slistCall(page){
		$.ajax({
			type: 'get',
			url: 'empslist.do',
			data: {'page':page},
			dataType: 'json',
			success:function(data){
				console.log(data);
				drawsList(data);
			},
			error:function(e){
				console.log(e);
			}
		});
	} 
	
	function drawfList(obj){
		
		var fcontent = '';
		
		obj.eflist.forEach(function(item, idx) {
			
			fcontent += '<tr>';
			fcontent +='<td style="width:100px;">';
			if (item.new_file_name != 'default'){
				fcontent += '<img src="/file/employee/'+item.new_file_name+'" alt="'+item.ori_file_name+'"class="d-block ms-0 rounded user-profile-img" width="50px" height="50px" />';
			} else {
				fcontent +=  '<img src="../../assets/img/avatars/1.png" alt="user image"class="d-block ms-0 rounded user-profile-img"width="50px" height="50px" />';
			}
			fcontent +='</td>';
			fcontent +='<td>'+'<div class="d-flex flex-column">'+
				'<span class="emp_name text-truncate">'+item.emp_name+'</span>'+
				'<small class="emp_post text-truncate text-muted" id="emp_id">'+item.emp_id+'</small>'+'</div>'+'</td>';	
			fcontent +='<td>'+item.dept_name+'</td>'
			fcontent +='<td>'+item.position_name+'</td>'
			fcontent +='<td>'+item.grade_name+'</td>'
			fcontent += '<td><button type="button" class="btn btn-primary btn-view-details" onclick="location.href=\'empdetail?emp_id=' + item.emp_id + '\'">직원 상세보기</button></td>';
			fcontent += '</tr>';		
		});
		$('#eflist').empty();
		$('#eflist').append(fcontent);
		
		// 페이징 처리 UI 그리기(플러그인 사용)		
		$('#fpagination').twbsPagination({
			startPage:obj.currPage, // 보여줄 페이지
			totalPages:obj.pages, // 총 페이지 수 (총 갯수 / 페이지당 보여줄 게시물 수) : 서버에서 계산해서 가져와야 함
			visiblePages:5, // [1],[2],[3],[4],[5]
			onPageClick:function(e, page){
				// console.log(e);
				if (fshowPage != page) {
					console.log(page);
					fshowPage = page;
					flistCall(page);
				}
			}
		});
	}
	
function drawsList(obj){
		
		var scontent = '';
		
		obj.eslist.forEach(function(item, idx) {
			scontent += '<tr>';
			scontent +='<td style="width:100px;">';
			if (item.new_file_name != 'default'){
				scontent += '<img src="/file/employee/'+item.new_file_name+'" alt="'+item.ori_file_name+'"class="d-block ms-0 rounded user-profile-img" width="50px" height="50px" />';
			} else {
				scontent +=  '<img src="../../assets/img/avatars/1.png" alt="user image"class="d-block ms-0 rounded user-profile-img"width="50px" height="50px" />';
			}
			scontent +='</td>';
			scontent +='<td>'+'<div class="d-flex flex-column">'+
				'<span class="emp_name text-truncate">'+item.emp_name+'</span>'+
				'<small class="emp_post text-truncate text-muted" id="emp_id">'+item.emp_id+'</small>'+'</div>'+'</td>';	
			scontent +='<td>'+item.dept_name+'</td>'
			scontent +='<td>'+item.position_name+'</td>'
			scontent +='<td>'+item.grade_name+'</td>'
			scontent += '<td><button type="button" class="btn btn-sm btn-primary btn-view-details" onclick="location.href=\'empdetail?emp_id=' + item.emp_id + '\'">직원 상세보기</button></td>';
			scontent += '</tr>';			
		});
		$('#eslist').empty();
		$('#eslist').append(scontent);		
		
		// 페이징 처리 UI 그리기(플러그인 사용)		
		$('#spagination').twbsPagination({
			startPage:obj.currPage, // 보여줄 페이지
			totalPages:obj.pages, // 총 페이지 수 (총 갯수 / 페이지당 보여줄 게시물 수) : 서버에서 계산해서 가져와야 함
			visiblePages:5, // [1],[2],[3],[4],[5]
			onPageClick:function(e, page){
				// console.log(e);
				if (sshowPage != page) {
					console.log(page);
					sshowPage = page;
					slistCall(page);
				}
			}
		});
	}

     </script>

       
  </body>
</html>
