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

    <title>Wizard Numbered - Forms | Sneat - Bootstrap 5 HTML Admin Template - Pro</title>

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
    <link rel="stylesheet" href="../../assets/vendor/libs/bs-stepper/bs-stepper.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/bootstrap-select/bootstrap-select.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/select2/select2.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/@form-validation/umd/styles/index.min.css" />
    <!-- 캘린더css -->
    <link rel="stylesheet" href="../../assets/vendor/libs/flatpickr/flatpickr.css" />
    <!-- 사진드롭다운 -->
    <link rel="stylesheet" href="../../assets/vendor/libs/dropzone/dropzone.css" />
    <!-- tagify 텍스트 css, java 어쩌구 -->
	<link rel="stylesheet" href="../../assets/vendor/libs/tagify/tagify.css" />
    <!-- Page CSS -->
    <!-- 생성추가 -->
    <link rel="stylesheet" href="../../assets/vendor/css/pages/app-invoice.css" />

    <!-- Helpers -->
    <script src="../../assets/vendor/js/helpers.js"></script>
    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Template customizer: To hide customizer set displayCustomizer value false in config.js.  -->
    <script src="../../assets/vendor/js/template-customizer.js"></script>
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="../../assets/js/config.js"></script>
  </head>

  <body>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
        <!-- 여기서부터 붙여넣기 -->
      
        <!-- Menu -->
        
        <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
          <div class="app-brand demo">
            <a href="../home.go" class="app-brand-link">
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
              <a href="../home.go" class="menu-link">
                <i class="menu-icon tf-icons bx bx-home-circle"></i>
                <div class="text-truncate" data-i18n="홈">홈</div>
              </a>
            </li>
            
            <li class="menu-item">
              <a href="../approval/approval_main.go" class="menu-link">
                <i class="menu-icon tf-icons bx bx-food-menu"></i>
                <div class="text-truncate" data-i18n="전자 결재">전자 결재</div>
              </a>
            </li>
            
            <li class="menu-item active">
              <a href="../creators/creator_list_all.go" class="menu-link">
                 <i class="menu-icon tf-icons bx bx-slideshow"></i>
                <div class="text-truncate" data-i18n="크리에이터">크리에이터</div>
              </a>
            </li>
            
            <li class="menu-item">
              <a href="../project/project_main.go" class="menu-link">
                 <i class="menu-icon tf-icons bx bx-customize"></i>
                <div class="text-truncate" data-i18n="프로젝트">프로젝트</div>
              </a>
            </li>
            
            <li class="menu-item">
              <a href="../calendar/calendar.go" class="menu-link">
                 <i class="menu-icon tf-icons bx bx-calendar"></i>
                <div class="text-truncate" data-i18n="캘린더">캘린더</div>
              </a>
            </li>
            
            <li class="menu-item">
              <a href="../reserve/reserveRoom_list.go" class="menu-link">
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
                  <a href="../myHr/mhr_timeline.go" class="menu-link">
                    <div class="text-truncate" data-i18n="내 근태관리">내 근태관리</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="../myHr/mhr_vacation.go" class="menu-link">
                    <div class="text-truncate" data-i18n="내 연차내역">내 연차내역</div>
                  </a>
                </li>
              </ul>
            </li>
            
            <li class="menu-item">
              <a href="../chat/messenger.go" class="menu-link">
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
                  <a href="../employee/employee_list.go" class="menu-link">
                    <div class="text-truncate" data-i18n="직원 관리">직원 관리</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="javascript:void(0);" class="menu-link menu-toggle">
                    <div class="text-truncate" data-i18n="근태 관리">근태 관리</div>
                  </a>
                  <ul class="menu-sub">
                    <li class="menu-item">
                      <a href="../employee/workHour_list.go" class="menu-link">
                        <div class="text-truncate" data-i18n="근태 현황">근태 현황</div>
                      </a>
                    </li>
                    <li class="menu-item">
                      <a href="../employee/vacation_list.go" class="menu-link">
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
                        <h5 class="text-body mb-0 me-auto">알림</h5>
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
                      <a class="dropdown-item" href="pages-account-settings-account.go">
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

            <!-- Search Small Screens -->
            
          </nav>

          <!-- / Navbar -->
          
          <!-- 여기까지 붙여넣기 -->

          <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
              <h4 class="py-3 mb-4">크리에이터 등록</h4>

              <!-- Default -->
              <div class="row">

                <!-- Default Wizard -->
                <div class="col-12 mb-4">
                  <div class="bs-stepper wizard-numbered mt-2">
                    <div class="bs-stepper-header">
                      <div class="step" data-target="#account-details">
                        <button type="button" class="step-trigger">
                          <span class="bs-stepper-circle">1</span>
                          <span class="bs-stepper-label mt-1">
                            <span class="bs-stepper-title">기본정보</span>
                            <span class="bs-stepper-subtitle">인적사항을 입력합니다</span>
                          </span>
                        </button>
                      </div>
                      <div class="line">
                        <i class="bx bx-chevron-right"></i>
                      </div>
                      <div class="step" data-target="#personal-info">
                        <button type="button" class="step-trigger">
                          <span class="bs-stepper-circle">2</span>
                          <span class="bs-stepper-label mt-1">
                            <span class="bs-stepper-title">채널 및 SNS 정보</span>
                            <span class="bs-stepper-subtitle">유튜브 채널 및 SNS 정보를 입력합니다</span>
                          </span>
                        </button>
                      </div>
                      <div class="line">
                        <i class="bx bx-chevron-right"></i>
                      </div>
                      <div class="step" data-target="#social-links">
                        <button type="button" class="step-trigger">
                          <span class="bs-stepper-circle">3</span>
                          <span class="bs-stepper-label mt-1">
                            <span class="bs-stepper-title">부가정보</span>
                            <span class="bs-stepper-subtitle">이력과 특이사항 정보를 입력합니다</span>
                          </span>
                        </button>
                      </div>
                    </div>
                    <div class="bs-stepper-content">
                      <form onSubmit="return false">
                        <!-- Account Details -->
                        <div id="account-details" class="content">
                          <div class="row g-3">
                    
                  <div class="col-sm-4">
                    <div class="card-body">
					<div action="/upload" class="dropzone needsclick" id="dropzone-basic">
					  <div class="dz-message needsclick">
					    Drop files here or click to upload
					    <span class="note needsclick">(This is just a demo dropzone. Selected files are <span class="fw-medium">not</span> actually uploaded.)</span>
					  </div>
					  <div class="fallback">
					    <input name="file" type="file" />
					  </div>
					</div>
                    </div>
                    <div>
                       	<label class="form-label">성별</label>
                           <div style="display: flex; gap: 20px;">
                            	<div class="form-check custom mb-2">
                           			<input
	                                type="radio"
	                                id="formValidationGender"
	                                name="formValidationGender"
	                                class="form-check-input"
	                                checked />
                            		<label class="form-check-label" for="formValidationGender">남자</label>
                            	 </div>
                           		 <div class="form-check custom">
	                            	<input
	                              	type="radio"
	                              	id="formValidationGender2"
	                              	name="formValidationGender"
	                              	class="form-check-input" />
	                            	<label class="form-check-label" for="formValidationGender2">여자</label>
                            	</div>
                            </div>
                       </div>
                  </div>
                  <div class="col-sm-4">
                            <div>
                              <label class="form-label" for="username">이름</label>
                              <input type="text" id="username" class="form-control" placeholder="실명 또는 활동명" />
                            </div>
                            <div>
                              <label class="form-label" for="email">이메일</label>
 							  <input type="text" id="email" class="form-control"/>
                            </div>
							<div>
                            	<label class="form-label" for="formValidationDob">생년월일</label>
	                       		<input
	                            	type="text"
	                            	class="form-control flatpickr-validation"
	                            	name="formValidationDob"
	                            	id="formValidationDob"
	                            	placeholder="YYYY-MM-DD"
	                            	required />
                      		</div>
                      		<div>
                              <label class="form-label" for="phone">주소</label>
 							  <input type="text" id="phone" class="form-control"/>
                            </div>
                            <div>
                              <label class="form-label" for="phone">상세주소</label>
 							  <input type="text" id="phone" class="form-control"/>
                            </div>
                      	</div>
                      	<div class="col-sm-4">
                      	    <div>
                              <label class="form-label" for="nickname">활동명</label>
                              <input type="text" id="nickname" class="form-control" placeholder="활동명" />
                            </div>
                            <div>
                              <label class="form-label" for="phone">연락처</label>
 							  <input type="text" id="phone" class="form-control"/>
                            </div>
                      		<div>
                         		<label class="form-label" for="formValidationSelect2">국적</label>
	                          	<select
		                            id="formValidationSelect2"
		                            name="formValidationSelect2"
		                            class="form-select select2"
		                            data-allow-clear="true">
		                            <option value="">국적 선택</option>
		                            <option value="Australia">Australia</option>
		                            <option value="Bangladesh">Bangladesh</option>
		                            <option value="Belarus">Belarus</option>
		                            <option value="Brazil">Brazil</option>
		                            <option value="Canada">Canada</option>
		                            <option value="China">China</option>
		                            <option value="France">France</option>
		                            <option value="Germany">Germany</option>
		                            <option value="India">India</option>
		                            <option value="Indonesia">Indonesia</option>
		                            <option value="Israel">Israel</option>
		                            <option value="Italy">Italy</option>
		                            <option value="Japan">Japan</option>
		                            <option value="Korea">Korea, Republic of</option>
		                            <option value="Mexico">Mexico</option>
		                            <option value="Philippines">Philippines</option>
		                            <option value="Russia">Russian Federation</option>
		                            <option value="South Africa">South Africa</option>
		                            <option value="Thailand">Thailand</option>
		                            <option value="Turkey">Turkey</option>
		                            <option value="Ukraine">Ukraine</option>
		                            <option value="United Arab Emirates">United Arab Emirates</option>
		                            <option value="United Kingdom">United Kingdom</option>
		                            <option value="United States">United States</option>
	                        	</select>
                      		</div>
                      		
                            <div>
                            	<label class="form-label" for="formValidationDob">계약시작일</label>
	                       		<input
	                            	type="text"
	                            	class="form-control flatpickr-validation"
	                            	name="formValidationDob"
	                            	id="startcontract"
	                            	placeholder="YYYY-MM-DD"
	                            	required />
                      		</div>

                      		<div>
                            	<label class="form-label" for="formValidationDob">계약만료일</label>
	                       		<input
	                            	type="text"
	                            	class="form-control flatpickr-validation"
	                            	name="formValidationDob"
	                            	id="endcontract"
	                            	placeholder="YYYY-MM-DD"
	                            	required />
                      		</div>
                            </div>

                            <div class="col-12 d-flex justify-content-between">
                              <button class="btn btn-label-secondary btn-prev" disabled>
                                <i class="bx bx-chevron-left bx-sm ms-sm-n2"></i>
                                <span class="align-middle d-sm-inline-block d-none">이전</span>
                              </button>
                              <button class="btn btn-primary btn-next">
                                <span class="align-middle d-sm-inline-block d-none me-sm-1">다음</span>
                                <i class="bx bx-chevron-right bx-sm me-sm-n2"></i>
                              </button>
                            </div>
                          </div>
                        </div>
                        <!-- Personal Info --> <!-- 두번째 -->
                        <div id="personal-info" class="content">
                          <div class="row g-3">
                          
                       <div class="col-6">
                          <div style="display: flex; justify-content: space-between; align-items: center;">
                          	<span>유튜브 링크 (대표채널을 선택해 주세요)</span>
                            <button type="button" class="btn btn-sm rounded-pill btn-icon btn-outline-primary mb-1">
                            <span class="tf-icons bx bx-plus"></span>
                          </button>                    	
                          </div>
                        <div class="mb-5" data-repeater-list="group-a">
                        <!-- 채널명, 가입일, 카테고리, 채널링크 div-->
                          <div class="repeater-wrapper pt-0 pt-md-4" data-repeater-item>
                            <div class="d-flex position-relative pe-0">
				            <div style="width:30px;" class="d-flex position-relative pe-0 align-items-center justify-content-center">
				                <!-- 여기에 라디오 버튼 추가 -->
				                <label class="form-check-label">
				                    <input type="radio" name="radioGroup" class="form-check-input" />
				                </label>
				            </div>
                              <div class="row w-100">
                                
                          	 	<div>
                          		    <input type="text" id="snslink" class="form-control" placeholder="채널명" />
                           		</div>
                                <div class="col-sm-3">
	                       		<input
	                            	type="text"
	                            	class="form-control flatpickr-validation"
	                            	name="formValidationDob"
	                            	id="startch"
	                            	placeholder="채널가입일"
	                            	required />
                      			</div>
                                
		                        <div class="col-sm-9" style="padding-left:0px">
									<input id="TagifyCustomInlineSuggestion" name="TagifyCustomInlineSuggestion" class="form-control" placeholder="select technologies" value="css, html, javascript">
		                        </div>
		                        
		                        <div>
                          		    <input type="text" id="snslink" class="form-control" placeholder="채널 링크를 입력하세요" />
                           		</div>


                              </div>
						  <button type="button" class="btn btn-sm rounded-pill btn-icon btn-outline-primary mb-1">
							   <span class="tf-icons bx bx-minus"></span>
                          </button>
                            </div>
                          </div>
                          
                          <!-- 위에꺼랑 같은거 -->
                          <div class="repeater-wrapper pt-0 pt-md-4" data-repeater-item="">
                            <div class="d-flex position-relative pe-0">
				            <div style="width:30px;" class="d-flex position-relative pe-0 align-items-center justify-content-center">
				                <!-- 여기에 라디오 버튼 추가 -->
				                <label class="form-check-label">
				                    <input type="radio" name="radioGroup" class="form-check-input">
				                </label>
				            </div>
                              <div class="row w-100">
                                
                          	 	<div>
                          		    <input type="text" id="snslink" class="form-control" placeholder="채널명">
                           		</div>
                                <div class="col-sm-3">
	                       		<input type="text" class="form-control flatpickr-validation flatpickr-input" name="formValidationDob" id="startch1" placeholder="채널가입일" required="" readonly="readonly">
                      			</div>
                                
		                        <div class="col-sm-9" style="padding-left:0px">
		                          <input id="TagifyCustomInlineSuggestion1" name="TagifyCustomInlineSuggestion1" class="form-control" placeholder="select technologies" value="css, html, javascript">
		                        </div>
		                        
		                        <div>
                          		    <input type="text" id="snslink" class="form-control" placeholder="채널 링크를 입력하세요">
                           		</div>


                              </div>
						  <button type="button" class="btn btn-sm rounded-pill btn-icon btn-outline-primary mb-1">
							   <span class="tf-icons bx bx-minus"></span>
                          </button>
                            </div>
                          </div>
                          <!-- 위에꺼랑 같은거 -->
                          
                     	 </div>

                      </div>
                      <div class="col-6">
                          <div style="display: flex; justify-content: space-between; align-items: center;">
                          	<span>기타 SNS 링크(인스타그램, 페이스북)</span>
                            <button type="button" class="btn btn-sm rounded-pill btn-icon btn-outline-primary mb-1">
                            <span class="tf-icons bx bx-plus"></span>
                          </button>                    	
                          </div>
                        <div class="mb-5" data-repeater-list="group-a">
                          <div class="repeater-wrapper pt-0 pt-md-4" data-repeater-item>
                            <div class="d-flex position-relative pe-0">
                              <div class="row w-100">
                                
                            <div>
                              <input type="text" id="snslink" class="form-control" placeholder="SNS 링크 입력" />
                            </div>


                              </div>
 								<button type="button" class="btn btn-sm rounded-pill btn-icon btn-outline-primary mb-1">
							   <span class="tf-icons bx bx-minus"></span>
                     	     </button>
                            </div>
                          </div>
                        </div>

                      </div>	
                            
                            <div class="col-12 d-flex justify-content-between">
                              <button class="btn btn-primary btn-prev">
                                <i class="bx bx-chevron-left bx-sm ms-sm-n2"></i>
                                <span class="align-middle d-sm-inline-block d-none">이전</span>
                              </button>
                              <button class="btn btn-primary btn-next">
                                <span class="align-middle d-sm-inline-block d-none me-sm-1">다음</span>
                                <i class="bx bx-chevron-right bx-sm me-sm-n2"></i>
                              </button>
                            </div>
                          </div>
                        </div>
                        <!-- Social Links --> <!-- 세번째 -->
                        <div id="social-links" class="content">
                          <div class="row g-3">
                          	
                          	<!-- 내용 -->
                          	<div class="col-6">
                          <div style="width: 630px; display: flex; justify-content: space-between; align-items: center;">
                          	<span>활동 이력</span>
                            <button type="button" class="btn btn-sm rounded-pill btn-icon btn-outline-primary mb-1">
                            <span class="tf-icons bx bx-plus"></span>
                          </button>                    	
                          </div>
                        <div class="mb-5" data-repeater-list="group-a"
	                        style="width: 662px;
						    height: 281.625px;
						    overflow-y: auto;">
                        <!-- 채널명, 가입일, 카테고리, 채널링크 div-->
                          <div class="repeater-wrapper pt-0 pt-md-4" data-repeater-item>
                            <div class="d-flex position-relative pe-0">
                              <div class="row w-100">
                                
                                <div class="col-sm-3">
	                       		<input
	                            	type="text"
	                            	class="form-control flatpickr-validation"
	                            	name="formValidationDob"
	                            	id="elday"
	                            	placeholder="이력일자"
	                            	value="2023-06-08"
	                            	required />
                      			</div>
                      			
                      			<div class="col-sm-6"></div>
                                
		                        <div class="col-sm-3" style="padding-left:0px">
			                        <select id="defaultSelect" class="form-select">
			                          <option>분류</option>
			                          <option value="1">구독자</option>
			                          <option value="2">조회수</option>
			                          <option value="3">버튼달성</option>
			                          <option value="4">수상</option>
			                        </select>
		                        </div>
                          	 	<div>
                          		    <input type="text" id="snslink" class="form-control" placeholder="채널명 또는 크리에이터명" />
                           		</div>
		                        
		                        <div>
                          		    <input type="text" id="snslink" class="form-control" placeholder="구독자 10만 달성" />
                           		</div>


                              </div>
                            </div>
                          </div>
                          
                          <!-- 위에꺼랑 같은거 -->
                          <div class="repeater-wrapper pt-0 pt-md-4" data-repeater-item="">
                            <div class="d-flex position-relative pe-0">
                              <div class="row w-100">
                                
                                <div class="col-sm-3">
	                       		<input
	                            	type="text"
	                            	class="form-control flatpickr-validation"
	                            	name="formValidationDob"
	                            	id="elday1"
	                            	placeholder="이력일자"
	                            	value="2023-12-08"
	                            	required />
                      			</div>
                      			
                      			<div class="col-sm-6"></div>
                                
		                        <div class="col-sm-3" style="padding-left:0px">
			                        <select id="defaultSelect" class="form-select">
			                          <option>분류</option>
			                          <option value="1">구독자</option>
			                          <option value="2">조회수</option>
			                          <option value="3">버튼달성</option>
			                          <option value="4">수상</option>
			                        </select>
		                        </div>
                          	 	<div>
                          		    <input type="text" id="snslink" class="form-control" placeholder="채널명 또는 크리에이터명" />
                           		</div>
		                        
		                        <div>
                          		    <input type="text" id="snslink" class="form-control" placeholder="유튜브 크리에이터 어워즈 대상" />
                           		</div>
                           		
                              </div>
                            </div>
                          </div>
                          <!-- 위에꺼랑 같은거 -->
                                                    <!-- 위에꺼랑 같은거 -->
                          <div class="repeater-wrapper pt-0 pt-md-4" data-repeater-item="">
                            <div class="d-flex position-relative pe-0">
                              <div class="row w-100">
                                
                                <div class="col-sm-3">
	                       		<input
	                            	type="text"
	                            	class="form-control flatpickr-validation"
	                            	name="formValidationDob"
	                            	id="elday2"
	                            	placeholder="이력일자"
	                            	value="2023-12-08"
	                            	required />
                      			</div>
                      			
                      			<div class="col-sm-6"></div>
                                
		                        <div class="col-sm-3" style="padding-left:0px">
			                        <select id="defaultSelect" class="form-select">
			                          <option>분류</option>
			                          <option value="1">구독자</option>
			                          <option value="2">조회수</option>
			                          <option value="3">버튼달성</option>
			                          <option value="4">수상</option>
			                        </select>
		                        </div>
                          	 	<div>
                          		    <input type="text" id="snslink" class="form-control" placeholder="채널명 또는 크리에이터명" />
                           		</div>
		                        
		                        <div>
                          		    <input type="text" id="snslink" class="form-control" placeholder="유튜브 크리에이터 어워즈 대상" />
                           		</div>
                           		
                              </div>
                            </div>
                          </div>
                          <!-- 위에꺼랑 같은거 -->
                          
                     	 </div>

                      </div>
                      <div class="col-6">
                          <div style="display: flex; justify-content: space-between; align-items: center;">
                          	<span>특이사항</span>               	
                          </div>
                        <div class="mb-5" data-repeater-list="group-a">
                          <div class="repeater-wrapper pt-0 pt-md-4" data-repeater-item>
                            <div class="d-flex position-relative pe-0">
                              <div class="row w-100">
                                
                                <div>
			                       <textarea class="form-control" 
			                       id="exampleFormControlTextarea1" rows="3" 
			                       placeholder="특이사항 및 참고사항을 입력해주세요"
			                       style="height:264px"></textarea>
			                    </div>

                              </div>
                            </div>
                          </div>
                        </div>

                      </div>	
                            
                            <div style="width:250px">
                              <input type="text" id="manegername" class="form-control" placeholder="매니저 선택" />
                            </div>
                            
                            <div class="col-12 d-flex justify-content-between">
                              <button class="btn btn-primary btn-prev">
                                <i class="bx bx-chevron-left bx-sm ms-sm-n2"></i>
                                <span class="align-middle d-sm-inline-block d-none">이전</span>
                              </button>
                              <button class="btn btn-success btn-submit">완료</button>
                            </div>
							
                          </div>
                        </div>
                 		<!-- 세번쨰 -->
                      </form>
                      <!-- 1~3 폼제출 -->
                    </div>
                  </div>
                </div>
                <!-- /Default Wizard -->
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
    <script src="../../assets/vendor/libs/bs-stepper/bs-stepper.js"></script>
    <script src="../../assets/vendor/libs/bootstrap-select/bootstrap-select.js"></script>
    <script src="../../assets/vendor/libs/select2/select2.js"></script>
    <script src="../../assets/vendor/libs/@form-validation/umd/bundle/popular.min.js"></script>
    <script src="../../assets/vendor/libs/@form-validation/umd/plugin-bootstrap5/index.min.js"></script>
    <script src="../../assets/vendor/libs/@form-validation/umd/plugin-auto-focus/index.min.js"></script>
    <script src="../../assets/vendor/libs/flatpickr/flatpickr.js"></script> <!-- 캘린더데이터들어있는 js -->
    <script src="../../assets/vendor/libs/dropzone/dropzone.js"></script>
    <script src="../../assets/vendor/libs/tagify/tagify.js"></script>
    
    <script src="../../assets/vendor/libs/cleavejs/cleave.js"></script> <!-- 추가 -->
    <script src="../../assets/vendor/libs/cleavejs/cleave-phone.js"></script>
    <script src="../../assets/vendor/libs/jquery-repeater/jquery-repeater.js"></script>
    
    <script>
       var flatpickrDate = document.querySelector("#formValidationDob"); // 캘린더
   
       flatpickrDate.flatpickr({
         monthSelectorType: "static"
       });
    </script>
    <script>
       var flatpickrDate = document.querySelector("#startcontract"); // 캘린더
   
       flatpickrDate.flatpickr({
         monthSelectorType: "static"
       });
    </script>
    <script>
       var flatpickrDate = document.querySelector("#endcontract"); // 캘린더
   
       flatpickrDate.flatpickr({
         monthSelectorType: "static"
       });
    </script>
    <script>
       var flatpickrDate = document.querySelector("#startch"); // 캘린더
   
       flatpickrDate.flatpickr({
         monthSelectorType: "static"
       });
    </script>
    <script>
       var flatpickrDate = document.querySelector("#startch1"); // 캘린더
   
       flatpickrDate.flatpickr({
         monthSelectorType: "static"
       });
    </script>
    <script>
       var flatpickrDate = document.querySelector("#elday"); // 캘린더
   
       flatpickrDate.flatpickr({
         monthSelectorType: "static"
       });
    </script>
    <script>
       var flatpickrDate = document.querySelector("#elday1"); // 캘린더
   
       flatpickrDate.flatpickr({
         monthSelectorType: "static"
       });
    </script>
    <script>
       var flatpickrDate = document.querySelector("#elday2"); // 캘린더
   
       flatpickrDate.flatpickr({
         monthSelectorType: "static"
       });
    </script>
    <script> // 이미지드랍
    const myDropzone = new Dropzone('#dropzone-basic', {
    	  previewTemplate: previewTemplate,
    	  parallelUploads: 1,
    	  maxFilesize: 5,
    	  addRemoveLinks: true,
    	  maxFiles: 1
    	});
    </script>
    <script> // select css,java 어쩌구 
    const TagifyCustomInlineSuggestionEl = document.querySelector("#TagifyCustomInlineSuggestion");

    const whitelist = [
      "A# .NET",
      "A# (Axiom)",
      "A-0 System",
      "A+",
      "A++",
      "ABAP",
      "ABC",
      "ABC ALGOL",
      "ABSET",
      "ABSYS",
      "ACC",
      "Accent",
      "Ace DASL",
      "ACL2",
      "Avicsoft",
      "ACT-III",
      "Action!",
      "ActionScript",
      "Ada",
      "Adenine",
    ];
    // Inline
    let TagifyCustomInlineSuggestion = new Tagify(TagifyCustomInlineSuggestionEl, {
      whitelist: whitelist,
      maxTags: 10, // allows to select max items
      dropdown: {
        maxItems: 20, // display max items
        classname: "tags-inline", // Custom inline class
        enabled: 0,
        closeOnSelect: false
      }
    });
    </script>
    <script>
    const TagifyCustomInlineSuggestionEl1 = document.querySelector("#TagifyCustomInlineSuggestion1");

    const whitelist1 = [
      "A# .NET",
      "A# (Axiom)",
      "A-0 System",
      "A+",
      "A++",
      "ABAP",
      "ABC",
      "ABC ALGOL",
      "ABSET",
      "ABSYS",
      "ACC",
      "Accent",
      "Ace DASL",
      "ACL2",
      "Avicsoft",
      "ACT-III",
      "Action!",
      "ActionScript",
      "Ada",
      "Adenine",
      "Agda",
    ];
    // Inline
    let TagifyCustomInlineSuggestion1 = new Tagify(TagifyCustomInlineSuggestionEl1, {
      whitelist: whitelist1,
      maxTags: 10, // allows to select max items
      dropdown: {
        maxItems: 20, // display max items
        classname: "tags-inline", // Custom inline class
        enabled: 0,
        closeOnSelect: false
      }
    });
    </script>
    <script>
    eval("// jquery.repeater version 1.2.1\n// https://github.com/DubFriend/jquery.repeater\n// (MIT) 09-10-2016\n// Brian Detering <BDeterin@gmail.com> (http://www.briandetering.net/)\n(function ($) {\n'use strict';\n\nvar identity = function (x) {\n    return x;\n};\n\nvar isArray = function (value) {\n    return $.isArray(value);\n};\n\nvar isObject = function (value) {\n    return !isArray(value) && (value instanceof Object);\n};\n\nvar isNumber = function (value) {\n    return value instanceof Number;\n};\n\nvar isFunction = function (value) {\n    return value instanceof Function;\n};\n\nvar indexOf = function (object, value) {\n    return $.inArray(value, object);\n};\n\nvar inArray = function (array, value) {\n    return indexOf(array, value) !== -1;\n};\n\nvar foreach = function (collection, callback) {\n    for(var i in collection) {\n        if(collection.hasOwnProperty(i)) {\n            callback(collection[i], i, collection);\n        }\n    }\n};\n\n\nvar last = function (array) {\n    return array[array.length - 1];\n};\n\nvar argumentsToArray = function (args) {\n    return Array.prototype.slice.call(args);\n};\n\nvar extend = function () {\n    var extended = {};\n    foreach(argumentsToArray(arguments), function (o) {\n        foreach(o, function (val, key) {\n            extended[key] = val;\n        });\n    });\n    return extended;\n};\n\nvar mapToArray = function (collection, callback) {\n    var mapped = [];\n    foreach(collection, function (value, key, coll) {\n        mapped.push(callback(value, key, coll));\n    });\n    return mapped;\n};\n\nvar mapToObject = function (collection, callback, keyCallback) {\n    var mapped = {};\n    foreach(collection, function (value, key, coll) {\n        key = keyCallback ? keyCallback(key, value) : key;\n        mapped[key] = callback(value, key, coll);\n    });\n    return mapped;\n};\n\nvar map = function (collection, callback, keyCallback) {\n    return isArray(collection) ?\n        mapToArray(collection, callback) :\n        mapToObject(collection, callback, keyCallback);\n};\n\nvar pluck = function (arrayOfObjects, key) {\n    return map(arrayOfObjects, function (val) {\n        return val[key];\n    });\n};\n\nvar filter = function (collection, callback) {\n    var filtered;\n\n    if(isArray(collection)) {\n        filtered = [];\n        foreach(collection, function (val, key, coll) {\n            if(callback(val, key, coll)) {\n                filtered.push(val);\n            }\n        });\n    }\n    else {\n        filtered = {};\n        foreach(collection, function (val, key, coll) {\n            if(callback(val, key, coll)) {\n                filtered[key] = val;\n            }\n        });\n    }\n\n    return filtered;\n};\n\nvar call = function (collection, functionName, args) {\n    return map(collection, function (object, name) {\n        return object[functionName].apply(object, args || []);\n    });\n};\n\n//execute callback immediately and at most one time on the minimumInterval,\n//ignore block attempts\nvar throttle = function (minimumInterval, callback) {\n    var timeout = null;\n    return function () {\n        var that = this, args = arguments;\n        if(timeout === null) {\n            timeout = setTimeout(function () {\n                timeout = null;\n            }, minimumInterval);\n            callback.apply(that, args);\n        }\n    };\n};\n\n\nvar mixinPubSub = function (object) {\n    object = object || {};\n    var topics = {};\n\n    object.publish = function (topic, data) {\n        foreach(topics[topic], function (callback) {\n            callback(data);\n        });\n    };\n\n    object.subscribe = function (topic, callback) {\n        topics[topic] = topics[topic] || [];\n        topics[topic].push(callback);\n    };\n\n    object.unsubscribe = function (callback) {\n        foreach(topics, function (subscribers) {\n            var index = indexOf(subscribers, callback);\n            if(index !== -1) {\n                subscribers.splice(index, 1);\n            }\n        });\n    };\n\n    return object;\n};\n\n// jquery.input version 0.0.0\n// https://github.com/DubFriend/jquery.input\n// (MIT) 09-04-2014\n// Brian Detering <BDeterin@gmail.com> (http://www.briandetering.net/)\n(function ($) {\n'use strict';\n\nvar createBaseInput = function (fig, my) {\n    var self = mixinPubSub(),\n        $self = fig.$;\n\n    self.getType = function () {\n        throw 'implement me (return type. \"text\", \"radio\", etc.)';\n    };\n\n    self.$ = function (selector) {\n        return selector ? $self.find(selector) : $self;\n    };\n\n    self.disable = function () {\n        self.$().prop('disabled', true);\n        self.publish('isEnabled', false);\n    };\n\n    self.enable = function () {\n        self.$().prop('disabled', false);\n        self.publish('isEnabled', true);\n    };\n\n    my.equalTo = function (a, b) {\n        return a === b;\n    };\n\n    my.publishChange = (function () {\n        var oldValue;\n        return function (e, domElement) {\n            var newValue = self.get();\n            if(!my.equalTo(newValue, oldValue)) {\n                self.publish('change', { e: e, domElement: domElement });\n            }\n            oldValue = newValue;\n        };\n    }());\n\n    return self;\n};\n\n\nvar createInput = function (fig, my) {\n    var self = createBaseInput(fig, my);\n\n    self.get = function () {\n        return self.$().val();\n    };\n\n    self.set = function (newValue) {\n        self.$().val(newValue);\n    };\n\n    self.clear = function () {\n        self.set('');\n    };\n\n    my.buildSetter = function (callback) {\n        return function (newValue) {\n            callback.call(self, newValue);\n        };\n    };\n\n    return self;\n};\n\nvar inputEqualToArray = function (a, b) {\n    a = isArray(a) ? a : [a];\n    b = isArray(b) ? b : [b];\n\n    var isEqual = true;\n    if(a.length !== b.length) {\n        isEqual = false;\n    }\n    else {\n        foreach(a, function (value) {\n            if(!inArray(b, value)) {\n                isEqual = false;\n            }\n        });\n    }\n\n    return isEqual;\n};\n\nvar createInputButton = function (fig) {\n    var my = {},\n        self = createInput(fig, my);\n\n    self.getType = function () {\n        return 'button';\n    };\n\n    self.$().on('change', function (e) {\n        my.publishChange(e, this);\n    });\n\n    return self;\n};\n\nvar createInputCheckbox = function (fig) {\n    var my = {},\n        self = createInput(fig, my);\n\n    self.getType = function () {\n        return 'checkbox';\n    };\n\n    self.get = function () {\n        var values = [];\n        self.$().filter(':checked').each(function () {\n            values.push($(this).val());\n        });\n        return values;\n    };\n\n    self.set = function (newValues) {\n        newValues = isArray(newValues) ? newValues : [newValues];\n\n        self.$().each(function () {\n            $(this).prop('checked', false);\n        });\n\n        foreach(newValues, function (value) {\n            self.$().filter('[value=\"' + value + '\"]')\n                .prop('checked', true);\n        });\n    };\n\n    my.equalTo = inputEqualToArray;\n\n    self.$().change(function (e) {\n        my.publishChange(e, this);\n    });\n\n    return self;\n};\n\nvar createInputEmail = function (fig) {\n    var my = {},\n        self = createInputText(fig, my);\n\n    self.getType = function () {\n        return 'email';\n    };\n\n    return self;\n};\n\nvar createInputFile = function (fig) {\n    var my = {},\n        self = createBaseInput(fig, my);\n\n    self.getType = function () {\n        return 'file';\n    };\n\n    self.get = function () {\n        return last(self.$().val().split('\\\\'));\n    };\n\n    self.clear = function () {\n        // http://stackoverflow.com/questions/1043957/clearing-input-type-file-using-jquery\n        this.$().each(function () {\n            $(this).wrap('<form>').closest('form').get(0).reset();\n            $(this).unwrap();\n        });\n    };\n\n    self.$().change(function (e) {\n        my.publishChange(e, this);\n        // self.publish('change', self);\n    });\n\n    return self;\n};\n\nvar createInputHidden = function (fig) {\n    var my = {},\n        self = createInput(fig, my);\n\n    self.getType = function () {\n        return 'hidden';\n    };\n\n    self.$().change(function (e) {\n        my.publishChange(e, this);\n    });\n\n    return self;\n};\nvar createInputMultipleFile = function (fig) {\n    var my = {},\n        self = createBaseInput(fig, my);\n\n    self.getType = function () {\n        return 'file[multiple]';\n    };\n\n    self.get = function () {\n        // http://stackoverflow.com/questions/14035530/how-to-get-value-of-html-5-multiple-file-upload-variable-using-jquery\n        var fileListObject = self.$().get(0).files || [],\n            names = [], i;\n\n        for(i = 0; i < (fileListObject.length || 0); i += 1) {\n            names.push(fileListObject[i].name);\n        }\n\n        return names;\n    };\n\n    self.clear = function () {\n        // http://stackoverflow.com/questions/1043957/clearing-input-type-file-using-jquery\n        this.$().each(function () {\n            $(this).wrap('<form>').closest('form').get(0).reset();\n            $(this).unwrap();\n        });\n    };\n\n    self.$().change(function (e) {\n        my.publishChange(e, this);\n    });\n\n    return self;\n};\n\nvar createInputMultipleSelect = function (fig) {\n    var my = {},\n        self = createInput(fig, my);\n\n    self.getType = function () {\n        return 'select[multiple]';\n    };\n\n    self.get = function () {\n        return self.$().val() || [];\n    };\n\n    self.set = function (newValues) {\n        self.$().val(\n            newValues === '' ? [] : isArray(newValues) ? newValues : [newValues]\n        );\n    };\n\n    my.equalTo = inputEqualToArray;\n\n    self.$().change(function (e) {\n        my.publishChange(e, this);\n    });\n\n    return self;\n};\n\nvar createInputPassword = function (fig) {\n    var my = {},\n        self = createInputText(fig, my);\n\n    self.getType = function () {\n        return 'password';\n    };\n\n    return self;\n};\n\nvar createInputRadio = function (fig) {\n    var my = {},\n        self = createInput(fig, my);\n\n    self.getType = function () {\n        return 'radio';\n    };\n\n    self.get = function () {\n        return self.$().filter(':checked').val() || null;\n    };\n\n    self.set = function (newValue) {\n        if(!newValue) {\n            self.$().each(function () {\n                $(this).prop('checked', false);\n            });\n        }\n        else {\n            self.$().filter('[value=\"' + newValue + '\"]').prop('checked', true);\n        }\n    };\n\n    self.$().change(function (e) {\n        my.publishChange(e, this);\n    });\n\n    return self;\n};\n\nvar createInputRange = function (fig) {\n    var my = {},\n        self = createInput(fig, my);\n\n    self.getType = function () {\n        return 'range';\n    };\n\n    self.$().change(function (e) {\n        my.publishChange(e, this);\n    });\n\n    return self;\n};\n\nvar createInputSelect = function (fig) {\n    var my = {},\n        self = createInput(fig, my);\n\n    self.getType = function () {\n        return 'select';\n    };\n\n    self.$().change(function (e) {\n        my.publishChange(e, this);\n    });\n\n    return self;\n};\n\nvar createInputText = function (fig) {\n    var my = {},\n        self = createInput(fig, my);\n\n    self.getType = function () {\n        return 'text';\n    };\n\n    self.$().on('change keyup keydown', function (e) {\n        my.publishChange(e, this);\n    });\n\n    return self;\n};\n\nvar createInputTextarea = function (fig) {\n    var my = {},\n        self = createInput(fig, my);\n\n    self.getType = function () {\n        return 'textarea';\n    };\n\n    self.$().on('change keyup keydown', function (e) {\n        my.publishChange(e, this);\n    });\n\n    return self;\n};\n\nvar createInputURL = function (fig) {\n    var my = {},\n        self = createInputText(fig, my);\n\n    self.getType = function () {\n        return 'url';\n    };\n\n    return self;\n};\n\nvar buildFormInputs = function (fig) {\n    var inputs = {},\n        $self = fig.$;\n\n    var constructor = fig.constructorOverride || {\n        button: createInputButton,\n        text: createInputText,\n        url: createInputURL,\n        email: createInputEmail,\n        password: createInputPassword,\n        range: createInputRange,\n        textarea: createInputTextarea,\n        select: createInputSelect,\n        'select[multiple]': createInputMultipleSelect,\n        radio: createInputRadio,\n        checkbox: createInputCheckbox,\n        file: createInputFile,\n        'file[multiple]': createInputMultipleFile,\n        hidden: createInputHidden\n    };\n\n    var addInputsBasic = function (type, selector) {\n        var $input = isObject(selector) ? selector : $self.find(selector);\n\n        $input.each(function () {\n            var name = $(this).attr('name');\n            inputs[name] = constructor[type]({\n                $: $(this)\n            });\n        });\n    };\n\n    var addInputsGroup = function (type, selector) {\n        var names = [],\n            $input = isObject(selector) ? selector : $self.find(selector);\n\n        if(isObject(selector)) {\n            inputs[$input.attr('name')] = constructor[type]({\n                $: $input\n            });\n        }\n        else {\n            // group by name attribute\n            $input.each(function () {\n                if(indexOf(names, $(this).attr('name')) === -1) {\n                    names.push($(this).attr('name'));\n                }\n            });\n\n            foreach(names, function (name) {\n                inputs[name] = constructor[type]({\n                    $: $self.find('input[name=\"' + name + '\"]')\n                });\n            });\n        }\n    };\n\n\n    if($self.is('input, select, textarea')) {\n        if($self.is('input[type=\"button\"], button, input[type=\"submit\"]')) {\n            addInputsBasic('button', $self);\n        }\n        else if($self.is('textarea')) {\n            addInputsBasic('textarea', $self);\n        }\n        else if(\n            $self.is('input[type=\"text\"]') ||\n            $self.is('input') && !$self.attr('type')\n        ) {\n            addInputsBasic('text', $self);\n        }\n        else if($self.is('input[type=\"password\"]')) {\n            addInputsBasic('password', $self);\n        }\n        else if($self.is('input[type=\"email\"]')) {\n            addInputsBasic('email', $self);\n        }\n        else if($self.is('input[type=\"url\"]')) {\n            addInputsBasic('url', $self);\n        }\n        else if($self.is('input[type=\"range\"]')) {\n            addInputsBasic('range', $self);\n        }\n        else if($self.is('select')) {\n            if($self.is('[multiple]')) {\n                addInputsBasic('select[multiple]', $self);\n            }\n            else {\n                addInputsBasic('select', $self);\n            }\n        }\n        else if($self.is('input[type=\"file\"]')) {\n            if($self.is('[multiple]')) {\n                addInputsBasic('file[multiple]', $self);\n            }\n            else {\n                addInputsBasic('file', $self);\n            }\n        }\n        else if($self.is('input[type=\"hidden\"]')) {\n            addInputsBasic('hidden', $self);\n        }\n        else if($self.is('input[type=\"radio\"]')) {\n            addInputsGroup('radio', $self);\n        }\n        else if($self.is('input[type=\"checkbox\"]')) {\n            addInputsGroup('checkbox', $self);\n        }\n        else {\n            //in all other cases default to a \"text\" input interface.\n            addInputsBasic('text', $self);\n        }\n    }\n    else {\n        addInputsBasic('button', 'input[type=\"button\"], button, input[type=\"submit\"]');\n        addInputsBasic('text', 'input[type=\"text\"]');\n        addInputsBasic('password', 'input[type=\"password\"]');\n        addInputsBasic('email', 'input[type=\"email\"]');\n        addInputsBasic('url', 'input[type=\"url\"]');\n        addInputsBasic('range', 'input[type=\"range\"]');\n        addInputsBasic('textarea', 'textarea');\n        addInputsBasic('select', 'select:not([multiple])');\n        addInputsBasic('select[multiple]', 'select[multiple]');\n        addInputsBasic('file', 'input[type=\"file\"]:not([multiple])');\n        addInputsBasic('file[multiple]', 'input[type=\"file\"][multiple]');\n        addInputsBasic('hidden', 'input[type=\"hidden\"]');\n        addInputsGroup('radio', 'input[type=\"radio\"]');\n        addInputsGroup('checkbox', 'input[type=\"checkbox\"]');\n    }\n\n    return inputs;\n};\n\n$.fn.inputVal = function (newValue) {\n    var $self = $(this);\n\n    var inputs = buildFormInputs({ $: $self });\n\n    if($self.is('input, textarea, select')) {\n        if(typeof newValue === 'undefined') {\n            return inputs[$self.attr('name')].get();\n        }\n        else {\n            inputs[$self.attr('name')].set(newValue);\n            return $self;\n        }\n    }\n    else {\n        if(typeof newValue === 'undefined') {\n            return call(inputs, 'get');\n        }\n        else {\n            foreach(newValue, function (value, inputName) {\n                inputs[inputName].set(value);\n            });\n            return $self;\n        }\n    }\n};\n\n$.fn.inputOnChange = function (callback) {\n    var $self = $(this);\n    var inputs = buildFormInputs({ $: $self });\n    foreach(inputs, function (input) {\n        input.subscribe('change', function (data) {\n            callback.call(data.domElement, data.e);\n        });\n    });\n    return $self;\n};\n\n$.fn.inputDisable = function () {\n    var $self = $(this);\n    call(buildFormInputs({ $: $self }), 'disable');\n    return $self;\n};\n\n$.fn.inputEnable = function () {\n    var $self = $(this);\n    call(buildFormInputs({ $: $self }), 'enable');\n    return $self;\n};\n\n$.fn.inputClear = function () {\n    var $self = $(this);\n    call(buildFormInputs({ $: $self }), 'clear');\n    return $self;\n};\n\n}(jQuery));\n\n$.fn.repeaterVal = function () {\n    var parse = function (raw) {\n        var parsed = [];\n\n        foreach(raw, function (val, key) {\n            var parsedKey = [];\n            if(key !== \"undefined\") {\n                parsedKey.push(key.match(/^[^\\[]*/)[0]);\n                parsedKey = parsedKey.concat(map(\n                    key.match(/\\[[^\\]]*\\]/g),\n                    function (bracketed) {\n                        return bracketed.replace(/[\\[\\]]/g, '');\n                    }\n                ));\n\n                parsed.push({\n                    val: val,\n                    key: parsedKey\n                });\n            }\n        });\n\n        return parsed;\n    };\n\n    var build = function (parsed) {\n        if(\n            parsed.length === 1 &&\n            (parsed[0].key.length === 0 || parsed[0].key.length === 1 && !parsed[0].key[0])\n        ) {\n            return parsed[0].val;\n        }\n\n        foreach(parsed, function (p) {\n            p.head = p.key.shift();\n        });\n\n        var grouped = (function () {\n            var grouped = {};\n\n            foreach(parsed, function (p) {\n                if(!grouped[p.head]) {\n                    grouped[p.head] = [];\n                }\n                grouped[p.head].push(p);\n            });\n\n            return grouped;\n        }());\n\n        var built;\n\n        if(/^[0-9]+$/.test(parsed[0].head)) {\n            built = [];\n            foreach(grouped, function (group) {\n                built.push(build(group));\n            });\n        }\n        else {\n            built = {};\n            foreach(grouped, function (group, key) {\n                built[key] = build(group);\n            });\n        }\n\n        return built;\n    };\n\n    return build(parse($(this).inputVal()));\n};\n\n$.fn.repeater = function (fig) {\n    fig = fig || {};\n\n    var setList;\n\n    $(this).each(function () {\n\n        var $self = $(this);\n\n        var show = fig.show || function () {\n            $(this).show();\n        };\n\n        var hide = fig.hide || function (removeElement) {\n            removeElement();\n        };\n\n        var $list = $self.find('[data-repeater-list]').first();\n\n        var $filterNested = function ($items, repeaters) {\n            return $items.filter(function () {\n                return repeaters ?\n                    $(this).closest(\n                        pluck(repeaters, 'selector').join(',')\n                    ).length === 0 : true;\n            });\n        };\n\n        var $items = function () {\n            return $filterNested($list.find('[data-repeater-item]'), fig.repeaters);\n        };\n\n        var $itemTemplate = $list.find('[data-repeater-item]')\n                                 .first().clone().hide();\n\n        var $firstDeleteButton = $filterNested(\n            $filterNested($(this).find('[data-repeater-item]'), fig.repeaters)\n            .first().find('[data-repeater-delete]'),\n            fig.repeaters\n        );\n\n        if(fig.isFirstItemUndeletable && $firstDeleteButton) {\n            $firstDeleteButton.remove();\n        }\n\n        var getGroupName = function () {\n            var groupName = $list.data('repeater-list');\n            return fig.$parent ?\n                fig.$parent.data('item-name') + '[' + groupName + ']' :\n                groupName;\n        };\n\n        var initNested = function ($listItems) {\n            if(fig.repeaters) {\n                $listItems.each(function () {\n                    var $item = $(this);\n                    foreach(fig.repeaters, function (nestedFig) {\n                        $item.find(nestedFig.selector).repeater(extend(\n                            nestedFig, { $parent: $item }\n                        ));\n                    });\n                });\n            }\n        };\n\n        var $foreachRepeaterInItem = function (repeaters, $item, cb) {\n            if(repeaters) {\n                foreach(repeaters, function (nestedFig) {\n                    cb.call($item.find(nestedFig.selector)[0], nestedFig);\n                });\n            }\n        };\n\n        var setIndexes = function ($items, groupName, repeaters) {\n            $items.each(function (index) {\n                var $item = $(this);\n                $item.data('item-name', groupName + '[' + index + ']');\n                $filterNested($item.find('[name]'), repeaters)\n                .each(function () {\n                    var $input = $(this);\n                    // match non empty brackets (ex: \"[foo]\")\n                    var matches = $input.attr('name').match(/\\[[^\\]]+\\]/g);\n\n                    var name = matches ?\n                        // strip \"[\" and \"]\" characters\n                        last(matches).replace(/\\[|\\]/g, '') :\n                        $input.attr('name');\n\n\n                    var newName = groupName + '[' + index + '][' + name + ']' +\n                        ($input.is(':checkbox') || $input.attr('multiple') ? '[]' : '');\n\n                    $input.attr('name', newName);\n\n                    $foreachRepeaterInItem(repeaters, $item, function (nestedFig) {\n                        var $repeater = $(this);\n                        setIndexes(\n                            $filterNested($repeater.find('[data-repeater-item]'), nestedFig.repeaters || []),\n                            groupName + '[' + index + ']' +\n                                        '[' + $repeater.find('[data-repeater-list]').first().data('repeater-list') + ']',\n                            nestedFig.repeaters\n                        );\n                    });\n                });\n            });\n\n            $list.find('input[name][checked]')\n                .removeAttr('checked')\n                .prop('checked', true);\n        };\n\n        setIndexes($items(), getGroupName(), fig.repeaters);\n        initNested($items());\n        if(fig.initEmpty) {\n            $items().remove();\n        }\n\n        if(fig.ready) {\n            fig.ready(function () {\n                setIndexes($items(), getGroupName(), fig.repeaters);\n            });\n        }\n\n        var appendItem = (function () {\n            var setItemsValues = function ($item, data, repeaters) {\n                if(data || fig.defaultValues) {\n                    var inputNames = {};\n                    $filterNested($item.find('[name]'), repeaters).each(function () {\n                        var key = $(this).attr('name').match(/\\[([^\\]]*)(\\]|\\]\\[\\])$/)[1];\n                        inputNames[key] = $(this).attr('name');\n                    });\n\n                    $item.inputVal(map(\n                        filter(data || fig.defaultValues, function (val, name) {\n                            return inputNames[name];\n                        }),\n                        identity,\n                        function (name) {\n                            return inputNames[name];\n                        }\n                    ));\n                }\n\n\n                $foreachRepeaterInItem(repeaters, $item, function (nestedFig) {\n                    var $repeater = $(this);\n                    $filterNested(\n                        $repeater.find('[data-repeater-item]'),\n                        nestedFig.repeaters\n                    )\n                    .each(function () {\n                        var fieldName = $repeater.find('[data-repeater-list]').data('repeater-list');\n                        if(data && data[fieldName]) {\n                            var $template = $(this).clone();\n                            $repeater.find('[data-repeater-item]').remove();\n                            foreach(data[fieldName], function (data) {\n                                var $item = $template.clone();\n                                setItemsValues(\n                                    $item,\n                                    data,\n                                    nestedFig.repeaters || []\n                                );\n                                $repeater.find('[data-repeater-list]').append($item);\n                            });\n                        }\n                        else {\n                            setItemsValues(\n                                $(this),\n                                nestedFig.defaultValues,\n                                nestedFig.repeaters || []\n                            );\n                        }\n                    });\n                });\n\n            };\n\n            return function ($item, data) {\n                $list.append($item);\n                setIndexes($items(), getGroupName(), fig.repeaters);\n                $item.find('[name]').each(function () {\n                    $(this).inputClear();\n                });\n                setItemsValues($item, data || fig.defaultValues, fig.repeaters);\n            };\n        }());\n\n        var addItem = function (data) {\n            var $item = $itemTemplate.clone();\n            appendItem($item, data);\n            if(fig.repeaters) {\n                initNested($item);\n            }\n            show.call($item.get(0));\n        };\n\n        setList = function (rows) {\n            $items().remove();\n            foreach(rows, addItem);\n        };\n\n        $filterNested($self.find('[data-repeater-create]'), fig.repeaters).click(function () {\n            addItem();\n        });\n\n        $list.on('click', '[data-repeater-delete]', function () {\n            var self = $(this).closest('[data-repeater-item]').get(0);\n            hide.call(self, function () {\n                $(self).remove();\n                setIndexes($items(), getGroupName(), fig.repeaters);\n            });\n        });\n    });\n\n    this.setList = setList;\n\n    return this;\n};\n\n}(jQuery));\n\n//# sourceURL=webpack://Sneat/./node_modules/jquery.repeater/jquery.repeater.js?");
    </script>
  

    <!-- Main JS -->
    <script src="../../assets/js/main.js"></script>

    <!-- Page JS -->
	
    <script src="../../assets/js/form-wizard-numbered.js"></script>
    <script src="../../assets/js/form-wizard-validation.js"></script>
    <script src="../../assets/js/forms-file-upload.js"></script>
  </body>
</html>
