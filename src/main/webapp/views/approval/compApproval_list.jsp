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
    
    .getApproval_list{
    	font-family:pretendard;
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
    	font-family:pretendard;
    }
    
    .modal .bx.bxs-file-blank{
    	color:#C20000;
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
                    		<button type="button" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#apv-modal">새 결재 작성</button>
                    	</li>
                    
                    	<li class="nav-item mb-1">
                    		<h5 class="apv-menu">
                    			<i class="menu-icon tf-icons bx bx-food-menu"></i>
                    			결재하기
                    		</h5>
                    	</li>
                      <li class="nav-item mb-1">
                        <a class="nav-link" href="/approval/getApproval_list.go">
                          <span class="align-middle">결재 요청 받은 문서</span>
                        </a>
                      </li>
                      <li class="nav-item mb-1">
                        <a class="nav-link active" href="/approval/compApproval_list.go">
                          <span class="align-middle">결재 완료한 문서</span>
                        </a>
                      </li>
                      <li class="nav-item mb-1">
                        <a class="nav-link" href="/approval/viewApproval_list.go">
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
                        <a class="nav-link" href="/approval/requestApproval_list.go">
                          <span class="align-middle">결재 요청한 문서</span>
                        </a>
                      </li>
                      <li class="nav-item mb-1">
                        <a class="nav-link" href="/approval/finishApproval_list.go">
                          <span class="align-middle">결재 완료된 문서</span>
                        </a>
                      </li>
                      <li class="nav-item mb-1">
                        <a class="nav-link" href="/approval/temporaryApproval_list.go">
                          <span class="align-middle">임시 저장된 문서</span>
                        </a>
                      </li>
                      <li class="nav-item mb-1">
                        <a class="nav-link" href="/approval/rejectedApproval_list.go">
                          <span class="align-middle">반려된 문서</span>
                        </a>
                      </li>
                    </ul>
                  </div>
                </div>
                <!-- /Navigation -->
                
                <!-- modal -->
								<!-- 새 결제 작성 모달 -->
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
              <!--/ 새 결제 작성 모달 -->

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
				                  <table class="getApproval_list table border-top">
				                    <thead>
				                      <tr>
				                        <th>문서양식</th>
				                        <th>문서제목</th>
				                        <th>상신일</th>
				                        <th>내가 결재한 날짜</th>
				                        <th>최종 결재자</th>
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
    
    <!-- Header JS -->
    <script src="../../assets/js/header.js"></script>
    
    <!-- custom JS -->
    <script>

  	// 리스트 출력-----------------------------------------------------------------------------
    
    $(function () {
        var getApprovalListTable = $('.getApproval_list');
        var lang = 'English';

        if (getApprovalListTable.length) {
            getApprovalListTable.DataTable({
            		stateSave: true,  // 상태 저장 활성화
                pagingType: 'full_numbers',  // 페이징 컨트롤 옵션 설정
                ajax: {
                    url: '/approval/compApproval_list.do',
                    type: 'GET',
                    dataSrc: ''
                },
                columns: [
                	{ 
                        data: 'apv_code',
                        render: function (data, type, row) {
                            // apv_code 값에 따른 사용자 정의 표시
                            switch (data) {
                                case 'BSPN':
                                    return '사업 기안서';
                                case 'BFVC':
                                    return '연차 신청서';
                                case 'AFVC':
                                    return '사후 연차 신청서';
                                default:
                                    return data; // 일치하는 값이 없는 경우 원래 값 반환
                            }
                        }
                    },
                    { data: 'apv_subject',
                        render: function (data, type, row) {
                        	return '<a href="javascript:void(0);" class="apv-subject-link" data-apv-idx="' + row.apv_idx + '">' + data + '</a>';
                        }
                    },
                    { data: 'apv_date' },
                    { data: 'apv_history_date' },
                    { data: 'emp_name' },
                    { 
                        data: 'apv_stmt',
                        targets: -1,
                        render: function (data, type, full, meta) {
                            var statusClass = '';
                            if (data === '완료') {
                                statusClass = 'bg-secondary';
                            } else if (data === '진행중') {
                                statusClass = 'bg-success';
                            } else if (data === '반려') {
                            		statusClass = 'bg-danger';
                            } else if (data === '임시저장') {
                            		statusClass = 'bg-warning';
                            }
                            return '<span class="badge ' + statusClass + '">' + data + '</span>';
                        }
                    }

                ],
                language: {
                    url: '//cdn.datatables.net/plug-ins/9dcbecd42ad/i18n/' + lang + '.json'
                },
                displayLength: 10,
                dom: '<"row"<"col-sm-12 col-md-6"f>>t<"row"<"col-sm-12 col-md-6"i><"col-sm-12 col-md-6"p>>',
                lengthMenu: [10],
                searching: false,
                responsive: true,
                initComplete: function () {
                    // DataTable 초기화가 완료된 후 이벤트 처리
                    getApprovalListTable.find('.apv-subject-link').on('click', function (e) {
                        var apvIdx = $(this).data('apv-idx');
                        console.log(apvIdx);
                        // 여기에 '/approval/getApproval_detail.go' 요청을 보내는 로직 추가
                        window.location.href = '/approval/getApproval_detail.go/'+ apvIdx;
                    });
                }
            });
        }
    });
    
  //------------------------------------------------------------------------------------------------
     
    
 // 새 결재 작성 모달창 ---------------------------------------------------------------------------
    $(function () {
    	  var theme = $('html').hasClass('light-style') ? 'default' : 'default-dark',
    	    checkboxTree = $('#jstree-checkbox');
    	  // Checkbox
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
    	      plugins: ['types','wholerow'],
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
    	        					location.href="approval_write.go/vac";
    	        			}else if(selectedNodeId == 'j1_3'){
    	        				location.href="approval_write.go/vac_after";
    	        			}else if(selectedNodeId == 'j1_5'){
    	        				location.href="approval_write.go/biz";
    	        			}
    	        });
    	        
    	      });
    	  }
    	});
		
  	//------------------------------------------------------------------------------------------------
    
    
    </script>

  </body>
</html>