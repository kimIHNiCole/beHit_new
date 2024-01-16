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
            <div class="row mb-3" style="visibility: hidden;">
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
                        <th colspan="2" style="width: 250px;">이름 / 아이디</th>
                        <th>부서</th>
                        <th>입사일</th>
                        <th>총 연차</th>
                        <th>사용 연차</th>
                        <th>잔여 연차</th>
                    </tr>
                </thead>
                <tbody id="vacalist">
                
                </tbody>
            </table>
            <br/>
            <div class="container" style="display: flex; justify-content: flex-end;">									
				<nav aria-label="Page navigation" style="text-align:center">
					<ul class="pagination" id="pagination"></ul>
				</nav>					
			</div>
        </div>
    </div>

    <hr class="my-5" />
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
	     
	     var showPage = 1;
	     listCall(showPage);
	     
	     function listCall(page){
	 		$.ajax({
	 			type: 'post',
	 			url: '/employee/vacalist.do',
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
	    	 var content = '';
	    	 
	    	 obj.vacalist.forEach(function(item, idx) {
	    		 content += '<tr onclick="location.href=\'/employee/vacadetail?emp_id=' + item.emp_id + '\'">';
	    		 content +='<td style="width:100px;">';
	    		 content += '<img src="/file/employee/'+item.new_file_name+'" alt="'+item.ori_file_name+'"class="d-block h-auto ms-0 rounded user-profile-img" width="50px" height="50px" />';
	    		 content +='</td>';
	    		 content +='<td>'+'<div class="d-flex flex-column">'+
					'<span class="emp_name text-truncate">'+item.emp_name+'</span>'+
					'<small class="emp_post text-truncate text-muted" id="emp_id">'+item.emp_id+'</small>'+'</div>'+'</td>';	
				content +='<td>'+item.emp_dept_name+'</td>';
				content +='<td>'+item.hiredate+'</td>';
				content +='<td>'+item.totalhour+'</td>';
				content +='<td>'+item.usehour+'</td>';
				content +='<td>'+item.remainhour+'</td>';
				content += '</tr>';
	    	 });
	    	 $('#vacalist').empty();
	    	 $('#vacalist').append(content);
	    	 
	    	 $('#pagination').twbsPagination({
	 			startPage:obj.currPage, // 보여줄 페이지
	 			totalPages:obj.pages, // 총 페이지 수 (총 갯수 / 페이지당 보여줄 게시물 수) : 서버에서 계산해서 가져와야 함
	 			visiblePages:5, // [1],[2],[3],[4],[5]
	 			onPageClick:function(e, page){
	 				// console.log(e);
	 				if (showPage != page) {
	 					console.log(page);
	 					showPage = page;
	 					listCall(page);
	 				}
	 			}
	 		});
	     }
     </script>
     
    <!-- Header -->
    <script src="../../assets/js/header.js"></script>
  </body>
</html>
