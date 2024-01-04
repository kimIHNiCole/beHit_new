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
    <title>BeHit</title>

    <meta name="description" content="" />

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
    <link rel="stylesheet" href="../../assets/vendor/libs/datatables-checkboxes-jquery/datatables.checkboxes.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/animate-css/animate.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/sweetalert2/sweetalert2.css" />

    <!-- Page CSS -->
    <link rel="stylesheet" href="../../assets/vendor/css/pages/page-profile.css" />

    <!-- Helpers -->
    <script src="../../assets/vendor/js/helpers.js"></script>
    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Template customizer: To hide customizer set displayCustomizer value false in config.js.  -->
     <script src="../../assets/vendor/js/template-customizer.js"></script>
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="../../assets/js/config.js"></script>
    
    <style>
    .homePosition{
    font-size: 12px;
    }
    
    img.rounded-top{
	height: 95px;
    }
    .bx.bxl-youtube{
    margin-right: 15px;
    }
    .homeCate{
    font-size: 11px;
    }
    .text-muted.text-uppercase.homeO{
    font-size: 20px;
    }
    .todayWork{
    text-align: center;
    font-size: 15px;
    margin-top: 30px;
    margin-bottom: 0px;
    }
    .todayWorkTime{
    text-align: center;
    font-size: 30px;
    margin-top: -5px;
    }
    .card-header.plus{
    margin-top: 10px;
    font-size: 13px;
    }
    </style>
  </head>


  <body>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
      <!-- 여기서부터 붙여넣기 -->
      
        <!-- Menu -->
        <jsp:include page="/views/header_menu.jsp" />
        <!-- / Menu -->

        <!-- Layout container -->
        <div class="layout-page">
          <!-- Navbar -->
