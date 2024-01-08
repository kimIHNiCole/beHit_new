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
.btn.btn-primary.text-nowrap.photo{
	width: 70px;
	height: 30px;
	margin-bottom: 7px;
	background-color: #969696;
	border-color: #969696;
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
						    <c:when test="${not empty photos and not empty photos[0].new_file_name}">
						        <img src="/file/employee/${photos[0].new_file_name}" alt="${photos[0].ori_file_name}" 
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
                            <div class="col-md-6">
           						 <h4 style="white-space: nowrap;">${profiledetail.emp_name}</h4>
        					</div>
	        				<div style="white-space: nowrap; width:150px; display: flex;">
					            <form action="upload.do" method="post" enctype="multipart/form-data">
									<input type="file" name="uploadFile" id="uploadFile" accept=".jpg, .jpeg, .gif, .png" onchange="checkFileSize(this)"/>
									<button class="btn btn-primary text-nowrap photo" style="flex-grow: 1; width:70px; margin-right: 5px;">전송</button>
								</form>
					            <button class="btn btn-primary text-nowrap photo" style="flex-grow: 1; width:70px; margin-left: 5px;">초기화</button>
					        </div>       					
                            <ul
                              class="list-inline mb-0 d-flex align-items-center flex-wrap justify-content-sm-start justify-content-center gap-2">
                              <li class="list-inline-item fw-medium"><i class='bx bx-user' ></i> 아이디 : ${profiledetail.emp_id}</li>
                            </ul>
                          </div>
                          
                          <a href="javascript:void(0)" class="btn btn-primary text-nowrap"                           
	                          data-bs-toggle="modal"
	                          data-bs-target="#modalCenter">비밀번호 변경</a>
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
                            <div class="col-md-6">
                              <label class="form-label" for="formtabs-first-name">이름</label>
                              <p id="formtabs-first-name">${profiledetail.emp_name}</p>
                            </div>
                            <div class="col-md-6">
                              <label class="form-label" for="email">이메일</label>
                              <p id="email">${profiledetail.email}</p>
                            </div>
                           <div class="col-md-6">
                              <label class="form-label" for="password">사내 전화번호</label>
                              <p id="password">${profiledetail.cp_phone}</p>
                            </div>
                           <div class="col-md-6">
                              <label class="form-label" for="formtabs-last-name">휴대폰 번호</label>
                              <p id="formtabs-last-name">${profiledetail.mobile_phone}</p>
                            </div>
                            <div class="col-md-6">
                              <label class="form-label" for="formtabs-birthdate">생년월일</label>
                              <p id="emp_birth">${profiledetail.emp_birth}</p>
                            </div>
                          
                         </div>
						<!-- Activity Timeline -->
						<br>
		                <div class="row.g-3">             
		                </div>
	                <!--/ Activity Timeline -->
                        </form>
                      </div>
                      <div class="tab-pane fade" id="form-tabs-account" role="tabpanel">
                        <form>
                          <div class="row g-3">
                            <div class="col-md-6">
                              <label class="form-label" for="address">주소</label>
                              <p id="address">${profiledetail.address}</p>
                            </div>
                            <div class="col-md-6">
                              <label class="form-label" for="detail-addr">상세 주소</label>
                              <p id="detail-addr">${profiledetail.detail_addr}</p>
                            </div>
                            <div class="mb-3 col-md-6">
	                            <label for="hiredate" class="form-label">입사일</label>
	 							<p id="hiredate" name="hiredate">${profiledetail.hiredate}</p>
	                        </div>
	                        <div class="mb-3 col-md-6">
	                            <label for="leavedate" class="form-label">퇴사일</label>
	 							<p id="leavedate" name="leavedate">${profiledetail.leavedate}</p>
	                         </div>
                          </div>
                          
                          <!-- Activity Timeline -->
						<br>
		                <div class="row.g-3">
		                  
		                </div>
	                <!--/ Activity Timeline -->
                        </form>
                      </div>
                      <div class="tab-pane fade" id="form-tabs-social" role="tabpanel">
                        <form>
                          <div class="row g-3">
                          <div class="mb-3 col-md-6">
                            <label for="department" class="form-label">부서</label>
                            <p>${profiledetail.dept_name}</p>
                          </div> 
                          <div class="mb-3 col-md-6">
                            <label class="form-label" for="position">직급</label>
                            <p>${profiledetail.position_name}</p>
                          </div>
                           <div class="mb-3 col-md-6">
                            <label for="job" class="form-label">직책</label>
                            <p>${profiledetail.grade_name}</p>
                          </div>
                          </div>
                          
                          <!-- Activity Timeline -->
						<br>
		                <div class="row.g-3">
		                 
		                </div>
	                <!--/ Activity Timeline -->
                        </form>
                      </div>
                    </div>
                  </div>
                </div>      
              </div>
              <!-- --------------------------------------------------------------------------------------------------------------------------------------- -->
              <div class="col-lg-4 col-md-6">
                        <!-- Modal -->
                        <div class="modal fade" id="modalCenter" tabindex="-1" aria-hidden="true" data-bs-backdrop="static" data-bs-keyboard="false">
                          <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content">
                              <div class="modal-header">
                                <h5 class="modal-title" id="modalCenterTitle">비밀번호 변경</h5>
                                <button
                                  type="button"
                                  class="btn-close"
                                  data-bs-dismiss="modal"
                                  aria-label="Close"></button>
                              </div>
                              <form action="passChange.do" method="post">
	                              <div class="modal-body">
	                                <div class="mb-3 form-password-toggle">
						                <label class="form-label" for="password">비밀번호</label>
						                <div class="input-group input-group-merge">
						                  <input
						                    type="password"
						                    id="password"
						                    class="form-control"
						                    name="password"
						                    placeholder="비밀번호를 입력하세요."
						                    aria-describedby="password" />
						                  <span class="input-group-text cursor-pointer"><i class="bx bx-hide"></i></span>
						                </div>
						              </div>
	                                <div class="row">
	                                  <div class="col mb-3">
	                                    <label for="nameWithTitle" class="form-label">비밀번호 확인</label>
	                                    <input
	                                      type="password"
	                                      id="confirmPassword"
	                                      class="form-control"
	                                      aria-describedby="password"/>
	                                  </div>
	                                </div>
	                              </div>
	                              <div class="modal-footer">
	                                <button type="button" class="btn btn-label-secondary" data-bs-dismiss="modal">
	                                  취소
	                                </button>
	                                <button type="submit" class="btn btn-primary">비밀번호 변경</button>
	                              </div>
                              </form>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
              
              <div class="tab-content">
              	<div class="tab-pane fade active show" id="form-tabs-personal" role="tabpanel">
              		
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
    <script src="../../assets/vendor/libs/datatables-bs5/datatables-bootstrap5.js"></script>
    
    <script>
		var msg = '${msg}';
		if (msg!=''){
			alert(msg);
		}
		
		function checkFileSize(input) {
		    const maxFileSizeInBytes = 1024 * 1024; // 예시: 1MB 제한

		    if (input.files.length > 0) {
		        const fileSize = input.files[0].size; // 파일 크기
		        if (fileSize > maxFileSizeInBytes) {
		            alert('파일 크기가 너무 큽니다. 1MB 이하의 파일을 업로드해주세요.');
		            input.value = ''; // 파일 선택 취소
		        }
		    }
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
