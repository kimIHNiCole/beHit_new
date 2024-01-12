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
    <link rel="stylesheet" href="../../assets/vendor/libs/datatables-bs5/datatables.bootstrap5.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/datatables-responsive-bs5/responsive.bootstrap5.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/datatables-checkboxes-jquery/datatables.checkboxes.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/flatpickr/flatpickr.css" />

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
img.rounded-top{
	height: 95px;
    }

</style>

  </head>

  <body>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
        <!-- Menu -->
			<jsp:include page="/views/header_menu.jsp"/>
        <!-- / Menu -->

        <!-- Layout container -->
        <div class="layout-page">
        
        <!-- Navbar -->
          <jsp:include page="/views/header_navbar.jsp"/>
          <!-- / Navbar -->

          <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->
            <div class="container-xxl flex-grow-1 container-p-y">
              <h4 class="py-3 mb-4"><span class="text-muted fw-light">직원 관리 / </span>직원 상세보기</h4>
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
						    <c:when test="${not empty empdetail and 'default' eq empdetail.new_file_name}">
						        <img src="../../assets/img/avatars/1.png" alt="user image" 
						            class="d-block h-auto ms-0 ms-sm-4 rounded user-profile-img" />
						    </c:when>
						    <c:otherwise>
						        <img src="/file/employee/${empdetail.new_file_name}" alt="${empdetail.ori_file_name}" 
						            class="d-block h-auto ms-0 ms-sm-4 rounded user-profile-img" />
						    </c:otherwise>
						</c:choose>
                      </div>
                      <div class="flex-grow-1 mt-3 mt-sm-5">
                        <div
                          class="d-flex align-items-md-end align-items-sm-start align-items-center justify-content-md-between justify-content-start mx-4 flex-md-row flex-column gap-4">
                          <div class="user-profile-info">
                            <h4>${empdetail.emp_name}</h4>
                            <ul
                              class="list-inline mb-0 d-flex align-items-center flex-wrap justify-content-sm-start justify-content-center gap-2">
                              <li class="list-inline-item fw-medium"><i class="bx bx-pen"></i> 아이디 : ${empdetail.emp_id}</li>
                            </ul>
                          </div>
                          	<button type="button" class="btn btn-primary me-sm-3 me-1" onclick="chkClear()">로그인 제한 해제</button>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!--/ Header -->
              <!-- User Profile Content -->
               <!-- Form with Tabs -->
              <div class="row">
                <div class="col">
                  <div class="nav-align-top mb-3">
                    <ul class="nav nav-tabs" role="tablist">
                      <li class="nav-item">
                        <button
                          class="nav-link active"
                          data-bs-toggle="tab"
                          data-bs-target="#form-tabs-personal"
                          role="tab"
                          aria-selected="true">
                          기본 정보
                        </button>
                      </li>
                      <li class="nav-item">
                        <button
                          class="nav-link"
                          data-bs-toggle="tab"
                          data-bs-target="#form-tabs-account"
                          role="tab"
                          aria-selected="false">
                          상세 정보
                        </button>
                      </li>
                      <li class="nav-item">
                        <button
                          class="nav-link"
                          data-bs-toggle="tab"
                          data-bs-target="#form-tabs-social"
                          role="tab"
                          aria-selected="false">
                          부서 직급
                        </button>
                      </li>
                    </ul>
                    <div class="tab-content">
                      <div class="tab-pane fade active show" id="form-tabs-personal" role="tabpanel">
                      <form>                 
                          <div class="row g-3">
                          	<input type="hidden" name="emp_id" value="${empdetail.emp_id}">
                            <div class="col-md-6">
                              <label class="form-label" for="formtabs-first-name">이름</label>
                              <input type="text" id="emp_name" name="emp_name" class="form-control" value="${empdetail.emp_name}" />
                            </div>
                            <div class="col-md-6">
                              <label class="form-label" for="password">임시 비밀번호</label>
                              <input type="text" id="password" name="password" class="form-control" value=""/>
                            </div>
                           <div class="col-md-6">
                              <label class="form-label" for="cp_phone">사내 전화번호</label>
                              <input type="text" id="cp_phone" name="cp_phone" class="form-control" value="${empdetail.cp_phone}" />
                            </div>
                           <div class="col-md-6">
                              <label class="form-label" for="mobile_phone">휴대폰 번호</label>
                              <input type="text" id="mobile_phone" name="mobile_phone" class="form-control" value="${empdetail.mobile_phone}" />
                            </div>
	                       	<div class="col-md-6 col-12 mb-4">
	                          	<label for="flatpickr-date" class="form-label">생년 월일</label>
	                         	<input type="text" class="form-control" id="emp_birth" name="emp_birth" value="${empdetail.emp_birth}" />
	                       	</div>
                            <div class="col-md-6">
                              <label class="form-label" for="email">이메일</label>
                              <input type="text" id="email" name="email" class="form-control" value="${empdetail.email}"/>
                            </div>
                          <div class="pt-4">
                            <button type="button" class="btn btn-primary me-sm-3 me-1" onclick="bsubmit()">수정 등록</button>
                            <button type="reset" class="btn btn-label-secondary">취소</button>
                          </div>
                         </div>
						<!-- Activity Timeline -->
						<br>
		                <div class="row.g-3">
		                  <div class="card" style="width: 100%;">
		                    <div class="card-header d-flex align-items-center justify-content-between">
		                      <h5 class="card-title m-0 me-2">기본정보 변경 이력</h5>
		                    </div>
		                    <div class="card-body">
		                      <!-- Activity Timeline -->
		                      <ul class="timeline">
		                      	<c:forEach var="HisList" items="${HisList}">
			                      	<c:if test="${HisList.category eq '기본 정보'}">
				                        <li class="timeline-item timeline-item-transparent">
				                          <span class="timeline-point-wrapper">
				                          	<span class="timeline-point timeline-point-primary"></span>
				                          </span>
				                          <div class="timeline-event">
				                            <div class="timeline-header mb-1">
				                              <h6 class="mb-0">${HisList.psn_his_kind}</h6>
				                              <small class="text-muted">${HisList.psn_his_date}</small>
				                            </div>
				                            <p class="mb-2">${HisList.psn_his_befoInfo} -> ${HisList.psn_his_aftrInfo}</p>
				                          </div>
				                        </li>
			                      	</c:if>
		                      	</c:forEach>
		                        <li class="timeline-end-indicator">
		                          <i class="bx bx-check-circle"></i>
		                        </li>
		                      </ul>
		                      <!-- /Activity Timeline -->
		                    </div>
		                  </div>
		                </div>
		                </form>
	                <!--/ Activity Timeline -->
                      </div>
                      <div class="tab-pane fade" id="form-tabs-account" role="tabpanel">
                        <form>
                          <div class="row g-3">
                          	<input type="hidden" name="emp_id" value="${empdetail.emp_id}">
                            <div class="col-md-6">
                              <label class="form-label" for="address">주소</label>
                              <input type="text" id="address" name="address" class="form-control" value="${empdetail.address}" />
                            </div>
                            <div class="col-md-6">
                              <label class="form-label" for="detail-addr">상세 주소</label>
                              <input type="text" id="detail-addr" name="detail_addr" class="form-control" value="${empdetail.detail_addr}" />
                            </div>
                            <div class="mb-3 col-md-6">
	                            <label for="hiredate" class="form-label">입사일</label>
	 							<input type="date" class="form-control" id="hiredate" name="hiredate" value="${empdetail.hiredate}">
	                        </div>
	                        <div class="mb-3 col-md-6">
	                            <label for="leavedate" class="form-label">퇴사일</label>
	 							<input type="date" class="form-control" id="leavedate" name="leavedate" value="${empdetail.leavedate}">
	                         </div>
                          </div>
                          <div class="pt-4">
                            <button type="button" class="btn btn-primary me-sm-3 me-1" onclick="dsubmit()">수정 등록</button>
                            <button type="reset" class="btn btn-label-secondary">취소</button>
                          </div>
                          <!-- Activity Timeline -->
						<br>
		                <div class="row.g-3">
		                  <div class="card" style="width: 100%;">
		                    <div class="card-header d-flex align-items-center justify-content-between">
		                      <h5 class="card-title m-0 me-2">상세정보 변경 이력</h5>
		                    </div>
		                    <div class="card-body">
		                      <!-- Activity Timeline -->
		                      <ul class="timeline">
		                      <c:forEach var="HisList" items="${HisList}">
		                      	<c:if test="${HisList.category eq '상세 정보'}">
			                        <li class="timeline-item timeline-item-transparent">
			                          <span class="timeline-point-wrapper">
			                          	<span class="timeline-point timeline-point-primary"></span>
			                          </span>
			                          <div class="timeline-event">
			                            <div class="timeline-header mb-1">
			                              <h6 class="mb-0">${HisList.psn_his_kind}</h6>
			                              <small class="text-muted">${HisList.psn_his_date}</small>
			                            </div>
			                            <p class="mb-2">${HisList.psn_his_befoInfo} -> ${HisList.psn_his_aftrInfo}</p>
			                          </div>
			                        </li>
		                      	</c:if>
		                      </c:forEach>
		                        <li class="timeline-end-indicator">
		                          <i class="bx bx-check-circle"></i>
		                        </li>
		                      </ul>
		                      <!-- /Activity Timeline -->
		                    </div>
		                  </div>
		                </div>
	                <!--/ Activity Timeline -->
                        </form>
                      </div>
                      <div class="tab-pane fade" id="form-tabs-social" role="tabpanel">
                        <form>
                          <div class="row g-3">
                          <input type="hidden" name="emp_id" placeholder="${empdetail.emp_id}">
                          <div class="mb-3 col-md-6">
                            <label for="department" class="form-label">부서</label>
                            <select id="department" name="department" class="select2 form-select">
                            	<c:forEach var="deptList" items="${deptList}">
                            		<option value="${deptList.emp_dept_idx}">${deptList.dept_name}</option>
                            	</c:forEach>
                            </select>
                          </div> 
                          <div class="mb-3 col-md-6">
                            <label for="job" class="form-label">직책</label>
                            <select id="position" name="position" class="select2 form-select">
                            	<c:forEach var="positionList" items="${positionList}">
                            		<option value="${positionList.common_code_idx}">${positionList.position_name}</option>
                            	</c:forEach>
                            </select>
                          </div>
                          <div class="mb-3 col-md-6">
                            <label class="form-label" for="position">직급</label>
                            <select id="grade" name="grade" class="select2 form-select">
                            	<c:forEach var="gradeList" items="${gradeList}">
                            		<option value="${gradeList.common_code_idx}">${gradeList.grade_name}</option>
                            	</c:forEach>
                            </select>
                          </div>
                          </div>
                          <div class="pt-4">
                            <button type="button" class="btn btn-primary me-sm-3 me-1" onclick="psubmit()">수정 등록</button>
                            <button type="reset" class="btn btn-label-secondary">취소</button>
                          </div>
                          <!-- Activity Timeline -->
						<br>
		                <div class="row.g-3">
		                  <div class="card" style="width: 100%;">
		                    <div class="card-header d-flex align-items-center justify-content-between">
		                      <h5 class="card-title m-0 me-2">부서 / 직급 변경 이력</h5>
		                    </div>
		                    <div class="card-body">
		                      <!-- Activity Timeline -->
		                      <ul class="timeline">
		                      <c:forEach var="HisList" items="${HisList}">
			                      <c:if test="${HisList.category eq '부서 정보'}">
			                        <li class="timeline-item timeline-item-transparent">
			                          <span class="timeline-point-wrapper">
			                          	<span class="timeline-point timeline-point-primary"></span>
			                          </span>
			                          <div class="timeline-event">
			                            <div class="timeline-header mb-1">
			                              <h6 class="mb-0">${HisList.psn_his_kind}</h6>
			                              <small class="text-muted">${HisList.psn_his_date}</small>
			                            </div>
			                            <p class="mb-2">${HisList.psn_his_befoInfo} -> ${HisList.psn_his_aftrInfo}</p>
			                          </div>
			                        </li>
			                      </c:if>
		                      </c:forEach>
		                        <li class="timeline-end-indicator">
		                          <i class="bx bx-check-circle"></i>
		                        </li>
		                      </ul>
		                      <!-- /Activity Timeline -->
		                    </div>
		                  </div>
		                </div>
	                <!--/ Activity Timeline -->
                        </form>
                      </div>
                    </div>
                  </div>
                </div>      
              </div>
              <!-- --------------------------------------------------------------------------------------------------------------------------------------- -->
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
    <script src="../../assets/vendor/libs/datatables-bs5/datatables-bootstrap5.js"></script>
    <script src="../../assets/vendor/libs/flatpickr/flatpickr.js"></script>
    <script>
		// 생일 선택
	    var flatpickrDate = document.querySelector("#emp_birth");
		
	    flatpickrDate.flatpickr({
	      monthSelectorType: "static"
	    });
	    
	    // 입사일 선택
	   	var flatpickrDate = document.querySelector("#hiredate");
		
	    flatpickrDate.flatpickr({
	      monthSelectorType: "static"
	    });
	    
	    // 퇴사일 선택
	    var flatpickrDate = document.querySelector("#leavedate");
		
	    flatpickrDate.flatpickr({
	      monthSelectorType: "static"
	    });
    
    
    
    	var emp_id = '${empdetail.emp_id}';
    	var defaultname = '${empdetail.emp_name}';
    	var defaultpass = '${empdetail.password}';
    	var defaultphone = '${empdetail.cp_phone}';
    	var defaultmobile = '${empdetail.mobile_phone}';
    	var defaultbirth = '${empdetail.emp_birth}';
    	var defaultemail = '${empdetail.email}';
    	var defaultaddr = '${empdetail.address}';
    	var defaultdaddr = '${empdetail.detail_addr}';
    	var defaulthiredate = '${empdetail.hiredate}';
    	var defaultleavedate = '${empdetail.leavedate}';
    	var defaultdept = '${empdetail.dept_name}';
    	var defaultposition = '${empdetail.position_name}';
    	var defaultgrade = '${empdetail.grade_name}';
    	console.log(emp_id);
    	
    	function bsubmit(){
    		
    		var emp_name = $('input[name="emp_name"]').val();
    		var password = $('input[name="password"]').val();
    		var cp_phone = $('input[name="cp_phone"]').val();
    		var mobile_phone = $('input[name="mobile_phone"]').val();
    		var emp_birth = $('input[name="emp_birth"]').val();
    		var email = $('input[name="email"]').val();
    		
    		var param = {};
    		
    		if (emp_name != '${empdetail.emp_name}') {
    			param.emp_name = emp_name;
    			param.defaultname = defaultname;
    		}
			if (password != '') {
				param.password = password;
				param.defaultpass = defaultpass;
			}
			if (cp_phone !== '${empdetail.cp_phone}') {
				param.cp_phone = cp_phone;
				param.defaultphone = defaultphone;
			}
			if (mobile_phone !== '${empdetail.mobile_phone}') {
				param.mobile_phone = mobile_phone;
				param.defaultmobile = defaultmobile;
			}				
			if (emp_birth !== '${empdetail.emp_birth}') {
				param.emp_birth = emp_birth;
				param.defaultbirth = defaultbirth;
			}
			if (email !== '${empdetail.email}') {
				param.email = email;
				param.defaultemail = defaultemail;
			}
			if (!$.isEmptyObject(param)){
				
				param.emp_id= emp_id;
				
	    		$.ajax({
	    			type: "POST",
	    			url: "bempupdate.do",
	    			data: param,
	    			success: function(data){
	    				console.log(data);
	    				alert('수정되었습니다.');
	    				location.reload();
	    			},
	    			error: function(e){
	    				console.log(e)
	    			}
	    		});
			} else{
				alert('내용을 수정해 주세요');
			}		
    	}
    	
    	function dsubmit(){
    		
    		var address = $('input[name="address"]').val();
    		var detail_addr = $('input[name="detail_addr"]').val();
    		var hiredate = $('input[name="hiredate"]').val();
    		var leavedate = $('input[name="leavedate"]').val();
    		
    		var param = {};
    		
    		if (address !== '${empdetail.address}') {
    			param.address = address;
    			param.defaultaddr = defaultaddr;
    		}
			if (detail_addr !== '${empdetail.detail_addr}') {
				param.detail_addr = detail_addr;
				param.defaultdaddr = defaultdaddr;
			}
			if (hiredate !== '${empdetail.hiredate}') {
				param.hiredate = hiredate;
				param.defaulthiredate = defaulthiredate;
			}
			if (leavedate !== '${empdetail.leavedate}') {
				param.leavedate = leavedate;
				param.defaultleavedate = defaultleavedate;
			}
			
			console.log(param);
			
			if (!$.isEmptyObject(param)){
				
				param.emp_id= emp_id;
				
	    		$.ajax({
	    			type: "POST",
	    			url: "dempupdate.do",
	    			data: param,
	    			success: function(data){
	    				console.log(data);
	    				alert('수정되었습니다.');
	    				location.reload();
	    			},
	    			error: function(e){
	    				console.log(e)
	    			}
	    		});
			} else{
				alert('내용을 수정해 주세요');
			}		
    	}
    	
    	function psubmit(){
    		
    		var emp_dept_idx = $('select[name="department"]').val();
    		var emp_position_idx = $('select[name="position"]').val();
    		var emp_grade_idx = $('select[name="grade"]').val();
    		
    		var param = {};
    		
    		if (emp_dept_idx !== '${empdetail.emp_dept_idx}') {
    			param.emp_dept_idx = emp_dept_idx;
    			param.dept_name = $('select[name="department"] option:selected').text();
    			param.defaultdeptname= defaultdept;
    		}
			if (emp_position_idx !== '${empdetail.emp_position_idx}') {
				param.emp_position_idx = emp_position_idx;
				param.position_name = $('select[name="position"] option:selected').text();
				param.defaultpositionname= defaultposition;
			}
			if (emp_grade_idx !== '${empdetail.emp_grade_idx}') {
				param.emp_grade_idx = emp_grade_idx;
				param.grade_name = $('select[name="grade"] option:selected').text();
				param.defaultgradename = defaultgrade;
			}
			
			console.log(param);
			
			if (!$.isEmptyObject(param)){
				
				param.emp_id= emp_id;
				
	    		$.ajax({
	    			type: "POST",
	    			url: "pempupdate.do",
	    			data: param,
	    			success: function(data){
	    				console.log(data);
	    				alert('수정되었습니다.');
	    				location.reload();
	    			},
	    			error: function(e){
	    				console.log(e)
	    			}
	    		});
			} else{
				alert('내용을 수정해 주세요');
			}		
    	}
    	
    	function chkClear(){
    		
    		$.ajax({
    			type: "GET",
    			url: "chkClear.do",
    			data: {"emp_id":emp_id},
    			success: function(data){
    				console.log(data);
    				alert('로그인 제한이 해제되었습니다.');
    				location.reload();
    			},
    			error: function(e){
    				console.log(e)
    			}
    		});
    		
    	}
    
    </script>

    <!-- Main JS -->
    <script src="../../assets/js/main.js"></script>

    <!-- Page JS -->
    <script src="../../assets/js/app-user-view-account.js"></script>
    
    <!-- Header -->
    <script src="../../assets/js/header.js"></script>
  </body>
</html>
