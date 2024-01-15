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
    <link rel="stylesheet" href="../../assets/vendor/libs/select2/select2.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/@form-validation/umd/styles/index.min.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/animate-css/animate.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/sweetalert2/sweetalert2.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/flatpickr/flatpickr.css" />

    <!-- Page CSS -->

    <!-- Helpers -->
    <script src="../../assets/vendor/js/helpers.js"></script>
    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Template customizer: To hide customizer set displayCustomizer value false in config.js.  -->
    <script src="../../assets/vendor/js/template-customizer.js"></script>
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="../../assets/js/config.js"></script>
    
    <!-- DAUM 주소 검색 api -->
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
            	<h4 class="py-3 mb-4"><span class="text-muted fw-light">직원 관리 /</span> 직원 등록</h4>
            	<div class="row">
                	<div class="col-md-12">
                  		<div class="card mb-4">
                    		<h5 class="card-header">직원 등록</h5>
                    		<!-- Account -->
                      		<form id="formAccountSettings" action="empadd.do" method="post" enctype="multipart/form-data">
							<div class="card-body">
								<div class="d-flex align-items-start align-items-sm-center gap-4">
			                        <img
			                          src="../../assets/img/avatars/1.png"
			                          alt="user-avatar"
			                          class="d-block rounded"
			                          height="100"
			                          width="100"
			                          id="preview" />
	                        		<div class="button-wrapper">
	                         			<label for="uploadFile" class="btn btn-label-secondary account-image-reset mb-4">Upload new photo</label>
		                            	<input type="file" name="uploadFile" id="uploadFile" style="display: none;" onchange="previewImage(event)" accept=".jpg, .jpeg, .gif, .png"/>
		                            	<i class="bx bx-upload d-block d-sm-none"></i>
	                          			<p class="text-muted mb-0">.jpg, .jpeg, .png, .gif 확장자만 추가할 수 있고 최대 사이즈는 1MB입니다</p>
	                        		</div>
	                      		</div>
                    		</div>
                    		<hr class="my-0" />
                    		<div class="card-body">
                        		<div class="row">
                          			<div class="mb-3 col-md-6">
                            			<label for="firstName" class="form-label">아이디</label>
			                            <input
			                              class="form-control"
			                              type="text"
			                              id="emp_id"
			                              name="emp_id"
			                              placeholder="Honggildong"
			                              autofocus />
                          			</div>
                          			<div class="mb-3 col-md-6">
                            			<label for="lastName" class="form-label">임시 비밀번호</label>
                            			<input class="form-control" type="text" name="password" id="password" placeholder="****" />
                          			</div>
                          			<div class="mb-3 col-md-6">
			                            <label for="email" class="form-label">이메일</label>
			                            <input
			                              class="form-control"
			                              type="text"
			                              id="email"
			                              name="email"
			                              placeholder="admin@example.com" />
			                        </div>
                          			<div class="mb-3 col-md-6">
                            			<label for="organization" class="form-label">이름</label>
			                            <input
			                           		type="text"
			                              	class="form-control"
			                              	id="emp_name"
			                              	name="emp_name"
			                              	placeholder="홍길동" />
			                        </div>
                          			<div class="mb-3 col-md-6">
                            			<label class="form-label" for="cp_phone">사내 번호</label>
                            			<div class="input-group input-group-merge">
			                            	<input
			                            		type="text"
			                                	id="cp_phone"
			                                	name="cp_phone"
			                                	class="form-control"
			                                	placeholder="02-000-0000" />
			                            </div>
                          			</div>
                         			<div class="mb-3 col-md-6">
                            			<label for="address" class="form-label">주소</label>
                            			<input type="text" class="form-control" id="address" name="address" placeholder="주소" />
                          			</div>
                          			<div class="mb-3 col-md-6">
                            			<label class="form-label" for="phoneNumber">휴대폰 번호</label>
                            			<div class="input-group input-group-merge">
                              				<input type="text" id="mobile_phone" name="mobile_phone" class="form-control" placeholder="010-0000-0000" />
                            			</div>
                          			</div>                        
                          			<div class="mb-3 col-md-6">
                            			<label for="zipCode" class="form-label">상세 주소</label>
			                            <input
			                              type="text"
			                              class="form-control"
			                              id="detail_addr"
			                              name="detail_addr"
			                              placeholder="상세 주소"
			                              maxlength="6" />
	                          		</div>
	                          		<!-- forEach 리스트로 출력 -->
	                          		<div class="mb-3 col-md-6">
	                            		<label for="department" class="form-label">부서</label>
	                            		<select id="department" class="select2 form-select" name="emp_dept_idx">
				                        	<option value=""></option>
				                            <option value="1">무소속</option>
				                            <option value="2">인사</option>
				                            <option value="3">재무</option>
				                            <option value="4">사업 기획</option>
				                            <option value="5">마케팅</option>
				                            <option value="6">매니지먼트</option>
				                        </select>
	                          		</div> 
		                        	<div class="col-md-6 col-12 mb-4">
		                          		<label for="flatpickr-date" class="form-label">입사일</label>
		                          		<input type="text" class="form-control" placeholder="YYYY-MM-DD" id="hiredate" name="hiredate" />
		                        	</div>
		                        	<!-- forEach 리스트로 출력 -->
	                            	<div class="mb-3 col-md-6">
	                            		<label class="form-label" for="position">직급</label>
	                            		<select id="rank" class="select2 form-select" name="emp_grade_idx">
	                              			<option value=""></option>
	                              			<option value="1">대표</option>
	                              			<option value="2">이사</option>
	                              			<option value="3">부장</option>
	                              			<option value="4">차장</option>
				                            <option value="5">과장</option>
				                            <option value="6">대리</option>
				                            <option value="7">사원</option>
	                            		</select>
	                          		</div>
	                       	 		<div class="col-md-6 col-12 mb-4">
	                          			<label for="flatpickr-date" class="form-label">생년 월일</label>
	                         			<input type="text" class="form-control" placeholder="YYYY-MM-DD" id="emp_birth" name="emp_birth" />
	                       			</div>
	                         		<!-- forEach 리스트로 출력 -->
	                         		<div class="mb-3 col-md-6">
	                            		<label for="job" class="form-label">직책</label>
	                            		<select id="job" class="select2 form-select" name="emp_position_idx">
			                            	<option value=""></option>
			                            	<option value="8">팀장</option>
			                              	<option value="9">팀원</option>
			                              	<option value="10">무직책</option>
			                            </select>
	                          		</div>    
	                        		</div>
		                        	<div class="mt-2">
		                          		<button type="submit" class="btn btn-primary me-2">직원 등록</button>
		                          		<button type="reset" class="btn btn-label-secondary">등록 취소 </button>
		                        	</div>
                			</div>
                      	</form>
               			</div>
               			</div>
               			
            <!-- / Content -->

            <div class="content-backdrop fade"></div>
          	</div>
          	<!-- Content wrapper -->
        </div>
        </div>
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
    <script src="../../assets/vendor/libs/@form-validation/umd/bundle/popular.min.js"></script>
    <script src="../../assets/vendor/libs/@form-validation/umd/plugin-bootstrap5/index.min.js"></script>
    <script src="../../assets/vendor/libs/@form-validation/umd/plugin-auto-focus/index.min.js"></script>
    <script src="../../assets/vendor/libs/cleavejs/cleave.js"></script>
    <script src="../../assets/vendor/libs/cleavejs/cleave-phone.js"></script>
    <script src="../../assets/vendor/libs/sweetalert2/sweetalert2.js"></script>
    <script src="../../assets/vendor/libs/flatpickr/flatpickr.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
    var msg = '<%= request.getParameter("msg") %>';
    console.log(msg);

    if (msg.trim() !== "") {
        Swal.fire({
            text: msg,
            icon: 'warning',
            customClass: {
                confirmButton: 'btn btn-primary'
            },
            buttonsStyling: false
        });
    }
    
    	// 날짜 선택
	    var flatpickrhiredate = document.querySelector("#hiredate");
		
	    flatpickrhiredate.flatpickr({
	      monthSelectorType: "static"
	    });
	    
	    var flatpickremp_birth = document.querySelector("#emp_birth");
		
	    flatpickremp_birth.flatpickr({
	      monthSelectorType: "static"
	    });
	    
	  	 $(document).ready(function() {
	 		// DAUM 주소 검색 창
	         document.getElementById("address").addEventListener("click", function(){ //주소입력칸을 클릭하면
	             //카카오 지도 발생
	             new daum.Postcode({
	                 oncomplete: function(data) { //선택시 입력값 세팅
	                     document.getElementById("address").value = data.address; // 주소 넣기
	                     document.querySelector("input[name=detail_addr]").focus(); //상세입력 포커싱
	                 }
	             }).open();
	         });
	 	});
	    
	    // 파일 선택 시 미리보기를 위한 함수
	    function previewImage(event) {	
	        const input = event.target;
	        const preview = document.getElementById('preview');
		    
	        if (input.files && input.files[0]) {
	            const reader = new FileReader();

	            reader.onload = function (e) {
	                preview.src = e.target.result;
	            };

	            reader.readAsDataURL(input.files[0]);
	        }
	    }
    </script>
	<!-- Header JS -->
    <script src="../../assets/js/header.js"></script>   
   


  </body>
</html>