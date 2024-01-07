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
    
    <!-- bootstrap 아이콘 -->
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
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
    <link rel="stylesheet" href="../../assets/vendor/libs/select2/select2.css" />
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
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="../../assets/js/config.js"></script>
    
    <!-- custom CSS -->
    <style>
    .col-lg-4{
    	width:20%;
    }
    
    .col-lg-8{
     width:80%;
    }
    
    .mb-1{
    	margin-bottom:0.1rem !important;
    }
    
    h5{
    	font-family:pretendard;
    	font-weight:600;
    }
    
    h4{
    	font-family:pretendard;
    	font-weight:600;
    }
    
    .apv-home{
    	color:#c20000;
    	margin-bottom:2rem;
    }
    
    .apv-title{
    	margin-top:0.125rem;
    } 
   
    .apv-menu{
    	margin-top: 1rem;
    }
    
    .align-middle{
    	font-family:pretendard;
    	font-weight:500;
    }
    
    .card{
    	margin-bottom:3rem;
    }
    
    .btn.btn-secondary{
    	margin-top:1rem;
   		font-family:pretendard;
    	margin-bottom:0.625rem;
    }
    
    </style>
    
    
  </head>

  <body>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
        <!-- Menu -->
					<jsp:include page="/views/header_menu.jsp" />
        <!-- / Menu -->

        <!-- Layout container -->
        <div class="layout-page">
        
        <!-- Navbar -->
					<jsp:include page="/views/header_navbar.jsp" />
          <!-- / Navbar -->	

          <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
              <!-- <h4 class="py-3 mb-4">전자 결재</h4> -->

              <div class="row g-4">
                <!-- Navigation -->
                <div class="col-12 col-lg-4">
                  <div class="d-flex justify-content-between flex-column mb-3 mb-md-0">
                    <ul class="nav nav-align-left nav-pills flex-column">
                    
                    	<li class="nav-item mb-1">
                    		<h4 class="apv-title">
                    			전자 결재
                    		</h4>
                    	</li>
                    	
                    	<li class="nav-item mb-1">
                    		<button type="button" class="btn btn-secondary">새 결재 작성</button>
                    	</li>
                    
                    	<li class="nav-item mb-1">
                    		<h5 class="apv-menu">
                    			<i class="menu-icon tf-icons bx bx-food-menu"></i>
                    			결재하기
                    		</h5>
                    	</li>
                      <li class="nav-item mb-1">
                        <a class="nav-link active" href="getApproval_list.go">
                          <span class="align-middle">결재 요청 받은 문서</span>
                        </a>
                      </li>
                      <li class="nav-item mb-1">
                        <a class="nav-link" href="compApproval_list.go">
                          <span class="align-middle">결재 완료한 문서</span>
                        </a>
                      </li>
                      <li class="nav-item mb-1">
                        <a class="nav-link" href="viewApproval_list.go">
                          <span class="align-middle">열람 가능한 문서</span>
                        </a>
                      </li>
                      <li class="nav-item mb-1">
                    		<h5 class="apv-menu">
                    			<i class="menu-icon tf-icons bx bx-food-menu"></i>
                    			상신한 결재
                    		</h5>
                    	</li>
                      <li class="nav-item mb-1">
                        <a class="nav-link" href="requestApproval_list.go">
                          <span class="align-middle">결재 요청한 문서</span>
                        </a>
                      </li>
                      <li class="nav-item mb-1">
                        <a class="nav-link" href="finishApproval_list.go">
                          <span class="align-middle">결재 완료된 문서</span>
                        </a>
                      </li>
                      <li class="nav-item mb-1">
                        <a class="nav-link" href="temporaryApproval_list.go">
                          <span class="align-middle">임시 저장된 문서</span>
                        </a>
                      </li>
                      <li class="nav-item mb-1">
                        <a class="nav-link" href="rejectedApproval_list.go">
                          <span class="align-middle">반려된 문서</span>
                        </a>
                      </li>
                    </ul>
                  </div>
                </div>
                <!-- /Navigation -->

                <!-- Options -->
                <div class="col-12 col-lg-8 pt-4 pt-lg-0">
                	<h4 class="apv-home">
                		결재 요청 받은 문서
                	</h4>
                  <div class="tab-content p-0">
                    <!-- Store Details Tab -->
                    <div class="tab-pane fade show active" id="store_details" role="tabpanel">
        
				              <div class="card">
				                <h5 class="card-header"> 결재 요청 받은 문서 리스트 </h5>
				                <div class="card-datatable table-responsive">
				                  <table class="dt-multilingual2 table border-top">
				                    <thead>
				                      <tr>
				                        <th></th>
				                        <th>문서양식</th>
				                        <th>문서제목</th>
				                        <th>상신일</th>
				                        <th>기안자/부서</th>
				                        <th>결재 상태</th>
				                      </tr>
				                    </thead>
				                  </table>
				                </div>
				              </div>


                    </div>
                  </div>
                </div>
                <!-- /Options-->
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
    <script src="../../assets/vendor/libs/select2/select2.js"></script>
    <script src="../../assets/vendor/libs/cleavejs/cleave.js"></script>
    <script src="../../assets/vendor/libs/cleavejs/cleave-phone.js"></script>
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
    <script src="../../assets/js/app-ecommerce-settings.js"></script>
    
    <!-- Header JS -->
    <script src="../../assets/js/header.js"></script>
    
    <!-- custom JS -->
    <script>
    
    $(function () {
  	  var dt_multilingual_table1 = $('.dt-multilingual1'),
  	  dt_multilingual_table2 = $('.dt-multilingual2');

  	  // Multilingual DataTable
  	  // --------------------------------------------------------------------

  	  var lang = 'English';
  	  if (dt_multilingual_table2.length) {
  	    var table_language = dt_multilingual_table2.DataTable({
  	      ajax: assetsPath + 'json/table-datatable.json',
  	      columns: [
  	        { data: '' },
  	        { data: 'full_name' },
  	        { data: 'post' },
  	        { data: 'start_date' },
  	        { data: 'status' },
  	        { data: '' }
  	      ],
  	      columnDefs: [
  	        {
  	          // For Responsive
  	          className: 'control',
  	          orderable: false,
  	          targets: 0,
  	          searchable: false,
  	          render: function (data, type, full, meta) {
  	            return '';
  	          }
  	        },
  	        {
  	          // Label
  	          targets: -1,
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
  	              '<span class="badge ' + $status[$status_number].class + '">' + $status[$status_number].title + '</span>'
  	            );
  	          }
  	        }
  	      ],
  	      language: {
  	        url: '//cdn.datatables.net/plug-ins/9dcbecd42ad/i18n/' + lang + '.json'
  	      },
  	      //paging: false,
  	      displayLength: 10,
  	      dom: '<"row"<"col-sm-12 col-md-6"f>>t<"row"<"col-sm-12 col-md-6"i><"col-sm-12 col-md-6"p>>',
  	      lengthMenu: [10],
  	      searching: false,
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