<jsp:include page="/views/header_navbar.jsp" />

          <!-- / Navbar -->
          
          <!-- 여기까지 붙여넣기 -->

          <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
              <!-- Header -->
              <div class="row">
                <div class="col-12">
                  <div class="card mb-4">
                    <div class="user-profile-header-banner">
                      <img src="../../assets/img/pages/profile-banner.png" alt="Banner image" class="rounded-top" />
                    </div>
                    <div class="user-profile-header d-flex flex-column flex-sm-row text-sm-start text-center mb-4">
                      <div class="flex-shrink-0 mt-n2 mx-sm-0 mx-auto">
                        <img
                          src="../../assets/img/avatars/1.png"
                          alt="user image"
                          class="d-block h-auto ms-0 ms-sm-4 rounded user-profile-img" />
                      </div>
                      <div class="flex-grow-1 mt-3 mt-sm-5">
                        <div
                          class="d-flex align-items-md-end align-items-sm-start align-items-center justify-content-md-between justify-content-start mx-4 flex-md-row flex-column gap-4">
                          <div class="user-profile-info">
                            <h4>한가인  <span class='homePosition'>/ 대리</span></h4>
                            <ul
                              class="list-inline mb-0 d-flex align-items-center flex-wrap justify-content-sm-start justify-content-center gap-2">
                              <li class="list-inline-item fw-medium"><i class="bx bx-map"></i></i> 매니지먼트팀</li>
                              <li class="list-inline-item fw-medium"><i class='bx bx-ghost'></i></i> 팀원</li>
                              <li class="list-inline-item fw-medium"><i class='bx bxs-time' ></i> 사용 연차 : 66시간</li>
                              <li class="list-inline-item fw-medium"><i class='bx bx-time-five' ></i> 잔여 연차 : 12시간</li>
                            </ul>
                          </div>
                          <a href="../profile/profiledetail" class="btn btn-primary text-nowrap">
                            <i class="bx bx-user-check me-1"></i>내 정보 보기
                          </a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!--/ Header -->

              

              <!-- User Profile Content -->
              <div class="row">
                <div class="col-xl-4 col-lg-5 col-md-5">
                  <!-- About User -->
                  <div class="card mb-4">
                    <div class="card-body">
                      <small class="text-muted text-uppercase homeO">근태관리</small>                      
                      <hr/>
                      <div class="container">
					    <small class="text-muted text-uppercase moreS" id="currentDateTime">오늘 날짜</small>
					  </div>
                      <div>
	                      <div>
	                      	<p class="todayWork">오늘의 출퇴근 시간</p>
	                      	<p class="todayWorkTime">09:00 ~ 18:00</p>
	                      </div>
                      </div>
                      <br/>
                      <ul class="list-unstyled mb-4 mt-3">
                        <li class="d-flex align-items-center mb-3">
                          <i class='bx bx-timer' ></i><span class="fw-medium mx-2">출근 시간:</span>
                          <span>09:34</span>
                        </li>
                        <li class="d-flex align-items-center mb-3">
                         <i class='bx bxs-timer' ></i><span class="fw-medium mx-2">퇴근 시간:</span> <span>18:30</span>
                        </li>
                        
                      </ul>

                      <div class="row">
				        <div class="col-md-6">
				            <button type="button" class="btn btn-success" id="type-success">출근하기</button>
				        </div>
				        <div class="col-md-6 text-end">
				            <button type="button" class="btn btn-warning" id="confirm-text">퇴근하기</button>
				        </div>
				    </div>
                    </div>
                  </div>
                  <!--/ About User -->
                  <!-- Profile Overview -->
                  <div class="card mb-4">
                    <div class="card-body">
                      <small class="text-muted text-uppercase">주간 날씨</small>
                      <hr/>
                      <div>날씨 api 위치
                      </div>
                    </div>
                  </div>
                  <!--/ Profile Overview -->
                </div>
                <!-- 급상승 유튜버 영역 -->
	                <div class="col-xl-8 col-lg-7 col-md-7">
	                  <!-- Activity Timeline -->
	                  <div class="card card-action mb-4">
	                    <div class="card-header align-items-center">
	                      <h5 class="card-action-title mb-0"><i class='bx bxl-youtube' ></i>급상승 유튜버</h5>
	                    </div>
	                    <!-- Basic Bootstrap Table -->
	              <div class="card">
	                <div class="table-responsive text-nowrap">
	                  <table class="table">
	                    <thead>
	                      <tr>
	                      	<th>순위</th>
	                        <th>썸네일</th>
	                        <th>채널 이름/분야</th>
	                        <th>구독자수</th>
	                        <th>구독자 급상승 수</th>
	                        <th>일일 조회수</th>
	                      </tr>
	                    </thead>
	                    <tbody class="table-border-bottom-0">
	                      <tr>
	                        <td>1</td>
	                        <td>
	                        <div class="avatar avatar-lg me-2">
	                        <img src="../../assets/img/avatars/1.png" alt="Avatar" class="rounded-circle">
	                        </div>
	                        </td>
	                        <td>
	                          <span class="fw-medium">가인은 가인가인</span>
	                          <div><span class="badge bg-label-primary me-1">#일상</span></div>
	                        </td>
	                        <td><span>41222</span></td>
	                        <td>
	                         <span>223</span>
	                        </td>
	                        <td>
	                         <span>1542843</span>
	                        </td>
	                      </tr>
	                      <tr>
	                        <td>2</td>
	                        <td>
	                        <div class="avatar avatar-lg me-2">
	                        <img src="../../assets/img/avatars/1.png" alt="Avatar" class="rounded-circle">
	                        </div>
	                        </td>
	                        <td>
	                          <span class="fw-medium">금요일은 반차 쓰고 싶다</span>
	                          <div><span class="badge bg-label-primary me-1">#회사생활</span></div>
	                        </td>
	                        <td><span>41222</span></td>
	                        <td>
	                         <span>223</span>
	                        </td>
	                        <td>
	                         <span>1542843</span>
	                        </td>
	                      </tr>
	                      <tr>
	                        <td>3</td>
	                        <td>
	                        <div class="avatar avatar-lg me-2">
	                        <img src="../../assets/img/avatars/1.png" alt="Avatar" class="rounded-circle">
	                        </div>
	                        </td>
	                        <td>
	                          <span class="fw-medium">놀토</span>
	                          <div><span class="badge bg-label-primary me-1">#예능</span></div>
	                        </td>
	                        <td><span>41222</span></td>
	                        <td>
	                         <span>223</span>
	                        </td>
	                        <td>
	                         <span>1542843</span>
	                        </td>
	                      </tr>
	                      <tr>
	                        <td>4</td>
	                        <td>
	                        <div class="avatar avatar-lg me-2">
	                        <img src="../../assets/img/avatars/1.png" alt="Avatar" class="rounded-circle">
	                        </div>
	                        </td>
	                        <td>
	                          <span class="fw-medium">모름</span>
	                          <div><span class="badge bg-label-primary me-1">#모름</span></div>
	                        </td>
	                        <td><span>41222</span></td>
	                        <td>
	                         <span>223</span>
	                        </td>
	                        <td>
	                         <span>1542843</span>
	                        </td>
	                      </tr>
	                      <tr>
	                        <td>5</td>
	                        <td>
	                        <div class="avatar avatar-lg me-2">
	                        <img src="../../assets/img/avatars/1.png" alt="Avatar" class="rounded-circle">
	                        </div>
	                        </td>
	                        <td>
	                          <span class="fw-medium">모름</span>
	                          <div><span class="badge bg-label-primary me-1">#모름</span></div>
	                        </td>
	                        <td><span>41222</span></td>
	                        <td>
	                         <span>223</span>
	                        </td>
	                        <td>
	                         <span>1542843</span>
	                        </td>
	                      </tr>
	                    </tbody>
	                  </table>
	                </div>
	              </div>
                  </div>
                  <!--/ 급상승 유튜버 -->
                  <!-- Projects table -->
                  <div class="card mb-4">
                    <div class="row">
				        <div class="col-md-6">
				            <h5 class="card-header">전자결재(상신한 결재)</h5>
				        </div>
				        <div class="col-md-6 text-end">
				            <h5 class="card-header plus">+더보기</h5>
				        </div>
				    </div>
                    <div class="table-responsive mb-3">
                      <table class="table datatable-project">
                        <thead class="table-light">
                          <tr>
                            <th>문서 제목</th>
                            <th>상신일</th>
                            <th class="text-nowrap">마지막 결재일</th>
                            <th>현 결재자</th>
                          </tr>
                        </thead>
                        <tbody>
                        	<tr>
                        		<td>카메라 대량 구입의 건</td>
                        		<td>2023.12.21</td>
                        		<td>2023.12.23</td>
                        		<td>이지훈</td>
                        	</tr>
                        </tbody>
                      </table>
                    </div>
                  </div>
                  <!--/ Projects table -->
                  <!-- Projects table -->
                  <div class="card mb-4">
                    <div class="row">
				        <div class="col-md-6">
				            <h5 class="card-header">프로젝트(마감임박)</h5>
				        </div>
				        <div class="col-md-6 text-end">
				            <h5 class="card-header plus">+더보기</h5>
				        </div>
				    </div>
                    <div class="table-responsive mb-3">
                      <table class="table datatable-project">
                        <thead class="table-light">
                          <tr>
                            <th>시작일</th>
                            <th>종료일</th>
                            <th>프로젝트명</th>                          
                          </tr>
                        </thead>
                        <tbody>
                        	<tr>
                        		<td>2023.12.21</td>
                        		<td>2023.12.23</td>
                        		<td>소속 유튜버 합방 스케줄</td>
                        	</tr>
                        </tbody>
                     
                      </table>
                    </div>
                  </div>
                  <!--/ Projects table -->
                </div>
              </div>
              <!--/ User Profile Content -->
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
    <script src="../../assets/vendor/libs/datatables-bs5/datatables-bootstrap5.js"></script>

    <!-- Main JS -->
    <script src="../../assets/js/main.js"></script>
    
    <!-- 시간 반영 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-oGNHuvKMC5LEHibI2NCAp8CKO98iz+cbJP5r9XtZADn1I2QFsgJj8peNrtQ8iS9Z" crossorigin="anonymous"></script>


	<!-- Page JS -->
