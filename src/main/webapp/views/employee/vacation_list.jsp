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
    <style>
    .col-md-4.offset-md-8{
    margin-right: 10px;
    margin-top: 10px;
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
          
          <!-- 여기까지 붙여넣기 -->

          <!-- Content wrapper -->
          <div class="content-wrapper">
          
           <!-- Content -->
	<div class="container-xxl flex-grow-1 container-p-y mt-2">
	    <h4 class="py-3 mb-4"><span class="text-muted fw-light">연차 관리 </span></h4>
		<span class="text-muted fw-light">연차는 시간 단위로 입력됩니다.</span>
	    <!-- DataTable with Buttons -->
	    <div class="card">
        <div class="card-datatable table-responsive" style="overflow-x: hidden">
            <div class="row mb-3">
				<div class="col-md-4 offset-md-8">
				    <!-- 검색박스 및 셀렉트 박스 -->
				    <div class="input-group">
				        <div class="input-group-prepend">
				            <select class="form-select">
				                <option value="name">이름</option>
				                <option value="id">아이디</option>
				                <option value="department">부서</option>
				            </select>
				        </div>
				        <input type="text" class="form-control" placeholder="검색어 입력">
				        <button class="btn btn-primary" type="button">검색</button>
				    </div>
				</div>
            </div>
            <table class="datatables-basic table border-top" style="margin-top: -10px;">
                <thead>
                    <tr>
                        <th colspan="3" style="width: 250px;">이름 / 아이디</th>
                        <th>부서</th>
                        <th>입사일</th>
                        <th>총 연차</th>
                        <th>사용 연차</th>
                        <th>잔여 연차</th>
                    </tr>
                </thead>
                <tbody>
                	<c:forEach items="${vacalist}" var="vacalist">
	                	<tr class="clickable-row" data-href="vacadetail?emp_id=${vacalist.emp_id}">
	                	<td style="width: 100px;">
		                	<c:choose>
							    <c:when test="${not empty vacalist.new_file_name and vacalist.new_file_name ne 'default'}">
							        <img src="/file/employee/${vacalist.new_file_name}" alt="${vacalist.ori_file_name}" 
							            class="d-block h-auto ms-0 rounded user-profile-img"
							            width="50px" height="50px" />
							    </c:when>
							    <c:otherwise>
							        <img src="../../assets/img/avatars/1.png" alt="user image" 
							            class="d-block h-auto ms-0 rounded user-profile-img"
							            width="50px" height="50px" />
							    </c:otherwise>
							</c:choose>
	                	</td>
	                        <td colspan="2">
	                        	<div class="d-flex flex-column">
	                        		<span class="emp_name text-truncate">${vacalist.emp_name}</span>
	                        		<small class="emp_post text-truncate text-muted">${vacalist.emp_id}</small>
	                        	</div>
	                        </td>
	                        <td>${vacalist.emp_dept_name}</td>
	                        <td>${vacalist.hiredate}</td>
	                        <td>${vacalist.totalhour}</td>
	                        <td>${vacalist.usehour}</td>
	                        <td>${vacalist.remainhour}</td>
	                    </tr>
                	</c:forEach>
                </tbody>
            </table>
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

    <!-- Main JS -->
    <script src="../../assets/js/main.js"></script>

    <!-- Page JS -->
<!--      <script src="../../assets/js/tables-datatables-basic.js"></script> -->
     <script>
	     document.addEventListener("DOMContentLoaded", function () {
	         var tableRows = document.querySelectorAll(".clickable-row");
	
	         tableRows.forEach(function (row) {
	             row.addEventListener("click", function () {
	                 var href = row.getAttribute("data-href");
	                 if (href) {
	                     window.location.href = href;
	                 }
	             });
	         });
	     });
     </script>
     
    <!-- Header -->
    <script src="../../assets/js/header.js"></script>
  </body>
</html>
