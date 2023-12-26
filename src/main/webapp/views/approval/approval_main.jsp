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

    <title>Settings Store Details - eCommerce | Sneat - Bootstrap 5 HTML Admin Template - Pro</title>

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
    <link rel="stylesheet" href="../../assets/vendor/libs/jstree/jstree.css" />
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
    
    h5,h4,h3{
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
    
    .card.apv-modal-folder{
    	min-width: 15.625rem;
    }
    
    .btn.btn-secondary{
    	margin-top:1rem;
   		font-family:pretendard;
    	margin-bottom:0.625rem;
    }
    
    .modal{
    	--bs-modal-width: 24.625rem;
    }
    
    .bx.bxs-file-blank{
    	color:#C20000;
    }
    
    </style>
    
    
  </head>

  <body class style>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
        <!-- Menu -->
        
        <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
          <div class="app-brand demo">
            <a href="index.go" class="app-brand-link">
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
              <a href="#" class="menu-link">
                <i class="menu-icon tf-icons bx bx-home-circle"></i>
                <div class="text-truncate" data-i18n="홈">홈</div>
              </a>
            </li>
            
            <li class="menu-item active">
              <a href="approval_main.go" class="menu-link">
                <i class="menu-icon tf-icons bx bx-food-menu"></i>
                <div class="text-truncate" data-i18n="전자 결재">전자 결재</div>
              </a>
            </li>
            
            <li class="menu-item">
              <a href="#" class="menu-link">
                 <i class="menu-icon tf-icons bx bx-slideshow"></i>
                <div class="text-truncate" data-i18n="크리에이터">크리에이터</div>
              </a>
            </li>
            
            <li class="menu-item">
              <a href="#" class="menu-link">
                 <i class="menu-icon tf-icons bx bx-customize"></i>
                <div class="text-truncate" data-i18n="프로젝트">프로젝트</div>
              </a>
            </li>
            
            <li class="menu-item">
              <a href="#" class="menu-link">
                 <i class="menu-icon tf-icons bx bx-calendar"></i>
                <div class="text-truncate" data-i18n="캘린더">캘린더</div>
              </a>
            </li>
            
            <li class="menu-item">
              <a href="#" class="menu-link">
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
                  <a href="#" class="menu-link">
                    <div class="text-truncate" data-i18n="내 근태관리">내 근태관리</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="#" class="menu-link">
                    <div class="text-truncate" data-i18n="내 연차내역">내 연차내역</div>
                  </a>
                </li>
              </ul>
            </li>
            
            <li class="menu-item">
              <a href="#" class="menu-link">
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
                  <a href="#" class="menu-link">
                    <div class="text-truncate" data-i18n="직원 관리">직원 관리</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="javascript:void(0);" class="menu-link menu-toggle">
                    <div class="text-truncate" data-i18n="근태 관리">근태 관리</div>
                  </a>
                  <ul class="menu-sub">
                    <li class="menu-item">
                      <a href="#" class="menu-link">
                        <div class="text-truncate" data-i18n="근태 현황">근태 현황</div>
                      </a>
                    </li>
                    <li class="menu-item">
                      <a href="#" class="menu-link">
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
                        <h5 class="text-body mb-0 me-auto">Notification</h5>
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
                      <a class="dropdown-item" href="#">
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
          </nav>

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
                    		<button type="button" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#apv-modal">새 결재 작성</button>
                    	</li>
                    
                    	<li class="nav-item mb-1">
                    		<h5 class="apv-menu">
                    			<i class="menu-icon tf-icons bx bx-food-menu"></i>
                    			결재하기
                    		</h5>
                    	</li>
                      <li class="nav-item mb-1">
                        <a class="nav-link" href="getApproval_list.go">
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

								<!-- modal -->
								<!-- Add New Credit Card Modal -->
              <div class="modal fade" id="apv-modal" tabindex="-1" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered1 modal-simple modal-add-new-cc">
                  <div class="modal-content p-3 p-md-5">
                    <div class="modal-body">
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                      <div class="text-start mb-4">
                        <h3>결재 양식</h3>
                      </div>
                      
                      <div>
                      	<div class="col-md-6 col-12">
													<div class="card mb-md-0 mb-4 apv-modal-folder">
														<h5 class="card-header">문서양식</h5>
														<div class="card-body">
															<div id="jstree-checkbox"></div>
														</div>
													</div>
												</div>
                      </div>

                      <div class="col-12 text-center">
                        <button type="button" class="btn btn-primary me-sm-3 me-1 mt-3 apv-doc-select">선택</button>
                        <button
                          type="reset"
                          class="btn btn-label-secondary btn-reset mt-3"
                          data-bs-dismiss="modal"
                          aria-label="Close">
                          취소
                        </button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!--/ Add New Credit Card Modal -->

                <!-- Options -->
                <div class="col-12 col-lg-8 pt-4 pt-lg-0">
                	<h4 class="apv-home">
                		전자 결재 홈
                	</h4>
                  <div class="tab-content p-0">
                    <!-- Store Details Tab -->
                    <div class="tab-pane fade show active" id="store_details" role="tabpanel">
                    	
                    	
                    	<div class="card">
				                <h5 class="card-header">결재 요청받은 문서</h5>
				                <div class="card-datatable table-responsive">
				                  <table class="dt-multilingual1 table border-top">
				                    <thead>
				                      <tr>
				                        <th></th>
				                        <th>문서양식</th>
				                        <th>문서제목</th>
				                        <th>요청일</th>
				                        <th>기안자/부서</th>
				                        <!--<th>Salary</th>
				                        <th>Status</th>
				                        <th>Action</th>-->
				                      </tr>
				                    </thead>
				                  </table>
				                </div>
				              </div>
				              
				              <div class="card">
				                <h5 class="card-header">결재 요청한 문서</h5>
				                <div class="card-datatable table-responsive">
				                  <table class="dt-multilingual2 table border-top">
				                    <thead>
				                      <tr>
				                        <th></th>
				                        <th>문서양식</th>
				                        <th>문서제목</th>
				                        <th>상신일</th>
				                        <th>마지막 결제일</th>
				                        <th>현 결재자</th>
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
    <script src="../../assets/vendor/libs/jstree/jstree.js"></script>
    
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
    
    <!-- custom JS -->
    <script>
    
    
    
    $(function () {
    	  var dt_multilingual_table1 = $('.dt-multilingual1'),
    	  dt_multilingual_table2 = $('.dt-multilingual2');

    	  // Multilingual DataTable
    	  // --------------------------------------------------------------------
    	  
    	  var lang = 'English';
    	  if (dt_multilingual_table1.length) {
    	    var table_language = dt_multilingual_table1.DataTable({
    	      ajax: assetsPath + 'json/table-datatable.json',
    	      columns: [
    	        { data: '' },
    	        { data: 'full_name' },
    	        { data: 'post' },
    	        { data: 'start_date' },
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
      	          // Actions
      	          targets: -1,
      	          title: '기안자/부서',
      	          orderable: false,
      	          searchable: false,
      	          render: function (data, type, full, meta) {
      	            return '';
      	          }
      	        }
    	      ],
    	      language: {
    	        url: '//cdn.datatables.net/plug-ins/9dcbecd42ad/i18n/' + lang + '.json'
    	      },
    	      //paging: false,
    	      displayLength: 5,
    	      dom: '<"row"<"col-sm-12 col-md-6"f>>t<"row"<"col-sm-12 col-md-6"i><"col-sm-12 col-md-6"p>>',
    	      lengthMenu: [5],
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
    	  
    	  

    	  var lang = 'English';
    	  if (dt_multilingual_table2.length) {
    	    var table_language2 = dt_multilingual_table2.DataTable({
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
    	      displayLength: 5,
    	      dom: '<"row"<"col-sm-12 col-md-6"f>>t<"row"<"col-sm-12 col-md-6"i><"col-sm-12 col-md-6"p>>',
    	      lengthMenu: [5],
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
    
    
    // 새 결재 작성 모달창
    $(function () {
    	  var theme = $('html').hasClass('light-style') ? 'default' : 'default-dark',
    	    checkboxTree = $('#jstree-checkbox');

    	  // Checkbox
    	  // --------------------------------------------------------------------
    	  if (checkboxTree.length) {
    	    checkboxTree.jstree({
    	      core: {
    	        themes: {
    	          name: theme
    	        },
    	        data: [
    	          {
    	            text: '근태',
    	            state: {
      	              opened: true
      	            },
    	            children: [
    	              {
    	                text: '휴가 신청서',
    	                type: 'docs'
    	              },
    	              {
      	              text: '사후 휴가 신청서',
      	              type: 'docs'
      	            }
    	            ]
    	          },
    	          {
    	            text: '일반 ',
    	            state: {
    	              opened: true
    	            },
    	            children: [
    	              {
    	                text: '사업 기안서',
    	                type: 'docs'
    	              }
    	            ]
    	          },
    	        ]
    	      },
    	      plugins: ['types','checkbox', 'wholerow'],
    	      types: {
    	        default: {
    	          icon: 'bx bx-folder'
    	        },
    	        docs: {
    	          icon: 'bx bxs-file-blank'
    	        }
    	      }
    	    }).on('select_node.jstree', function (e, data) {
    	        // 현재 선택된 노드의 ID 확인
    	        var selectedNodeId = data.node.id;
    	        
    	        // 여러번 왔다갔다 클릭 이벤트의 id 값이 중첩되어 여러번 호출되는걸 막기 위해서
    	        $('.apv-doc-select').off('click');
    	        
    	        // id 값에 따라 페이지 이동
    	        $('.apv-doc-select').on('click',function(){
    	        			if(selectedNodeId == 'j1_2'){
    	        					location.href="approval_write.go";
    	        			}else if(selectedNodeId == 'j1_3'){
    	        				location.href="approval_write.go";
    	        			}else if(selectedNodeId == 'j1_5'){
    	        				location.href="approval_write.go";
    	        			}
    	        });
    	        
    	      });
    	  }

    	});
    
    </script>
  </body>
</html>