<!--     <script src="../../assets/js/extended-ui-sweetalert2.js"></script> -->
    <!-- Vendors JS -->
    <script src="../../assets/vendor/libs/sweetalert2/sweetalert2.js"></script>   

    <!-- Page JS -->
<!--      <script src="../../assets/js/app-user-view-account.js"></script> -->
<!-- 페이징 필요 없는 리스트 뿌리기라 js 빼버림  -->    

<!-- Header JS -->
    <script src="../../assets/js/header.js"></script> 
     

  </body>
<script>
/**
 * Sweet Alerts 스크립트
 */
 
/*  var msg = "${msg}";
	if(msg != ""){
		alert(msg);
	} */

	  
	var successMsg = "${successMsg}";
	if(successMsg != ""){
		Swal.fire({
			/*         title: 'Good job!', */
			        text: successMsg,
			        icon: 'success',
			        customClass: {
			          confirmButton: 'btn btn-primary'
			        },
			        buttonsStyling: false
			      });
	}
	
	var warningMsg = "${warningMsg}";
	if(msg != ""){
		Swal.fire({
	        text: warningMsg,
	        icon: 'warning',
	        customClass: {
	          confirmButton: 'btn btn-primary'
	        },
	        buttonsStyling: false
	      });
	}
	
	var confirmMsg = "${confirmMsg}";
	if(confirmMsg != ""){
		Swal.fire({
			/*         title: 'Are you sure?', */
			        text: confirmMsg,
			        icon: 'warning',
			        showCancelButton: true,
			        confirmButtonText: 'OK',
			        customClass: {
			          confirmButton: 'btn btn-primary me-3',
			          cancelButton: 'btn btn-label-secondary'
			        },
			        buttonsStyling: false
			      }).then(function (result) {
			        if (result.value) {
			          Swal.fire({
			            icon: 'success',
			/*             title: 'Deleted!', */
			            text: '삭제되었습니다.',
			            customClass: {
			              confirmButton: 'btn btn-success'
			            }
			          });
			        }
			      });
	}

	
	
