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
	<!-- pretendard 폰트 -->
	<link rel="stylesheet" type="text/css" href='https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css'>
	
    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="../../assets/img/favicon/favicon.ico" />

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
    <link rel="stylesheet" href="../../assets/vendor/libs/datatables-buttons-bs5/buttons.bootstrap5.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/animate-css/animate.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/sweetalert2/sweetalert2.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/select2/select2.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/@form-validation/umd/styles/index.min.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/apex-charts/apex-charts.css" />

    <!-- Page CSS -->

    <link rel="stylesheet" href="../../assets/vendor/css/pages/page-user-view.css" />

    <!-- Helpers -->
    <script src="../../assets/vendor/js/helpers.js"></script>
    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Template customizer: To hide customizer set displayCustomizer value false in config.js.  -->
    <script src="../../assets/vendor/js/template-customizer.js"></script>
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="../../assets/js/config.js"></script>
    
    <!-- 커스텀 -->
    <style>
    .d-flex.justify-content-center.pt-3{
    	padding-top: 0rem !important;
    	margin-right: -7rem;
    }
    
    </style>
    
  </head>

  <body>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
        <!-- Menu -->
		<jsp:include page="/views/header_menu.jsp" />
        <!-- Layout container -->
        <div class="layout-page">
          <!-- Navbar -->
		  <jsp:include page="/views/header_navbar.jsp" /> 
          <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->
            <div class="container-xxl flex-grow-1 container-p-y">
              <h4 class="py-3 mb-4"><span class="text-muted fw-light"></span> 크리에이터 관리</h4>
              <div class="row">
                <!-- User Sidebar -->
                <div class="col-xl-4 col-lg-5 col-md-5 order-1 order-md-0">
                  <!-- User Card -->
                  <div class="card mb-4">
                    <div class="card-body">
                      <div class="user-avatar-section">
                        <div class="d-flex align-items-center flex-column">
                          <img
                            class="img-fluid rounded my-4"
                            src="../../assets/img/avatars/10.png"
                            height="110"
                            width="110"
                            alt="User avatar" />
                          <div class="user-info text-center">
                            <h4 class="mb-2">히빱</h4>
                          </div>
                        </div>
                      </div>
                      <div class="d-flex justify-content-around flex-wrap my-4 py-3">
                        <div class="d-flex align-items-start me-4 mt-3 gap-3">
                          <span class="badge bg-label-primary p-2 rounded"><i class="bx bx-check bx-sm"></i></span>
                          <div>
                            <h5 class="mb-0">구독자</h5>
                            <span>3,333,333 명</span>
                          </div>
                        </div>
                        <div class="d-flex align-items-start mt-3 gap-3">
                          <span class="badge bg-label-primary p-2 rounded"><i class="bx bx-customize bx-sm"></i></span>
                          <div>
                            <h5 class="mb-0">컨텐츠 수</h5>
                            <span>1,432 개</span>
                          </div>
                        </div>
                      </div>
                      <h5 class="pb-2 border-bottom mb-4">상세정보</h5>
                      <div class="info-container">
                        <ul class="list-unstyled">
                          <li class="mb-3">
                            <span class="fw-medium me-2">이름:</span>
                            <span>김희연</span>
                          </li>
                          <li class="mb-3">
                            <span class="fw-medium me-2">성별:</span>
                            <span>여자</span>
                          </li>
                          <li class="mb-3">
                            <span class="fw-medium me-2">생년월일:</span>
                            <span>1997.12.23</span>
                          </li>
                          <li class="mb-3">
                            <span class="fw-medium me-2">국적:</span>
                            <span>한국</span>
                          </li>
                          <li class="mb-3">
                            <span class="fw-medium me-2">연락처:</span>
                            <span>010-1111-2222</span>
                          </li>
                          <li class="mb-3">
                            <span class="fw-medium me-2">Email:</span>
                            <span>vafgot@vultukir.org</span>
                          </li>
                          
                          <li class="mb-3">
                            <span class="fw-medium me-2">계약 시작일:</span>
                            <span>2022.01.14</span>
                          </li>
                          <li class="mb-3">
                            <span class="fw-medium me-2">계약 만료일:</span>
                            <span>2023.01.13</span>
                          </li>
                          
                        </ul>
                        
                      </div>
                    </div>
                  </div>
                  <!-- /User Card -->
                  <!-- Plan Card -->
                  <div class="card mb-4">
                    <div class="card-body">
                      
                      <h5 class="pb-2 border-bottom mb-4">특이사항</h5>
                      <p class="fw-medium me-2">동해물과 백두산이 마르고 닳도록 하느님이 보유하사 우리나라 만세</p>
                      <p class="fw-medium me-2">사실 히빱은 히밥의 짝퉁임을 여기에 고하매 하늘을 우러러 부끄럽기 짝이 없는 일이로다</p>
                      
                      
                    </div>
                  </div>
                  <!-- /Plan Card -->
                </div>
                <!--/ User Sidebar -->

                <!-- User Content -->
                <div class="col-xl-8 col-lg-7 col-md-7 order-0 order-md-1">
                  <!-- 탭 영역 -->
                  <div class="row" style="flex-wrap: nowrap;">
		            <div class="col-md-8">
		   			  <!-- 탭 추가 -->                    
		   			  <ul class="nav nav-pills" role="tablist">
		   			    <li class="nav-item">
		       		      <button 
		       		      		class="nav-link active" 
		       		      		data-bs-toggle="tab" 
		       		      		data-bs-target="#form-tabs-first" 
		       		      		role="tab" 
		       		      		aria-selected="true">
		         				<i class='bx bx-face' ></i>크리에이터 정보
		       		      </button>
		   			    </li>
		   			    <li class="nav-item">
		     			  <button 
		     			  		class="nav-link" 
		     			  		data-bs-toggle="tab" 
		     			  		data-bs-target="#form-tabs-second" 
		     			  		role="tab" 
		     			  		aria-selected="false" >
		       					<i class='bx bxl-sketch' ></i>대표 채널 정보
		    			  </button>
		   			    </li>
		   			    <li class="nav-item">
		     			  <button 
		     			  		class="nav-link" 
		     			  		data-bs-toggle="tab" 
		     			  		data-bs-target="#form-tabs-third" 
		     			  		role="tab" 
		     			  		aria-selected="false" >
		       					<i class='bx bxl-youtube' ></i>컨텐츠 정보(임시)
		    			  </button>
		   			    </li>
		   			  </ul>
		   			</div>
		   			<div>
		   			  <div class="col-md-4 text-end">
	                  	<div class="d-flex justify-content-center pt-3">
	                          <a
	                            href="javascript:;"
	                            class="btn btn-primary me-3"
	                            data-bs-target="#editUser"
	                            data-bs-toggle="modal"
	                            >수정</a>
	                          <a href="javascript:;" class="btn btn-label-danger suspend-user">삭제</a>
	                     </div>
                   	  </div>
		   			</div>
		   		  </div>
                  <!-- <div class="col-md-8">
                  <ul class="nav nav-pills flex-column flex-md-row mb-3">
                    <li class="nav-item">
                      <a class="nav-link active" href="javascript:void(0);"><i class='bx bx-face' ></i>크리에이터 정보</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="../creators/creator_detail_channel.go"
                        ><i class='bx bxl-sketch' ></i>대표 채널 정보</a
                      >
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="app-user-view-billing.go"
                        ><i class='bx bxl-youtube' ></i>컨텐츠 정보(임시)</a
                      >
                    </li>
                  </ul>
                  </div> 
                  <div class="col-md-4 text-end">
                  	<div class="d-flex justify-content-center pt-3">
                          <a
                            href="javascript:;"
                            class="btn btn-primary me-3"
                            data-bs-target="#editUser"
                            data-bs-toggle="modal"
                            >수정</a
                          >
                          <a href="javascript:;" class="btn btn-label-danger suspend-user">삭제</a>
                     </div>
                   </div>-->
                  <!--/ 탭 영역 -->
                  <div class="tab-content p-0 pt-3">
				  	<!-- 기본 정보 영역 -->
				  	<div class="tab-pane fade active show" id="form-tabs-first" role="tabpanel">
				      <!-- 채널 리스트 -->
				      <div class="card mb-4" >
				        <h5 class="card-header">활동 채널 리스트</h5>
				        <div class="table-responsive mb-3">
				          <table class="table datatable-project border-top">
				            <thead>
				              <tr>
				                <th>채널명</th>
				                <th class="text-nowrap">카테고리</th>
				                <th>구독자 수</th>
				                <th>컨텐츠 수</th>
				                <th>총 조회수</th>
				                <th>가입일자</th>
				              </tr>
				            </thead>
				            <tbody>
				            	<tr>
				                 <th>쀼쀼</th>
				                 <th class="text-nowrap">일상, 코믹</th>
				                 <th>11,234 명</th>
				                 <th>45 개</th>
				                 <th>1,999,356</th>
				                 <th>2023.10.01</th>
				              	</tr>
				              	<tr>
				                 <th>많이 먹어도 살 안 쪄서 좋겠당</th>
				                 <th class="text-nowrap">먹방</th>
				                 <th>3,332,123 명</th>
				                 <th>325 개</th>
				                 <th>515,745,435</th>
				                 <th>2019.04.24</th>
				              	</tr>
				            </tbody>
				          </table>
				        </div>
				      </div>
				      <!-- / 채널 리스트 -->
				      <!-- SNS 리스트 -->
				      <div class="card mb-4">
				        <h5 class="card-header">SNS</h5>
				        <div class="table-responsive mb-3">
				          <table class="table datatable-project border-top">
				            <thead>
				              <tr>                         
				                <th>SNS 주소</th>
				                <th class="text-nowrap">팔로워</th>
				                <th>팔로우</th>
				                <th>게시물</th>
				              </tr>
				            </thead>
				            <tbody>
				            	<tr>                         
				                 <th><img src="../../assets/img/icons/brands/instagram.png" alt="instagram" class="me-3" height="20">히빱 일상</th>
				                 <th class="text-nowrap">311,234</th>
				                 <th>1 명</th>
				                 <th>279 개</th>
				               </tr>
				            	<tr>                         
				                 <th><img src="../../assets/img/icons/brands/facebook.png" alt="facebook" class="me-3" height="20">히빱 페북</th>
				                 <th class="text-nowrap">22,222</th>
				                 <th>191 명</th>
				                 <th>-</th>
				               </tr>
				            </tbody>
				          </table>
				        </div>
				      </div>
				      <!-- / SNS 리스트 -->
				      <!-- Activity Timeline -->
				      <div class="card mb-4">
				        <h4 class="card-header">활동이력</h4>
				        <div class="card-body">
				          <ul class="timeline">
				            <li class="timeline-item timeline-item-transparent">
				              <span class="timeline-point-wrapper"
				                ><span class="timeline-point timeline-point-primary"></span
				              ></span>
				              <div class="timeline-event">
				                <div class="timeline-header mb-1">
				                  <h6 class="mb-0">유튜브 채널 1</h6>
				                  <small class="text-muted">2023-12-12</small>
				                </div>
				                <p class="mb-2">200만 구독자 달성</p>
				                
				              </div>
				            </li>
				            <li class="timeline-item timeline-item-transparent">
				              <span class="timeline-point-wrapper"
				                ><span class="timeline-point timeline-point-warning"></span
				              ></span>
				              <div class="timeline-event">
				                <div class="timeline-header mb-1">
				                  <h6 class="mb-0">유튜브 채널 2</h6>
				                  <small class="text-muted">2023-11-28</small>
				                </div>
				                <p class="mb-2">10만 구독자 달성</p>
				                
				              </div>
				            </li>
				            <li class="timeline-item timeline-item-transparent">
				              <span class="timeline-point-wrapper"
				                ><span class="timeline-point timeline-point-info"></span
				              ></span>
				              <div class="timeline-event">
				                <div class="timeline-header mb-1">
				                  <h6 class="mb-0">히빱</h6>
				                  <small class="text-muted">2023-11-22</small>
				                </div>
				                <p class="mb-2">유튜브 크리에이터 대상 수상</p>
				                
				              </div>
				            </li>
				            <li class="timeline-item timeline-item-transparent">
				              <span class="timeline-point-wrapper">
				              	<span class="timeline-point timeline-point-success">
				              	</span></span>
				              <div class="timeline-event">
				                <div class="timeline-header mb-1">
				                  <h6 class="mb-0">유튜브 채널 2</h6>
				                  <small class="text-muted">2023-10-01</small>
				                </div>
				                <p class="mb-0">채널 가입일</p>
				              </div>
				            </li>
				            <li class="timeline-end-indicator">
				              <i class="bx bx-check-circle"></i>
				            </li>
				          </ul>
				        </div>
				      </div>
				      <!-- /Activity Timeline -->
					</div>
				   	<!-- 채널 데이터 영역 -->
				   	<!-- Line Area Chart -->
					<div class="tab-pane fade" id="form-tabs-second" role="tabpanel">
					   <div class="col-12 mb-4" >
					     <div class="card">
					       <div class="card-header d-flex justify-content-between">
					         <div>
					           <h5 class="card-title mb-0">일별 구독자 수</h5>
					           <small class="text-muted">구독자 성장세 확인</small>
					         </div>
					         <!-- 쓸 수도 있을 것 같아서 일단 남겨둠
					         <div class="dropdown">
					           <button
					             type="button"
					             class="btn dropdown-toggle px-0"
					             data-bs-toggle="dropdown"
					             aria-expanded="false">
					             <i class="bx bx-calendar"></i>
					           </button>
					           <ul class="dropdown-menu dropdown-menu-end">
					             <li>
					               <a href="javascript:void(0);" class="dropdown-item d-flex align-items-center">Today</a>
					             </li>
					             <li>
					               <a href="javascript:void(0);" class="dropdown-item d-flex align-items-center">Yesterday</a>
					             </li>
					             <li>
					               <a href="javascript:void(0);" class="dropdown-item d-flex align-items-center"
					                 >Last 7 Days</a
					               >
					             </li>
					             <li>
					               <a href="javascript:void(0);" class="dropdown-item d-flex align-items-center"
					                 >Last 30 Days</a
					               >
					             </li>
					             <li>
					               <hr class="dropdown-divider" />
					             </li>
					             <li>
					               <a href="javascript:void(0);" class="dropdown-item d-flex align-items-center"
					                 >Current Month</a
					               >
					             </li>
					             <li>
					               <a href="javascript:void(0);" class="dropdown-item d-flex align-items-center">Last Month</a>
					             </li>
					           </ul>
					         </div>
					          달력 드롭다운 영역--> 
					       </div>
					       <div class="card-body">
					         <div id="lineAreaChart"></div>
					       </div>
					     </div>
					   </div>
					   <!-- /Line Area Chart -->
					
					   <!-- Line Chart -->
					   <div class="col-12 mb-4">
					     <div class="card">
					       <div class="card-header d-flex justify-content-between">
					         <div>
					           <h5 class="card-title mb-0">일일 조회수 추이</h5>
					           <small class="text-muted">조회수 변동값 체크를 통해 알고리즘 상태와 채널 성장도 체크</small>
					         </div>
					         <!-- 
					         <div class="d-sm-flex d-none align-items-center">
					           <h5 class="mb-0 me-3">$ 100,000</h5>
					           <span class="badge bg-label-secondary">
					             <i class="bx bx-down-arrow-alt bx-xs text-danger"></i>
					             <span class="align-middle">20%</span>
					           </span>
					         </div>
					          -->
					       </div>
					       <div class="card-body">
					         <div id="lineChart"></div>
					       </div>
					     </div>
					   </div>
					   <!-- /Line Chart -->
					</div>
                  </div>
                  
                </div>
                <!--/ User Content -->
              </div>

            </div>
            <!-- / Content -->

            <!-- Footer -->
            <footer class="content-footer footer bg-footer-theme">
              <div class="container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">
                <div class="mb-2 mb-md-0">
                  Â©
                  <script>
                    document.write(new Date().getFullYear());
                  </script>
                  , made with â¤ï¸ by
                  <a href="https://themeselection.com" target="_blank" class="footer-link fw-medium">ThemeSelection</a>
                </div>
                <div class="d-none d-lg-inline-block">
                  <a href="https://themeselection.com/license/" class="footer-link me-4" target="_blank">License</a>
                  <a href="https://themeselection.com/" target="_blank" class="footer-link me-4">More Themes</a>

                  <a
                    href="https://demos.themeselection.com/sneat-bootstrap-html-admin-template/documentation/"
                    target="_blank"
                    class="footer-link"
                    >Documentation</a
                  >

                  <a
                    href="https://themeselection.com/support/"
                    target="_blank"
                    class="footer-link d-none d-sm-inline-block"
                    >Support</a
                  >
                </div>
              </div>
            </footer>
            <!-- / Footer -->

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
    <script src="../../assets/vendor/libs/moment/moment.js"></script>
    <script src="../../assets/vendor/libs/datatables-bs5/datatables-bootstrap5.js"></script>
    <script src="../../assets/vendor/libs/sweetalert2/sweetalert2.js"></script>
    <script src="../../assets/vendor/libs/cleavejs/cleave.js"></script>
    <script src="../../assets/vendor/libs/cleavejs/cleave-phone.js"></script>
    <script src="../../assets/vendor/libs/select2/select2.js"></script>
    <script src="../../assets/vendor/libs/@form-validation/umd/bundle/popular.min.js"></script>
    <script src="../../assets/vendor/libs/@form-validation/umd/plugin-bootstrap5/index.min.js"></script>
    <script src="../../assets/vendor/libs/@form-validation/umd/plugin-auto-focus/index.min.js"></script>
    <script src="../../assets/vendor/libs/apex-charts/apexcharts.js"></script>

    <!-- Main JS -->
    <script src="../../assets/js/main.js"></script>

    <!-- Page JS -->
