<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html
  lang="ko"
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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-datepicker@1.9.0/dist/css/bootstrap-datepicker.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-datepicker@1.9.0/dist/locales/bootstrap-datepicker.ko.min.js" rel="stylesheet">

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
    .row.mb-3{
    margin-right: 10px;
    margin-top: 10px;
    }
    .btn.btn-outline-secondary{
    border: none;
    }
    .form-control.text-center{
    border: none;
    }
    
    </style>
  </head>

  <body>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
        

          <!-- Content wrapper -->
          <div class="content-wrapper">
          
           <!-- Content -->
			<div class="container-lg flex-grow-1 container-p-y mt-2" style="width: 1000px;">
  			  	<!-- DataTable with Buttons -->
			    	<div class="card" style="width: 20rem; height:30rem; display: flex; justify-content: center; align-items: center;">
					  <img
				          src="../../assets/img/avatars/1.png"
				          alt="user-avatar"
				          height="150"
				          width="150"
				          id="preview" style="margin-top: 40px; border-radius: 50%;"/>
					  <div class="card-body">
					    <h5 class="card-title" style="text-align: center; margin-top: 30px;">춘식이 사원</h5>
					    <h5 class="card-title" style="text-align: center; margin-top: 10px;">인사팀</h5>
					    <h6 class="card-title" style="text-align: center;">email@example.com</h6>
					    <h6 class="card-title" style="text-align: center;">휴대전화 : 010-0000-0000</h6>
					    <h6 class="card-title" style="text-align: center;">사내전화 : 02-000-0000</h6>
					    <a href="#" class="btn btn-primary"style="margin-left: 130px; margin-top: 10px;">메세지 보내기</a>
					  </div>
					</div> 
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


<!-- 달력 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-oGNHuvKMC5LEHibI2NCAp8CKO98iz+cbJP5r9XtZADn1I2QFsgJj8peNrtQ8iS9Z" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap-datepicker@1.9.0/dist/js/bootstrap-datepicker.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap-datepicker@1.9.0/dist/locales/bootstrap-datepicker.ko.min.js"></script>


     <script>
     
     document.addEventListener("DOMContentLoaded", function () {
 	    var datepicker = $('#sdatepicker').datepicker({
 	        format: 'yyyy-mm-dd',
 	        autoclose: true,
 	        todayHighlight: true // 오늘 날짜 강조
 	    });
/*
 	    // 한국 시간으로 초기화
 	    var currentDate = new Date();
 	    currentDate.setHours(currentDate.getHours() + 9); // UTC+9: 한국 시간으로 설정
 	    datepicker.datepicker('setDate', currentDate);
 	    updateInputValue(currentDate);
*/	    
 	    
 	    var currentDate = new Date();
 	    var options = { timeZone: 'Asia/Seoul' };
 	    var krTime = currentDate.toLocaleString('en-US', options);

 	    // 'Asia/Seoul' 타임존에 따라 현재 날짜와 시간을 가져옴
 	    var datepicker = $('#sdatepicker');
 	    datepicker.datepicker('setDate', new Date(krTime));
 	    updateInputValue(new Date(krTime));

 	    // < 버튼 클릭 시 이벤트
 	    $('#sprevBtn').on('click', function() {
 	        var selectedDate = datepicker.datepicker('getDate');
 	        selectedDate.setDate(selectedDate.getDate() - 1);
 	        datepicker.datepicker('update', selectedDate);
 	        updateInputValue(selectedDate);
 	        listCall(showPage);
 	    });

 	    // > 버튼 클릭 시 이벤트
 	    $('#snextBtn').on('click', function() {
 	        var selectedDate = datepicker.datepicker('getDate');
 	        selectedDate.setDate(selectedDate.getDate() + 1);
 	        datepicker.datepicker('update', selectedDate);
 	        updateInputValue(selectedDate);
 	        listCall(showPage);
 	    });

 	    function updateInputValue(date) {
 	        var formattedDate = date.getFullYear() + '-' + padZero(date.getMonth() + 1) + '-' + padZero(date.getDate());
 	        $('#sdatepicker').val(formattedDate);
 	    }

 	    function padZero(num) {
 	        return num < 10 ? '0' + num : num;
 	    }
     });

     </script>
  </body>
</html>