</script>
<script>

 'use strict';

(function () {
  const 
    iconSuccess = document.querySelector('#type-success'),
    iconWarning = document.querySelector('#type-warning'),
    confirmText = document.querySelector('#confirm-text');


  // Alert Types
  // --------------------------------------------------------------------

  // Success Alert
  if (iconSuccess) {
    iconSuccess.onclick = function () {
      Swal.fire({
/*         title: 'Good job!', */
        text: '저장이 완료되었습니다!',
        icon: 'success',
        customClass: {
          confirmButton: 'btn btn-primary'
        },
        buttonsStyling: false
      });
    };
  }


  // Warning Alert
  if (iconWarning) {
    iconWarning.onclick = function () {
      Swal.fire({
        title: 'Warning!',
        text: ' You clicked the button!',
        icon: 'warning',
        customClass: {
          confirmButton: 'btn btn-primary'
        },
        buttonsStyling: false
      });
    };
  }


  // Alert With Functional Confirm Button
  if (confirmText) {
    confirmText.onclick = function () {
      Swal.fire({
/*         title: 'Are you sure?', */
        text: "정말 삭제하시겠습니까?",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonText: 'OK',
        customClass: {
          confirmButton: 'btn btn-primary me-3',
          cancelButton: 'btn btn-label-secondary'
        },
        buttonsStyling: false
      }).then(function (result) {
        if (result.value) {
          Swal.fire({
            icon: 'success',
/*             title: 'Deleted!', */
            text: '삭제되었습니다.',
            customClass: {
              confirmButton: 'btn btn-success'
            }
          });
        }
      });
    };
  }
})();


</script>
  
<script>
     document.addEventListener("DOMContentLoaded", function () {
         // 초 단위로 실시간으로 업데이트
         setInterval(updateCurrentDateTime, 1000);

         // 초기 로딩 시 한번 업데이트
         updateCurrentDateTime();
     });

     function updateCurrentDateTime() {
         var currentDate = new Date();
         var options = {
             year: 'numeric',
             month: 'long',
             day: 'numeric',
             weekday: 'long',
             hour: 'numeric',
             minute: 'numeric',
             second: 'numeric',
             timeZone: 'Asia/Seoul'
         };
         var formattedDateTime = currentDate.toLocaleString('ko-KR', options);

         // 현재 날짜와 시간을 업데이트
         document.getElementById('currentDateTime').textContent = formattedDateTime;
     }
     
     </script>
</html>
