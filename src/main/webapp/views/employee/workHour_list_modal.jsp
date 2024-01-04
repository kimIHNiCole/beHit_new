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
<div class="container-xxl flex-grow-1 container-p-y mt-2">
    <h4 class="py-3 mb-4"><span class="text-muted fw-light">이유빈 님의 근태현황 </span></h4>
    <!-- DataTable with Buttons -->
    <div class="card">
        <div class="card-datatable table-responsive">
			<div class="row mb-3">
				<div class="col-md-4">
                    <!-- 탭 추가 -->
                    <ul class="nav nav-pills">
                        <li class="nav-item">
                            <a class="nav-link active" id="tab-active" href="#">전체</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="tab-on-leave" href="#">정상근무</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="tab-resigned" href="#">미달</a>
                        </li>
                    </ul>
                </div>
			    <!-- Calendar -->
				<div class="col-md-4">
			        <div class="input-group">
			            <button class="btn btn-outline-secondary" id="prevBtn" type="button"><</button>
			            <input type="text" class="form-control text-center" id="datepicker" readonly>
			            <button class="btn btn-outline-secondary" id="nextBtn" type="button">></button>
			        </div>
			    </div>
			
			    
			</div>
            <table class="datatables-basic table border-top" style="margin-top: -10px;">
                <thead>
                    <tr>
                        <th></th>
                        <th>no.</th>
                        <th></th>
                        <th>날짜</th>
                        <th>근무시간</th>
                        <th>연차</th>
                        <th>출근 시간</th>
                        <th>퇴근 시간</th>
                        <th>상태</th>
                    </tr>
                </thead>
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


<!-- 달력 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-oGNHuvKMC5LEHibI2NCAp8CKO98iz+cbJP5r9XtZADn1I2QFsgJj8peNrtQ8iS9Z" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap-datepicker@1.9.0/dist/js/bootstrap-datepicker.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap-datepicker@1.9.0/dist/locales/bootstrap-datepicker.ko.min.js"></script>


     <script>
     
     document.addEventListener("DOMContentLoaded", function () {
         var datepicker = $('#datepicker').datepicker({
             format: 'yyyy-mm',
             autoclose: true,
             minViewMode: 'months', // 최소 뷰 모드를 월로 설정
             viewMode: 'months',    // 기본 뷰 모드를 월로 설정
             todayHighlight: true    // 오늘 날짜 강조
         });

         // 한국 시간으로 초기화
         var currentDate = new Date();
         currentDate.setHours(currentDate.getHours() + 9); // UTC+9: 한국 시간으로 설정
         datepicker.datepicker('setDate', currentDate);
         updateInputValue(currentDate);

         // < 버튼 클릭 시 이벤트
         $('#prevBtn').on('click', function() {
             var selectedDate = datepicker.datepicker('getDate');
             selectedDate.setMonth(selectedDate.getMonth() - 1);
             datepicker.datepicker('update', selectedDate);
             updateInputValue(selectedDate);
         });

         // > 버튼 클릭 시 이벤트
         $('#nextBtn').on('click', function() {
             var selectedDate = datepicker.datepicker('getDate');
             selectedDate.setMonth(selectedDate.getMonth() + 1);
             datepicker.datepicker('update', selectedDate);
             updateInputValue(selectedDate);
         });

         function updateInputValue(date) {
             var formattedDate = date.toLocaleDateString("ko-KR", { year: 'numeric', month: 'long' });
             $('#datepicker').val(formattedDate);
         }
     });
     
     
     
     /**
      * DataTables Basic
      */

     'use strict';

     let fv, offCanvasEl;
     
     // datatable (jquery)
     $(function () {
       var dt_basic_table = $('.datatables-basic'),
       dt_basic;

       
       // DataTable with buttons
       // --------------------------------------------------------------------

       if (dt_basic_table.length) {
         dt_basic = dt_basic_table.DataTable({
           ajax: assetsPath + 'json/table-datatable.json',
           columns: [
             { data: '' },
             { data: 'id' },
             { data: 'id' },
             { data: 'full_name' },
             { data: 'email' },
             { data: 'start_date' },
             { data: 'salary' },
             { data: 'status' },
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
               targets: 2,
               searchable: false,
               visible: false
             },
             
            /* {
               // Avatar image/badge, Name and post
               targets: 3,
               responsivePriority: 4,
               render: function (data, type, full, meta) {
                 var $user_img = full['avatar'],
                   $name = full['full_name'],
                   $post = full['post'];
                 if ($user_img) {
                   // For Avatar image
                   var $output =
                     '<img src="' + assetsPath + 'img/avatars/' + $user_img + '" alt="Avatar" class="rounded-circle">';
                 } else {
                   // For Avatar badge
                   var stateNum = Math.floor(Math.random() * 6);
                   var states = ['success', 'danger', 'warning', 'info', 'dark', 'primary', 'secondary'];
                   var $state = states[stateNum],
                     $name = full['full_name'],
                     $initials = $name.match(/\b\w/g) || [];
                   $initials = (($initials.shift() || '') + ($initials.pop() || '')).toUpperCase();
                   $output = '<span class="avatar-initial rounded-circle bg-label-' + $state + '">' + $initials + '</span>';
                 }
                 // Creates full output for row
                 var $row_output =
                   '<div class="d-flex justify-content-start align-items-center user-name">' +
                   '<div class="avatar-wrapper">' +
                   '<div class="avatar me-2">' +
                   $output +
                   '</div>' +
                   '</div>' +
                   '<div class="d-flex flex-column">' +
                   '<span class="emp_name text-truncate">' +
                   $name +
                   '</span>' +
                   '<small class="emp_post text-truncate text-muted">' +
                   $post +
                   '</small>' +
                   '</div>' +
                   '</div>';
                 return $row_output;
               }
             },
             */
             {
               responsivePriority: 1,
               targets: 4
             },
             {
               // Label
               targets: -2,
               render: function (data, type, full, meta) {
                 var $status_number = full['status'];
                 var $status = {
                   1: { title: 'Current', class: 'bg-label-primary' },
                   2: { title: 'Professional', class: ' bg-label-success' },
                   3: { title: 'Rejected', class: ' bg-label-danger' },
                   4: { title: 'Resigned', class: ' bg-label-warning' },
                   5: { title: 'Applied', class: ' bg-label-info' }
                 };
                 if (typeof $status[$status_number] === 'undefined') {
                   return data;
                 }
                 return (
                		 '<span>퇴근버튼 클릭 시간</span>'
                 );
               }
             },
             {
               // Actions
               targets: -1,
               title: '상태',
               orderable: false,
               searchable: false,
               render: function (data, type, full, meta) {
                 return (
                		 '<span>정상/미달 여부</span>'
                 );
               }
             }
           ],
           paging: false,
           order: [[2, 'desc']],
           dom: '<<"head-label text-center">><"row">t<"row"<"col-sm-12 col-md-6"i><"col-sm-12 col-md-6"p>>',
           
           displayLength: 10,
           lengthMenu: [10],
           
           
           responsive: {
             details: {
               display: $.fn.dataTable.Responsive.display.modal({
                 header: function (row) {
                   var data = row.data();
                   return 'Details of ' + data['full_name'];
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
           }
         });
         
         
         
       }


      

       

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
