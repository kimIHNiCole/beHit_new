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
    
    /*내가추가*/
    /* #todoopenModal {
	    position: absolute;
	    top: 180px;
	    left: 0;
	    z-index: -1;
	    display: block;
	    width: 42px;
	    height: 42px;
	    border-top-left-radius: 15%;
	    border-bottom-left-radius: 15%;
	    background: var(--bs-primary);
	    color: #fff !important;
	    text-align: center;
	    font-size: 18px !important;
	    line-height: 42px;
	    opacity: 1;
	    -webkit-transition: all 0.1s linear 0.2s;
	    -o-transition: all 0.1s linear 0.2s;
	    transition: all 0.1s linear 0.2s;
	    -webkit-transform: translateX(-62px);
	    -ms-transform: translateX(-62px);
	    transform: translateX(-62px);
	    cursor: pointer;
	}
	
	#todoopenModal::before {
	    content: "";
	    width: 22px;
	    height: 22px;
	    display: block;
	    background-size: 100% 100%;
	    position: absolute;
	    background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAAXNSR0IArs4c6QAABClJREFUaEPtmY1RFEEQhbsjUCIQIhAiUCNQIxAiECIQIxAiECIAIpAMhAiECIQI2vquZqnZvp6fhb3SK5mqq6Ju92b69bzXf6is+dI1t1+eAfztG5z1BsxsU0S+ici2iPB3vm5E5EpEDlSVv2dZswFIxv8UkZcNy+5EZGcuEHMCOBeR951uvVDVD53vVl+bE8DvDu8Pxtyo6ta/BsByg1R15Bwzqz5/LJgn34CZwfnPInI4BUB6/1hV0cSjVxcAM4PbcBZjL0XklIPN7Is3fLCkdQPpPYw/VNXj5IhPIvJWRIhSl6p60ULWBGBm30Vk123EwRxCuIzWkkjNrCZywith10ewE1Xdq4GoAjCz/RTXW44Ynt+LyBEfT43kYfbj86J3w5Q32DNcRQDpwF+dkQXDMey8xem0L3TEqB4g3PZWad8agBMRgZPeu96D1/C2Zbh3X0p80Op1xxloztN48bMQQNoc7+eLEuAoPSPiIDY4Ooo+E6ixeNXM+D3GERz2U3CIqMstLJUgJQDe+7eq6mub0NYEkLAKwEHkiBQDCZtddZCZ8d6r7JDwFkoARklHRPZUFVDVZWbwGuNrC4EfdOzFrRABh3Wnqhv+d70AEBLGFROPmeHlnM81G69UdSd6IUuM0GgUVn1uqWmg5EmMfBeEyB7Pe3txBkY+rGT8j0J+WXq/BgDkUCaqLgEAnwcRog0veMIqFAAwCy2wnw+bI2GaGboBgF9k5N0o0rUSGUb4eO0BeO9j/GYhkSHMHMTIqwGARX6p6a+nlPBl8kZuXMD9j6pKfF9aZuaFOdJCEL5D4eYb9wCYVCanrBmGyii/tIq+SLj/HQBCaM5bLzwfPqdQ6FpVHyra4IbuVbXaY7dETC2ESPNNWiIOi69CcdgSMXsh4tNSUiklMgwmC0aNd08Y5WAES6HHehM4gu97wyhBgWpgqXsrASglprDy7CwhehMZOSbK6JMSma+Fio1KltCmlBIj7gfZOGx8ppQSXrhzFnOhJ/31BDkjFHRvOd09x0mRBA9SFgxUgHpQg0q0t5ymPMlL+EnldFTfDA0NAmf+OTQ0X0sRouf7NNkYGhrOYNrxtIaGg83MNzVDSe3LXLhP7O/yrCsCz1zlWTpjWkuZAOBpX3yVnLqI1yLCOKU6qMrmP7SSrUEw54XF4WBIK5FxCMOr3lVsfGqNSmPzBXUnJTIX1jyVBq9wO6UObOpgC5GjO98vFKnTdQMZXxEsWZlDiCZMIxAbNxQOqlpVZtobejBaZNoBnRDzMFpkxvTQOD36BlrcySZuI6p1ACB6LU3wWuf5581+oHfD1vi89bz3nFUC8Nm7ZlP3nKkFbM4bWPt/MSFwklprYItwt6cmvpWJ2IVcQBCz6bLysSCv3SaANCiTsnaNRrNRqMXVVT1/BrAqz/buu/Y38Ad3KC5PARej0QAAAABJRU5ErkJggg==);
	    margin: 10px;
	}
	
	#todoListModal {
	    position: fixed;
	    top: 170px;
	    right: 50px;
	    bottom: 0;
	    left: auto;
	    z-index: 2000;
	} */
	/*여기까지은호추가*/
	/* 여기는 내가 추가 */
	table {

        text-align: center; /* 테이블 안의 텍스트를 가운데 정렬합니다. */
    }
    tr:hover {
        background-color: #f5f5f5;
        cursor: pointer;
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
                        <c:choose>
						    <c:when test="${not empty photo and not empty photo.new_file_name}">
						        <img src="/file/employee/${photo.new_file_name}" alt="${photo.ori_file_name}" 
						            class="d-block h-auto ms-0 ms-sm-4 rounded user-profile-img" />
						    </c:when>
						    <c:otherwise>
						        <img src="../../assets/img/avatars/1.png" alt="user image" 
						            class="d-block h-auto ms-0 ms-sm-4 rounded user-profile-img" />
						    </c:otherwise>
						</c:choose>
                      </div>
                      <div class="flex-grow-1 mt-3 mt-sm-5">
                        <div
                          class="d-flex align-items-md-end align-items-sm-start align-items-center justify-content-md-between justify-content-start mx-4 flex-md-row flex-column gap-4">
                          <div class="user-profile-info">
                            <h4>${dashProfile.emp_name}  <span class='homePosition'>/ ${dashProfile.grade_name}</span></h4>
                            <ul
                              class="list-inline mb-0 d-flex align-items-center flex-wrap justify-content-sm-start justify-content-center gap-2">
                              <li class="list-inline-item fw-medium"><i class="bx bx-map"></i></i> ${dashProfile.dept_name}</li>
                              <li class="list-inline-item fw-medium"><i class='bx bx-ghost'></i></i> ${dashProfile.position_name}</li>
                              <li class="list-inline-item fw-medium"><i class='bx bxs-time' ></i> 사용 연차 : ${dashvaca.usehour}시간</li>
                              <li class="list-inline-item fw-medium"><i class='bx bx-time-five' ></i> 잔여 연차 : ${dashvaca.remainhour}시간</li>
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
				            <p class="todayWorkTime">
				                <span id="workStartTime">${workToday.work_start_time}</span> ~ 
				                <span id="workEndTime">${workToday.work_end_time}</span>
				            </p>
	                      </div>
                      </div>
                      <br/>
                      <ul class="list-unstyled mb-4 mt-3">
                        <li class="d-flex align-items-center mb-3">
						<i class='bx bx-timer'></i><span class="fw-medium mx-2">출근 시간:</span>
						<c:choose>
						    <c:when test="${empty workToday.work_started}">
						        <span id="work_started">-- : --</span>
						    </c:when>
						    <c:otherwise>
						        <span id="work_started">${workToday.work_started}</span>
						    </c:otherwise>
						</c:choose>
						</li>
                        <li class="d-flex align-items-center mb-3">
                         <i class='bx bxs-timer' ></i><span class="fw-medium mx-2">퇴근 시간:</span>
                         <c:choose>
						    <c:when test="${empty workToday.work_ended}">
						        <span id="work_ended">-- : --</span>
						    </c:when>
						    <c:otherwise>
						        <span id="work_ended">${workToday.work_ended}</span>
						    </c:otherwise>
						</c:choose>
                        </li>
                        
                      </ul>

                      <div class="row">
				        <div class="col-md-6">
				            <button type="button" class="btn btn-success" id="workStart">출근하기</button>
				        </div>
				        <div class="col-md-6 text-end">
				            <button type="button" class="btn btn-warning" id="workEnd">퇴근하기</button>
				        </div>
				    </div>
                    </div>
                  </div>
                  <!--/ About User -->
                  <!-- Profile Overview -->
                  <!-- <div class="card mb-4">
                    <div class="card-body">
                      <small class="text-muted text-uppercase">주간 날씨</small>
                      <hr/>
                      <div>날씨 api 위치
                      </div>
                    </div>
                  </div> -->
                  <!--/ Profile Overview -->
                </div>
                <!-- 급상승 유튜버 영역 -->
	                <div class="col-xl-8 col-lg-7 col-md-7">
	                  <!-- Activity Timeline -->
	                  <div class="card card-action mb-4">
	                    <div class="card-header align-items-center">
	                      <h5 class="card-action-title mb-0"><i class='bx bxl-youtube' ></i>인기 영상 리스트</h5>
	                    </div>
	                    <!-- Basic Bootstrap Table -->
	              <div class="card">
	                <div class="table-responsive text-nowrap">
	                  <table class="table">
	                    <thead>
	                      <tr>
	                      	<th>썸네일</th>
	                        <th>제목/채널명</th>
	                        <th>조회수</th>
	                        <th>좋아요</th>
	                        <th>업로드 날짜</th>
	                      </tr>
	                    </thead>
	                    <tbody class="table-border-bottom-0">
	                    <c:forEach var="currentVideo" items="${currentVideoList}" >
	                      <tr onclick="window.open('https://www.youtube.com/watch?v=${currentVideo.videoId}', '_blank', 'width=800,height=600'); return false;">
	                        <td>
	                          <div>
                        	  <img src="${currentVideo.thumbnailUrl}" alt="channel_thumbnail" class="rounded">
	                          </div>
	                        </td>
	                        <td>
		                          <span class="fw-medium videoTitle">${currentVideo.videoTitle}</span>
	                          <div><span class="badge bg-label-dark me-1">${currentVideo.channelName}</span></div>
	                        </td>
	                        <td>
	                          <span>${currentVideo.views} 회</span>
	                        </td>
	                        <td>
	                          <span>${currentVideo.likes} 개</span>
	                        </td>
	                        <td>
	                          <span>${currentVideo.uploadDate}</span>
	                        </td>
	                      </tr>
	                     </c:forEach> 
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
				        <div class="col-md-6 text-end mt-4">
				             <a href="../approval/requestApproval_list.go" class="card-header plus">+더보기</a>
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
					        <c:forEach var="approval" items="${reqAp_list}" varStatus="loop">
					            <c:if test="${loop.index lt 5}">
					                <tr onclick="approvalPageGo(${approval.apv_idx})">

					                    <td>${approval.apv_subject}</td>
					                    <td>${approval.apv_date}</td>
					                    <td>
					                    <c:if test="${not empty approval.apv_history_date}">
					                    ${approval.apv_history_date}</c:if>
					                    <c:if test="${empty approval.apv_history_date}">--</c:if></td>
					                    <td>${approval.emp_name}</td>
					                </tr>
					            </c:if>
					        </c:forEach>
					        <c:if test="${empty reqAp_list}">
						        <tr>
						            <td colspan="4">상신한 문서가 없습니다</td>
						        </tr>
						    </c:if>
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
				        <div class="col-md-6 text-end mt-4">
				             <a href="../project/project_main.go" class="card-header plus">+더보기</a>
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
                        	<c:forEach var="projnow" items="${projnow_list}" varStatus="loop">
					            <c:if test="${loop.index lt 5}">
					                <tr onclick="projPageGo('${projnow.proj_idx}')">
										<td>${projnow.proj_start}</td>
					                    <td>${projnow.proj_end}</td>
					                    <td>${projnow.proj_subject}</td>
					                </tr>
					            </c:if>
					        </c:forEach>
					        <c:if test="${empty projnow_list}">
						        <tr>
						            <td colspan="3">즉시 작업이 필요한 프로젝트가 없습니다</td>
						        </tr>
						    </c:if>
                        </tbody>
                     
                      </table>
                    </div>
                  </div>
                  <jsp:include page="/views/todo_include.jsp" />
                  <!--/ Projects table -->
<!--                   <div id="template-customizer" class="invert-bg-white" style="visibility: visible">
	                  <a id="todoopenModal" ></a>
                  </div>
	              <div id="todoListModal"></div> -->
                </div>
              </div>
              <!--/ User Profile Content -->
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
 /* var videoInfo =  [
	<c:forEach var="currentVideo" items="${currentVideoList}">
    {
        "videoId": "${currentVideo.videoId}",
        "videoTitle": "${currentVideo.videoTitle}",
        "thumbnailUrl": "${currentVideo.thumbnailUrl}",
    }<c:if test="${!loop.last}">,</c:if>
	</c:forEach>
	];  */

/* console.log('currentVideoList = '+ videoInfo); */

// 영상제목의 길이가 n자가 넘어가면 제어
$('.videoTitle').each(function() {
        // 현재 엘리먼트의 텍스트 가져오기
        var titleText = $(this).text();
        
        // 텍스트 길이가 23자 이상인 경우
         if (titleText && titleText.length > 23) {
        // 처음 23자까지만 잘라내고 뒤에 '...'을 붙이기
        var shortenedText = titleText.substring(0, 23) + '...';
        
        
        $(this).text(shortenedText);
    }
    });



// 출퇴근 버튼 스크립트, 출퇴근 시간 view 에 반영
'use strict';



(function () {
  const workStart = document.querySelector('#workStart'),
    workEnd = document.querySelector('#workEnd');




  // 출근 버튼
  if (workStart) {
  workStart.onclick = function () {
  /*  Swal.fire({
      text: '출근 처리되었습니다!',
      icon: 'success',
      customClass: {
        confirmButton: 'btn btn-primary'
      },
      buttonsStyling: false
    }).then(function (result) {*/
      // 출근 처리가 완료된 후에 AJAX 요청을 보냄
      $.ajax({
        type: 'get',
        url: '/workStarted',
        data: {},
        dataType: 'JSON',
        success: function (data) {
          console.log(data);
          if(data.workStarted > 0){
        	  Swal.fire({
        	      text: '출근 처리되었습니다!',
        	      icon: 'success',
        	      customClass: {
        	        confirmButton: 'btn btn-primary'
        	      },
        	      buttonsStyling: false
        	    })
        	// 페이지 이동
              window.location.href = '/home.go';	  
          } else{
        	  Swal.fire({
        	      text: '이미 출근 상태입니다.',
        	      icon: 'error',
        	      customClass: {
        	        confirmButton: 'btn btn-primary'
        	      },
        	      buttonsStyling: false
        	  })
          }
        },
        error: function (e) {
          console.log(e);
        }
      });
  /*  });  */
  };
}

  // 퇴근 버튼
  if (workEnd) {
    workEnd.onclick = function () {
      Swal.fire({
        text: "퇴근하시겠습니까?",
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
        	$.ajax({
                type: 'get',
                url: '/workEnded',
                data: {},
                dataType: 'JSON',
                success: function (data) {
                  console.log(data);
                  if(data.workEnded > 0){
                	  Swal.fire({
                	      text: '퇴근 처리되었습니다!',
                	      icon: 'success',
                	      customClass: {
                	        confirmButton: 'btn btn-primary'
                	      },
                	      buttonsStyling: false
                	    })
                	// 페이지 이동
                      window.location.href = '/home.go';
                  } else{
                	  Swal.fire({
                	      text: '이미 퇴근 상태입니다.',
                	      icon: 'error',
                	      customClass: {
                	        confirmButton: 'btn btn-primary'
                	      },
                	      buttonsStyling: false
                	  })
                  }
                },
                error: function (e) {
                  console.log(e);
                }
              });
        }
      });
    };
  }
})();
</script>
  
<script>
// 근태관리 현재 시간 표시 스크립트
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
     
/* 	$('#todoopenModal').click(function (e) {
		$.get("/todoList.go", function(data) {
			$("#todoListModal").html(data);
		});
	}); */
     </script>
<script>
//페이지 이동 스크립트(전자결재, 프로젝트 등)
function approvalPageGo(apvIdx){   
    // apv_idx 값을 이용하여 페이지 이동
    window.location.href = "/approval/getApproval_detail.go/" + apvIdx;
}
function projPageGo(proj_idx){
	window.location.href = '/project/project_detail.go?proj_idx=' + proj_idx;
}

</script>
</html>
