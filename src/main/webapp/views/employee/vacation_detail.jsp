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

    <!-- Page CSS -->

    <!-- Helpers -->
    <script src="../../assets/vendor/js/helpers.js"></script>
    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Template customizer: To hide customizer set displayCustomizer value false in config.js.  -->
    <script src="../../assets/vendor/js/template-customizer.js"></script>
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="../../assets/js/config.js"></script>
    
    <style>
    .mb-1.red{
    color: #C20000;
    }
    .mb-0{
    font-size: 12px;
    }
    .btn.btn-primary.vaca{
    width: 160px;
    height: 38px;
    margin-left: 150px;
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

            <div class="container-xxl flex-grow-1 container-p-y">
            <h4 class="py-3 mb-4"><span class="text-muted fw-light">${vacadetail.emp_name}님의 상세 연차</span> </h4>

              <!-- 총 기록 -->

              <div class="card mb-4">
                <div class="card-widget-separator-wrapper">
                  <div class="card-body card-widget-separator">
                    <div class="row gy-4 gy-sm-1">
                      <div class="col-sm-6 col-lg-3">
                        <div
                          class="d-flex justify-content-between align-items-start card-widget-1 border-end pb-3 pb-sm-0">
                          <div>
                            <h3 class="mb-1 red">${vacadetail.totalhour}</h3>
                            <p class="mb-0">총 연차</p>
                          </div>
                          <div class="avatar me-sm-4">
                            <span class="text-muted fw-light">시간</span>
                          </div>
                        </div>
                        <hr class="d-none d-sm-block d-lg-none me-4" />
                      </div>
                      <div class="col-sm-6 col-lg-3">
                        <div
                          class="d-flex justify-content-between align-items-start card-widget-2 border-end pb-3 pb-sm-0">
                          <div>
                            <h3 class="mb-1 red">${vacadetail.usehour}</h3>
                            <p class="mb-0">사용 연차</p>
                          </div>
                          <div class="avatar me-lg-4">
                            <span class="text-muted fw-light">시간</span>
                          </div>
                        </div>
                        <hr class="d-none d-sm-block d-lg-none" />
                      </div>
                      <div class="col-sm-6 col-lg-3">
                        <div
                          class="d-flex justify-content-between align-items-start border-end pb-3 pb-sm-0 card-widget-3">
                          <div>
                            <h3 class="mb-1 red">${vacadetail.remainhour}</h3>
                            <p class="mb-0">잔여 연차</p>
                          </div>
                          <div class="avatar me-sm-4">
                            <span class="text-muted fw-light">시간</span>
                          </div>
                        </div>
                        
                      </div>
                      <div class="col-sm-6 col-lg-3">
                        <div class="col-md-4 text-end">
                		    <!-- 직원 등록 버튼 -->
                 		   <button class="btn btn-primary vaca"
	                          data-bs-toggle="modal"
	                          data-bs-target="#modalCenter">연차 조정</button>
            		   </div>
                      </div>
                    </div>
                    </div>
                    
                   </div>
                   
                  </div>
                  
  			<!--연도별 기록 -->

              <div class="card mb-4">
                <div class="card-widget-separator-wrapper">
                  <div class="card-body card-widget-separator">
                    <div class="row gy-4 gy-sm-1">
                      <div class="col-sm-6 col-lg-3">
                        <div
                          class="d-flex justify-content-between align-items-start card-widget-1 border-end pb-3 pb-sm-0">
                          <div>
                            <h3 class="mb-1">${vacadetail.yearhour}</h3>
                            <p class="mb-0">발생 연차</p>
                          </div>
                          <div class="avatar me-sm-4">
                            <span class="text-muted fw-light">시간</span>
                          </div>
                        </div>
                        <hr class="d-none d-sm-block d-lg-none me-4" />
                      </div>
                      <div class="col-sm-6 col-lg-3">
                        <div
                          class="d-flex justify-content-between align-items-start card-widget-2 border-end pb-3 pb-sm-0">
                          <div>
                            <h3 class="mb-1">${vacadetail.monthhour}</h3>
                            <p class="mb-0">발생 월차</p>
                          </div>
                          <div class="avatar me-lg-4">
                            <span class="text-muted fw-light">시간</span>
                          </div>
                        </div>
                        <hr class="d-none d-sm-block d-lg-none" />
                      </div>
                      <div class="col-sm-6 col-lg-3">
                        <div
                          class="d-flex justify-content-between align-items-start border-end pb-3 pb-sm-0 card-widget-3">
                          <div>
                            <h3 class="mb-1">${vacadetail.overhour}</h3>
                            <p class="mb-0">이월 연/월차</p>
                          </div>
                          <div class="avatar me-sm-4">
                            <span class="text-muted fw-light">시간</span>
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-6 col-lg-3">
                        <div class="d-flex justify-content-between align-items-start">
                          <div>
                            <h3 class="mb-1">${vacadetail.createhour}</h3>
                            <p class="mb-0">조정 연차</p>
                          </div>
                          <div class="avatar">
                            <span class="text-muted fw-light">시간</span>
                          </div>
                        </div>
                      </div>
                    </div>
                    </div>
                   </div>
                  </div>
                  <hr class="my-5" />
			<!-- Basic Bootstrap Table -->
              <div class="card">
                <h5 class="card-header">사용 내역</h5>
                <div class="table-responsive text-nowrap">
                  <table class="table">
                    <thead>
                      <tr>
                        <th>이름</th>
                        <th>부서</th>
                        <th>사용 연차</th>
                        <th>사용 날짜</th>
                        <th>내용</th>
                      </tr>
                    </thead>
                    <tbody class="table-border-bottom-0">
                    	<c:forEach var="usingList" items="${usingList}">
                    		<tr>
                    			<td>${usingList.emp_name}</td>
                    			<td>${usingList.emp_dept_name}</td>
                    			<td>${usingList.use_hour}</td>
                    			<td>${usingList.startDate} ${usingList.startTime} ~ ${usingList.endDate} ${usingList.endTime}</td>
                    			<td>${usingList.vaca_reason}</td>
                    		</tr>
                    	</c:forEach>
                    </tbody>
                  </table>
                </div>
              </div>
      <hr class="my-5" />
              <!-- Basic Bootstrap Table -->
              <div class="card">
                <h5 class="card-header">발생 내역</h5>
                <div class="table-responsive text-nowrap">
                  <table class="table">
                    <thead>
                      <tr>
                        <th>연/월차 등록일자</th>
                        <th>연차 사용기한</th>
                        <th>발생 시간</th>
                        <th>내용</th>  
                      </tr>
                    </thead>
                    <tbody class="table-border-bottom-0">
                    	<c:forEach var="createList" items="${createList}">
                    		<tr>
                    			<td>${createList.add_date}</td>
                    			<td>${createList.del_date}</td>
                    			<td>${createList.add_hour}</td>
                    			<td>${createList.add_vaca_reason}</td>
                    		</tr>
                    	</c:forEach>
                    </tbody>
                  </table>
                </div>
              </div>
             <hr class="my-5" />
            </div>
            <div class="col-lg-4 col-md-6">
                        <!-- Modal -->
                        <div class="modal fade" id="modalCenter" tabindex="-1" aria-hidden="true" data-bs-backdrop="static" data-bs-keyboard="false">
                          <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content">
                              <div class="modal-header">
                                <h5 class="modal-title" id="modalCenterTitle">연차 조정</h5>
                                <button
                                  type="button"
                                  class="btn-close"
                                  data-bs-dismiss="modal"
                                  aria-label="Close"></button>
                              </div>
                              <form action="passChange.do" method="post">
	                              <div class="modal-body">
	                                <div class="col mb-3">
						                <label class="form-label" for="emp_name">이름</label>
						                <div class="input-group input-group-merge">
						                  <p>${vacadetail.emp_name}</p>
						                </div>
						            </div>
	                                <div class="col mb-3">
						                <label class="form-label" for="emp_name">부서</label>
						                <div class="input-group input-group-merge">
						                  <p>${vacadetail.emp_dept_name}</p>
						                </div>
						            </div>
						            <div class="col mb-3">
						                <label class="form-label" for="emp_name">입사일</label>
						                <div class="input-group input-group-merge">
						                  <p>${vacadetail.hiredate}</p>
						                </div>
						            </div>
						            <div class="row" >
	                                  <div class="col mb-3">
	                                  	<label for="nameWithTitle" class="form-label">연차 수</label>
			                                <div  style="display: flex; align-items: center;">
		                                    <input
		                                      type="text"
		                                      id="vacahour"
		                                      class="form-control"
		                                      aria-describedby="vacahour" style="width:200px;"/>
			                                <button type="button" class="btn btn-primary" style="margin-left: 50px; margin-right: 10px;">추가</button>
			                                <button type="button" class="btn btn-label-secondary">
			                                  제거
			                                </button>
		                                  </div>
	                                  </div>
	                                </div>
	                                <div class="col mb-3">
		                                <label for="nameWithTitle" class="form-label">내용</label>
		                                <textarea placeholder="내용을 입력해 주세요!"></textarea>
	                                </div>
	                              </div>
	                              <div class="modal-footer">
	                              </div>
                              </form>
                            </div>
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
	<script>
	
	</script>
    <!-- Main JS -->
    <script src="../../assets/js/main.js"></script>

    <!-- Header -->
    <script src="../../assets/js/header.js"></script>
  </body>
</html>
