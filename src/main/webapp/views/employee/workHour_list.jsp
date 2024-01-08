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
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iKt6iOp+J8r+longdZlF/YJ83QpvL+fm9ifktD5tr5Q/f1vZ/EKUnDSny" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-datepicker@1.9.0/dist/css/bootstrap-datepicker.min.css" rel="stylesheet">

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
    <h4 class="py-3 mb-4"><span class="text-muted fw-light">근태 관리 </span></h4>
    <!-- DataTable with Buttons -->
    <div class="card">
        <div class="card-datatable table-responsive">
			<div class="row mb-3">
			    <!-- Calendar -->
				<div class="col-md-4">
			        <div class="input-group">
			            <button class="btn btn-outline-secondary" id="prevBtn" type="button"><</button>
			            <input type="text" class="form-control text-center" id="datepicker" readonly>
			            <button class="btn btn-outline-secondary" id="nextBtn" type="button">></button>
			        </div>
			    </div>
			
			    <!-- Search Box -->
			    <div class="col-md-4 offset-md-4">
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
                        <th colspan="2">이름 / 부서</th>
                        <th>근무시간</th>
                        <th>연차</th>
                        <th>출근 시간</th>
                        <th>퇴근 시간</th>
                        <th>상태</th>
                    </tr>
                </thead>
                <tbody id="worklist">
                
                </tbody>
            </table>
        </div>
        <div class="container" style="display: flex; justify-content: flex-end;">									
			<nav aria-label="Page navigation" style="text-align:center">
				<ul class="pagination" id="pagination"></ul>
			</nav>					
		</div>
		<div class="col-lg-4 col-md-6">
                        <!-- Modal -->
                        <div class="modal fade" id="modalCenter" tabindex="-1" aria-hidden="true" data-bs-backdrop="static" data-bs-keyboard="false">
                          <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content">
                              <div class="modal-header">
                                <button
                                  type="button"
                                  class="btn-close"
                                  data-bs-dismiss="modal"
                                  aria-label="Close"></button>
                              </div>
                              <jsp:include page="/views/employee/workHour_list_modal.jsp"/>
                            </div>
                          </div>
                        </div>
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


<!-- 달력 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-oGNHuvKMC5LEHibI2NCAp8CKO98iz+cbJP5r9XtZADn1I2QFsgJj8peNrtQ8iS9Z" crossorigin="anonymous"></script>
     <script src="https://cdn.jsdelivr.net/npm/bootstrap-datepicker@1.9.0/dist/js/bootstrap-datepicker.min.js"></script>


     <script>
     var showPage = 1;
     
     document.addEventListener("DOMContentLoaded", function () {
    	    var datepicker = $('#datepicker').datepicker({
    	        format: 'yyyy-mm-dd',
    	        autoclose: true,
    	        todayHighlight: true // 오늘 날짜 강조
    	    });

    	    // 한국 시간으로 초기화
    	    var currentDate = new Date();
    	    currentDate.setHours(currentDate.getHours() + 9); // UTC+9: 한국 시간으로 설정
    	    datepicker.datepicker('setDate', currentDate);
    	    updateInputValue(currentDate);

    	    // < 버튼 클릭 시 이벤트
    	    $('#prevBtn').on('click', function() {
    	        var selectedDate = datepicker.datepicker('getDate');
    	        selectedDate.setDate(selectedDate.getDate() - 1);
    	        datepicker.datepicker('update', selectedDate);
    	        updateInputValue(selectedDate);
    	        listCall(showPage);
    	    });

    	    // > 버튼 클릭 시 이벤트
    	    $('#nextBtn').on('click', function() {
    	        var selectedDate = datepicker.datepicker('getDate');
    	        selectedDate.setDate(selectedDate.getDate() + 1);
    	        datepicker.datepicker('update', selectedDate);
    	        updateInputValue(selectedDate);
    	        listCall(showPage);
    	    });

    	    function updateInputValue(date) {
    	        var formattedDate = date.getFullYear() + '-' + padZero(date.getMonth() + 1) + '-' + padZero(date.getDate());
    	        $('#datepicker').val(formattedDate);
    	    }

    	    function padZero(num) {
    	        return num < 10 ? '0' + num : num;
    	    }

    	    listCall(showPage);
         
         function listCall(page){
     	    var date = $('#datepicker').val(); // 날짜를 저장한 변수
    	    console.log(date);
	         $.ajax({
	        	 type:'get',
	        	 url:'/worklist.do',
	        	 data:{'date':date, 'page':page},
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
        	 
        	var content = "";
        	
        	obj.worklist.forEach(function(item, idx) {
        		
        		content +='<tr data-bs-toggle="modal" data-bs-target="#modalCenter" class="worklist">';
        		content +='<td style="display:none" class="emp_id">'+item.emp_id+'</td>';
				content +='<td style="width:100px;">';
				if (item.new_file_name != 'default'){
					content += '<img src="/file/employee/'+item.new_file_name+'" alt="'+item.ori_file_name+'"class="d-block h-auto ms-0 rounded user-profile-img" width="50px" height="50px" />';
				} else {
					content +=  '<img src="../../assets/img/avatars/1.png" alt="user image"class="d-block h-auto ms-0 rounded user-profile-img"width="50px" height="50px" />';
				}
				content +='</td>';
				content +='<td>'+'<div class="d-flex flex-column">'+
					'<span class="emp_name text-truncate">'+item.emp_name+'</span>'+
					'<small class="emp_post text-truncate text-muted" id="emp_id">'+item.dept_name+'</small>'+'</div>'+'</td>';	
        		content +='<td>'+item.work_start+'~'+item.work_end+'</td>';
        		if (item.work_start == item.vaca_start && item.work_end == item.vaca_end){
        			content +='<td>'+'종일'+'</td>';
        		} else{
 	       			content +='<td>'+item.vaca_start+'~'+item.vaca_end+'</td>';
        		}
        		content +='<td>'+item.work_started+'</td>';
        		content +='<td>'+item.work_ended+'</td>';
        		content +='<td>'+item.work_state+'</td>';
				content +='</tr>';
        	});
    		$('#worklist').empty();
    		$('#worklist').append(content);
        	 
        	 
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
     					listCall(page);
     				}
     			}
     		});
         }
     });
     
     $(document).on('click', '.worklist', function() {
    	    var emp_id = $(this).find('.emp_id').text(); // 클릭한 행에서 emp_id 가져오기
    	    console.log('Clicked row emp_id:', emp_id);
    	    
    	    $.ajax({
    	    	
    	    });
     });
     



     
     
     

     </script>
     
    <!-- Header -->
    <script src="../../assets/js/header.js"></script>
  </body>
</html>