<!--     <script src="../../assets/js/modal-edit-user.js"></script>
    <script src="../../assets/js/app-user-view.js"></script>
    <script src="../../assets/js/app-user-view-account.js"></script> -->
    
    
    <script>
    /**
     * Charts Apex
     */

    'use strict';

    (function () {
      let cardColor, headingColor, labelColor, borderColor, legendColor;

      if (isDarkStyle) {
        cardColor = config.colors_dark.cardColor;
        headingColor = config.colors_dark.headingColor;
        labelColor = config.colors_dark.textMuted;
        legendColor = config.colors_dark.bodyColor;
        borderColor = config.colors_dark.borderColor;
      } else {
        cardColor = config.colors.cardColor;
        headingColor = config.colors.headingColor;
        labelColor = config.colors.textMuted;
        legendColor = config.colors.bodyColor;
        borderColor = config.colors.borderColor;
      }

      // Color constant
      const chartColors = {
        column: {
          series1: '#826af9',
          series2: '#d2b0ff',
          bg: '#f8d3ff'
        },
        donut: {
          series1: '#fee802',
          series2: '#3fd0bd',
          series3: '#826bf8',
          series4: '#2b9bf4'
        },
        area: {
          series1: '#29dac7',
          series2: '#60f2ca',
          series3: '#a5f8cd'
        }
      };

      // Heat chart data generator
     /*  function generateDataHeat(count, yrange) {
        let i = 0;
        let series = [];
        while (i < count) {
          let x = 'w' + (i + 1).toString();
          let y = Math.floor(Math.random() * (yrange.max - yrange.min + 1)) + yrange.min;

          series.push({
            x: x,
            y: y
          });
          i++;
        }
        return series;
      } */

      // Line Area Chart
      // --------------------------------------------------------------------
      const areaChartEl = document.querySelector('#lineAreaChart'),
        areaChartConfig = {
          chart: {
            height: 500,
            type: 'area',
            parentHeightOffset: 0,
            toolbar: {
              show: true
            }
          },
          dataLabels: {
            enabled: false
          },
          stroke: {
            show: false,
            curve: 'straight'
          },
          legend: {
            show: true,
            position: 'top',
            horizontalAlign: 'start',
            labels: {
              colors: legendColor,
              useSeriesColors: false
            }
          },
          grid: {
            borderColor: borderColor,
            xaxis: {
              lines: {
                show: true
              }
            }
          },
          colors: ['#3498db', '#e74c3c', '#2ecc71'],
          series: [
            {
              name: '총 조회 수',
              data: [100, 120, 90, 170, 130, 160, 140, 240, 220, 180, 270, 280, 250]
            },
            {
              name: '컨텐츠 수',
              data: [60, 80, 70, 110, 80, 100, 90, 180, 160, 140, 200, 220, 275]
            },
            {
              name: '구독자 수',
              data: [20, 40, 30, 70, 40, 60, 50, 140, 120, 100, 140, 180, 220]
            }
          ],
          xaxis: {
            categories: [
              '7/12',
              '8/12',
              '9/12',
              '10/12',
              '11/12',
              '12/12',
              '13/12',
              '14/12',
              '15/12',
              '16/12',
              '17/12',
              '18/12',
              '19/12',
              '20/12'
            ],
            axisBorder: {
              show: false
            },
            axisTicks: {
              show: false
            },
            labels: {
              style: {
                colors: labelColor,
                fontSize: '13px'
              }
            }
          },
          yaxis: {
            labels: {
              style: {
                colors: labelColor,
                fontSize: '13px'
              }
            }
          },
          fill: {
            opacity: 1,
            type: 'gradient'
          },
          tooltip: {
            shared: false
          }
        };
      if (typeof areaChartEl !== undefined && areaChartEl !== null) {
        const areaChart = new ApexCharts(areaChartEl, areaChartConfig);
        areaChart.render();
      }

      /* // Bar Chart
      // --------------------------------------------------------------------
      const barChartEl = document.querySelector('#barChart'),
        barChartConfig = {
          chart: {
            height: 400,
            type: 'bar',
            stacked: true,
            parentHeightOffset: 0,
            toolbar: {
              show: false
            }
          },
          plotOptions: {
            bar: {
              columnWidth: '15%',
              colors: {
                backgroundBarColors: [
                  chartColors.column.bg,
                  chartColors.column.bg,
                  chartColors.column.bg,
                  chartColors.column.bg,
                  chartColors.column.bg
                ],
                backgroundBarRadius: 10
              }
            }
          },
          dataLabels: {
            enabled: false
          },
          legend: {
            show: true,
            position: 'top',
            horizontalAlign: 'start',
            labels: {
              colors: legendColor,
              useSeriesColors: false
            }
          },
          colors: [chartColors.column.series1, chartColors.column.series2],
          stroke: {
            show: true,
            colors: ['transparent']
          },
          grid: {
            borderColor: borderColor,
            xaxis: {
              lines: {
                show: true
              }
            }
          },
          series: [
            {
              name: 'Apple',
              data: [90, 120, 55, 100, 80, 125, 175, 70, 88, 180]
            },
            {
              name: 'Samsung',
              data: [85, 100, 30, 40, 95, 90, 30, 110, 62, 20]
            }
          ],
          xaxis: {
            categories: ['7/12', '8/12', '9/12', '10/12', '11/12', '12/12', '13/12', '14/12', '15/12', '16/12'],
            axisBorder: {
              show: false
            },
            axisTicks: {
              show: false
            },
            labels: {
              style: {
                colors: labelColor,
                fontSize: '13px'
              }
            }
          },
          yaxis: {
            labels: {
              style: {
                colors: labelColor,
                fontSize: '13px'
              }
            }
          },
          fill: {
            opacity: 1
          }
        };
      if (typeof barChartEl !== undefined && barChartEl !== null) {
        const barChart = new ApexCharts(barChartEl, barChartConfig);
        barChart.render();
      } */

    

      // Line Chart
      // --------------------------------------------------------------------
      const lineChartEl = document.querySelector('#lineChart'),
        lineChartConfig = {
          chart: {
            height: 400,
            type: 'line',
            parentHeightOffset: 0,
            zoom: {
              enabled: false
            },
            toolbar: {
              show: false
            }
          },
          series: [
            {
              data: [280, 200, 220, 180, 270, 250, 70, 90, 200, 150, 160, 100, 150, 100, 50]
            }
          ],
          markers: {
            strokeWidth: 7,
            strokeOpacity: 1,
            strokeColors: [cardColor],
            colors: [config.colors.warning]
          },
          dataLabels: {
            enabled: false
          },
          stroke: {
            curve: 'straight'
          },
          colors: [config.colors.warning],
          grid: {
            borderColor: borderColor,
            xaxis: {
              lines: {
                show: true
              }
            },
            padding: {
              top: -20
            }
          },
          tooltip: {
            custom: function ({ series, seriesIndex, dataPointIndex, w }) {
              return '<div class="px-3 py-2">' + '<span>' + series[seriesIndex][dataPointIndex] + '%</span>' + '</div>';
            }
          },
          xaxis: {
            categories: [
              '7/12',
              '8/12',
              '9/12',
              '10/12',
              '11/12',
              '12/12',
              '13/12',
              '14/12',
              '15/12',
              '16/12',
              '17/12',
              '18/12',
              '19/12',
              '20/12',
              '21/12'
            ],
            axisBorder: {
              show: false
            },
            axisTicks: {
              show: false
            },
            labels: {
              style: {
                colors: labelColor,
                fontSize: '13px'
              }
            }
          },
          yaxis: {
            labels: {
              style: {
                colors: labelColor,
                fontSize: '13px'
              }
            }
          }
        };
      if (typeof lineChartEl !== undefined && lineChartEl !== null) {
        const lineChart = new ApexCharts(lineChartEl, lineChartConfig);
        lineChart.render();
      }

    })();
    </script>
  </body>
</html>
