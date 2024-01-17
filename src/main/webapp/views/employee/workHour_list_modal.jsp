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
    
    .content-wrapper{
    	font-family:pretendard;
    	font-size:1.125rem;
    }
    
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
			    <div class="card">
			        <div class="card-datatable table-responsive">
						<div class="row mb-3">
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
		                          			전체
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
	                          				정상 근무
	                       			 	</button>
	                      			</li>
	                      			<li class="nav-item">
	                        			<button
	                          				class="nav-link"
	                          				data-bs-toggle="tab"
	                          				data-bs-target="#form-tabs-third"
	                          				role="tab"
	                          				aria-selected="false"
	                          				onclick="tabthird()">
	                          				미달
	                       			 	</button>
	                      			</li>
                    			</ul>
			                </div>
							<div class="col-md-4">
						        <div class="input-group">
						            <button class="btn btn-outline-secondary" id="sprevBtn" type="button"><</button>
						            <input type="text" class="form-control text-center" id="sdatepicker" readonly>
						            <button class="btn btn-outline-secondary" id="snextBtn" type="button">></button>
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
			                <tbody id="modalList">
			                
			                </tbody>
			            </table>
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
 	    
     listCall();
     
     function listCall(){
     	$.ajax({
     		type:'get',
	       	url:'workmodallist.do',
	       	data:{'emp_id':emp_id},
	       	dataType: 'json',
	       	success:function(data){
	       		 console.log(data);
	       		 drawlist(data.list);
	       	},
	       	error:function(e){
	       		console.log(e);
	       	}
     	});
     }
     	
     	function drawlist(list){
     		var content = "";
     		
     		list.forEach(function(item, idx){
     			content +='<tr>';
     			content +='<td>'+item.work_day+'</td>';
     			content +='<td>'+item.work_start+'~'+item.work_end+'</td>';
     			content +='<td>'+item.vaca_start+'~'+item.vaca_end+'</td>';
     			content +='<td>'+item.work_started+'</td>';
     			content +='<td>'+item.work_ended+'</td>';
     			content +='<td>'+item.work_state+'</td>';
     			content +='</tr>';
     		});
     		$('#modalList').empty();
     		$('#modalList').append(content);
     	}
     });
     
     

     </script>
  </body>
  	
  	
</html>
