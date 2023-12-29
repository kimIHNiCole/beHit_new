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
    <link rel="stylesheet" href="../../assets/vendor/libs/flatpickr/flatpickr.css" />
		<link rel="stylesheet" href="../../assets/vendor/libs/datatables-bs5/datatables.bootstrap5.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/datatables-responsive-bs5/responsive.bootstrap5.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/datatables-checkboxes-jquery/datatables.checkboxes.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/datatables-buttons-bs5/buttons.bootstrap5.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/bootstrap-select/bootstrap-select.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/quill/typography.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/quill/katex.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/quill/editor.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/sweetalert2/sweetalert2.css" />
    
    
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
    
    button{
			background: inherit;
			border:none;
			box-shadow:none;
			border-radius:0;
			padding:0;
			overflow:visible;
			cursor:pointer;
		}
			
		.row{
			justify-content: center;
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
    
    .apv-form-menu{
    	display:flex;
    	justify-content: flex-end;
    }
    
    .apv-form-menu .apv-form-menu-cnt{
    	margin-left:1rem;
    	margin-bottom:1rem;
    }
    
    .card{
    	margin-bottom:3rem;
    	display:flex;
    }
    
    .btn.btn-secondary{
    	margin-top:1rem;
   		font-family:pretendard;
    	margin-bottom:0.625rem;
    }
    
    
    /*휴가신청서*/
    
    .apv-form-vac{
    	margin: 1rem;
    	display:flex;
    	justify-content: center;
    }
    
    .apv-form-vac .table-header,
    .apv-form-vac .table-content{
    	width: 800px;
    	color: black;
    	background: white;
    	font-size: 12px;
    }
    
    .apv-form-vac .table-subject{
    	width: 300px;
	    padding: 3px !important;
	    border: 0px solid black;
	    height: 90px !important;
	    font-size: 22px;
	    font-weight: 600;
	    text-align: center;
	    vertical-align: middle;
    }
    
    .apv-form-vac .table-header-left{
    	width:250px;
    }
    
    .apv-form-vac .table-header-left-table{
	    border: 1px solid black;
	    font-size: 12px;
	    border-collapse: collapse !important;
    }
    
    .apv-form-vac .table-header-left-table-left{
    	width: 100px;
	    height: 22px;
	    vertical-align: middle;
	    border: 1px solid black;
	    text-align: center;
	    font-weight: bold;
	    background: rgb(221, 221, 221);
	    padding: 3px !important;
    }
    
    .apv-form-vac .table-header-left-table-right{
    	width: 150px;
	    height: 22px;
	    vertical-align: middle;
	    border: 1px solid black;
	    text-align: left;
	    padding: 3px !important;
    }
    
    .apv-form-vac .table-header-right{
			width: 500px;
	    text-align: right;
	    padding: 0px!important;
	    border: 0!important;
	    vertical-align: top !important;
    }
    
    .apv-form-vac .apv-sign{
    	display: inline-block;
    	margin-right: -1px;
    }
    
    .apv-form-vac .apv-sign-table{
    	border:1px solid black;
	    border-collapse: collapse;
    }
    
    .apv-form-vac .apv-sign-table tbody tr th{
    	width: 15px;
	    padding: 6px;
	    text-align: center;
	    word-break: break-word;
	    white-space: normal;
	    background: rgb(221, 221, 221);
    }
    
    .apv-form-vac .apv-sign-table tbody tr td{
			padding: 0!important;
    }
    
    .apv-form-vac .apv-sign-table-right tbody tr{
    	border-bottom:1px solid black;
    	border-left:1px solid black;
	    border-collapse: collapse;
    }
    
    .apv-form-vac .apv-sign-table-right tbody tr.last{
    	border-bottom:0;
    }
    
    
    .apv-form-vac .apv-sign-line{
    	height: 26px;
	    min-height: 26px;
    }
    
    .apv-form-vac .apv-sign-line-dept,
    .apv-form-vac .apv-sign-line-name,
    .apv-form-vac .apv-sign-line-date
     {
    	display: block;
	    text-align: center;
	    overflow: hidden;
	    text-overflow: ellipsis;
	    white-space: nowrap;
	    width: 70px;
	    font-size: 12px;
	    padding: 2px 4px;
    }
    
    .apv-form-vac .apv-sign-line-name{
    	height: 74px;
    	text-align: center;
    }
    
    /*table-content*/
    
    .apv-form-vac .table-content-left{
    	background: rgb(221, 221, 221);
	    padding: 5px;
	    border: 1px solid black;
	    height: 25px;
	    text-align: center;
	    color: rgb(0, 0, 0);
	    font-size: 14px;
	    font-weight: bold;
	    vertical-align: middle;
    }
    
    .apv-form-vac .table-content-right{
    	padding: 3px;
	    border: 1px solid black;
	    width: 700px;
	    height: 38px;
	    text-align: left;
	    color: rgb(0, 0, 0);
	    font-size: 12px;
	    vertical-align: middle;
	    background: rgb(255, 255, 255);
    }
    
    .apv-form-vac .table-content-right.reason{
	    height: 282px;
    }
    
    .table-content-right .form-control{
    	display: inline-block;
    	width: 30%;
    }
    
    .table-upload-right .form-control{
    	display: inline-block;
    	width: 100%;
    }
    
    .apv-form-button{
    	display:flex;
    	justify-content: flex-end;
    	margin: 1rem 0;
    	font-family:pretendard;
    }
    
    .apv-form-button button[type="submit"]{
    	margin-right: 5.125rem;
    }
    
    .apv-form-button button[type="reset"]{
    	margin-right:1rem;
    }
    
    .text-truncate{
    	font-family:pretendard;
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

            <div class="container-xxl flex-grow-1 container-p-y">
              <!-- <h4 class="py-3 mb-4">전자 결재</h4> -->

              <div class="row g-4">

                <!-- Options -->
                <div class="col-lg-11 pt-4 pt-lg-0">
                	<h4 class="apv-home">휴가 신청서</h4>
                	<div class="apv-form-menu">
                		<span class="text-truncate">
                			<button type="button" id="confirm-text" class="apv-form-menu-cnt"><i class='bx bx-plus'></i> 결재선 추가</button>
                		</span>
                	</div>
                  <div class="tab-content p-0">
                    <!-- Store Details Tab -->
                    <div class="tab-pane fade show active" id="store_details" role="tabpanel">
        
				              <div class="card">
				              	<div class="apv-form-vac">
					              	<form>
					              		<table class="table-header">
					              			<tbody>
					              				<tr>
					              					<td class="table-subject" colspan="2">연차신청서</td>
					              				</tr>
					              				<tr>
					              					<td class="table-header-left">
					              						<table class="table-header-left-table">
					              							<tbody>
					              								<tr>
					              									<td class="table-header-left-table-left">기안자</td>
					              									<td class="table-header-left-table-right name"></td>
					              								</tr>
					              								<tr>
					              									<td class="table-header-left-table-left">부서</td>
					              									<td class="table-header-left-table-right dept"></td>
					              								</tr>
					              								<tr>
					              									<td class="table-header-left-table-left">기안일</td>
					              									<td class="table-header-left-table-right date"></td>
					              								</tr>
					              								<tr>
					              									<td class="table-header-left-table-left">문서번호</td>
					              									<td class="table-header-left-table-right number"></td>
					              								</tr>
					              							</tbody>
					              						</table>
					              					</td>
					              					<td class="table-header-right">
					              						<div class="apv-sign">
					              							<table class="apv-sign-table">
					              								<tbody>
					              									<tr>
					              										<th>승인</th>
					              										
					              										<!-- 결재선 추가 -->
					              										<td class="apv-sign-table-right">
					              											<table>
					              												<tbody>
					              												
					              													<tr>
					              														<td>
					              															<span class="apv-sign-line-dept">대리</span>
					              														</td>
					              													</tr>
					              													
					              													<tr>
					              														<td>
					              															<span class="apv-sign-line-name">이유빈</span>
					              														</td>
					              													</tr>
					              													
					              													<tr class="last">
					              														<td>
					              															<span class="apv-sign-line-date">2023-12-12</span>
					              														</td>
					              													</tr>
					              													
					              												</tbody>
					              											</table>
					              										</td>
					              										
					              									</tr>
					              								</tbody>
					              							</table>
					              						</div>
					              					</td>
					              				</tr>
					              			</tbody>
					              		</table>
					              		<table class="table-content">
					              			<tbody>
					              				<tr>
					              					<td class="table-content-left">연차 종류</td>
					              					<td class="table-content-right">
					              						<span>종일</span>
					              					</td>
					              				</tr>
					              				<tr>
					              					<td class="table-content-left">연차 기간</td>
					              					<td class="table-content-right">
					              						<span>2023-12-14</span>
					              						<span>~</span>
					              						<span>2023-12-26</span>
					              						<span class="vac-time">16시간</span>
					              					</td>
					              				</tr>
					              				<tr>
					              					<td class="table-content-left">연차 사유</td>
					              					<td class="table-content-right reason">
						              					<div id="snow-editor">
	                									</div>
					              					</td>
					              				</tr>
					              			</tbody>
					              		</table>

					              	</form>
				                </div>
				                
				                <div class="pt-4 apv-form-button">
				                	<button type="reset" class="btn btn-label-secondary">닫기</button>
				              	</div>


                    </div>
                  </div>
                </div>
                <!-- /Options-->
              </div>
            </div>
            <!-- / Content -->
            </div>
            
            
            
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
    <script src="../../assets/vendor/libs/bootstrap-select/bootstrap-select.js"></script>
    <script src="../../assets/vendor/libs/bootstrap-datepicker/bootstrap-datepicker.js"></script>
    <script src="../../assets/vendor/libs/bootstrap-daterangepicker/bootstrap-daterangepicker.js"></script>
    <script src="../../assets/vendor/libs/jquery-timepicker/jquery-timepicker.js"></script>
    <script src="../../assets/vendor/libs/pickr/pickr.js"></script>
    <script src="../../assets/vendor/libs/quill/katex.js"></script>
    <script src="../../assets/vendor/libs/quill/quill.js"></script>
    <script src="../../assets/vendor/libs/sweetalert2/sweetalert2.js"></script>
    
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
    <script src="../../assets/js/forms-editors.js"></script>
    
    <!-- custom JS -->
    <script>
    
    // sweetAlert
    
(function () {
  const confirmText = document.querySelector('#confirm-text');
    
    if (confirmText) {
        confirmText.onclick = function () {
          Swal.fire({
            title: 'Are you sure?',
            text: "You won't be able to revert this!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonText: 'Yes, delete it!',
            customClass: {
              confirmButton: 'btn btn-primary me-3',
              cancelButton: 'btn btn-label-secondary'
            },
            buttonsStyling: false
          }).then(function (result) {
            if (result.value) {
              Swal.fire({
                icon: 'success',
                title: 'Deleted!',
                text: 'Your file has been deleted.',
                customClass: {
                  confirmButton: 'btn btn-success'
                }
              });
            }
          });
        };
      }
})();
    
    
    // 날짜 input
    (function () {
    	  // Flat Picker
    	  // --------------------------------------------------------------------
    	  const flatpickrDateBefore = document.querySelector('#flatpickr-date-before');
    	  const flatpickrDateAfter = document.querySelector('#flatpickr-date-after');

    	  // Date
    	  if (flatpickrDateBefore) {
    	    flatpickrDateBefore.flatpickr({
    	      monthSelectorType: 'static'
    	    });
    	  }
    	  
    	  if (flatpickrDateAfter) {
      	    flatpickrDateAfter.flatpickr({
      	      monthSelectorType: 'static'
      	    });
      	  }
    	  
    })();
    
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
