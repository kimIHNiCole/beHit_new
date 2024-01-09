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

	<title>BeHit - 크리에이터 관리</title>
	
    <meta name="description" content="" />
    <!-- pretendard 폰트 -->
	<link rel="stylesheet" type="text/css" href='https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css'>
	<style>
		.ch-form{
			margin: 3px;
		}
		.ch-area{
			width:500px;
		}
		.btn-outline-primary{
			border: none !important;
			margin-left: 20px !important;
		}
		.ch-card{
			padding: 11px 5px !important;
		    border-radius: 10px;
		    margin: 13px 8px;
		    box-shadow: 4px 2px 14px 1px lightgray
		}
		
		.act-form{
			margin: 2px;
		}
		.act-card{
			padding: 11px 5px !important;
		    border-radius: 10px;
		    margin: 13px 8px;
		    box-shadow: 4px 2px 14px 1px lightgray;
		    justify-content: space-between;
	        margin-left: 5px !important;
    		width: 93% !important;
		}
		.org-tree{
			width: 300px !important;
			height: 450px;
    		margin: 0 auto;
		}
		.org-header{
			border-bottom: 1px solid #c20000 !important;
    		padding-bottom: 15px !important;
		}
		.org-body{
			overflow-y : scroll;
			overflow-x : hidden;	
			padding: 7px !important;
		}
		
		#cre_specifics{
			resize: none;
		}
		
		/*영상링크*/
		.videoUrlForm{
			position: relative;
		}
		.urlChekBtn{
			position: absolute;
		    padding: 0 13px;
		    border: none;
		    border-left: 1.5px solid #c20000;
		    background: none;
		    right: 14px;
		    top: 11px;
		    color: #878787
		}	
		.urlChekBtn:hover{
			color: black;
		}	
		
		.selectCate {
		    display: block;
		    padding: 0.4375rem 0.875rem;
		    font-size: 0.9375rem;
		    font-weight: 400;
		    line-height: 1.53;
		    color: #697a8d;
		    appearance: none;
		    background-color: #fff;
		    background-clip: padding-box;
		    border: var(--bs-border-width) solid #d9dee3;
		    border-radius: var(--bs-border-radius);
		}
	</style>
    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="../../assets/img/favicon/favicon.ico" />

    <!-- Fonts -->
    <!-- <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
      rel="stylesheet" /> -->

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
    <!-- jstree CSS -->
    <link rel="stylesheet" href="../../assets/vendor/libs/jstree/jstree.css" />

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
        <!-- 여기서부터 붙여넣기 -->
      
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
                      <!-- <form action="creatorAdd.do" method="post"> -->
                        <!-- Account Details -->
                        <div id="account-details" class="content">
                          <div class="row g-3">
                    
                  <div class="col-sm-3">
                    <div class="card-body">
					  <label for="uploadPhoto" style="cursor:pointer">
                  		<img
                             src="/util_img/upload_default.png"
                             alt="user-avatar"
                             class="d-block rounded"
                             height="200px"
                             width="100%"
                             id="preview" />
					  </label>
					    <div class="fallback">
					       <input id="uploadPhoto" name="file" type="file" onchange="previewImage(event)" 
					       	accept=".jpg, .jpeg, .gif, .png" style="display:none;"/>
					    </div>
                    </div>
                    <div>
                       	<label class="form-label">성별</label>
                           <div style="display: flex; gap: 50px; justify-content: space-evenly;">
                            	<div class="form-check custom mb-2">
                           			<input type="radio" id="cre-male" class="form-check-input" name="cre_gender" value="${genders[0].code_name}" checked />
                            		<label class="form-check-label" for="cre-male">${genders[0].code_name}</label>
                            	 </div>
                           		 <div class="form-check custom">
	                            	<input type="radio" id="cre-female" class="form-check-input" name="cre_gender" value="${genders[1].code_name}"/>
	                            	<label class="form-check-label" for="cre-female">${genders[1].code_name}</label>
                            	</div>
                            </div>
                       </div>
                  </div>
                  <div class="col-sm-4">
                            <div>
                              <label class="form-label" for="username" ><span style="color:#c20000">*</span> 이름</label>
                              <input type="text" id="username" class="form-control" name="cre_name" placeholder="실명 또는 활동명"  />
                            </div>
                            <div>
                              <label class="form-label" for="nickname"><span style="color:#c20000">*</span> 활동명</label>
                              <input type="text" id="nickname" class="form-control" name="cre_nick_name"
                              		placeholder="활동명" />
                            </div>
                            
							<div>
                            	<label class="form-label" for="formValidationDob"><span style="color:#c20000">*</span> 생년월일</label>
	                       		<input
	                            	type="text" id="birthdate" class="form-control flatpickr-validation" name="cre_birthday"
	                            	placeholder="YYYY-MM-DD"  />
                      		</div>
                      		<div>
 							  <label class="form-label" for="address" ><span style="color:#c20000">*</span> 주소</label>
                        	  <input type="text" id="address" class="form-control" name="cre_address" placeholder="주소" />
                            </div>
                            <div>
                              <label class="form-label" for="detail_addr"><span style="color:#c20000">*</span> 상세주소</label>
 							  <input type="text" id="detail_addr" class="form-control" name="address_detail" 
 							  		placeholder="상세주소를 입력해주세요" />
                            </div>
                      	</div>
                      	<div class="col-sm-4">
                      	    <div>
                              <label class="form-label" for="email"><span style="color:#c20000">*</span> 이메일</label>
 							  <input type="text" id="email" class="form-control" name="cre_email" 
 							  		placeholder="이메일을 입력해주세요" />
                            </div>
                            <div>
                              <label class="form-label" for="phone"><span style="color:#c20000">*</span> 연락처</label>
 							  <input type="text" id="phone" class="form-control" name="cre_phone" 
 							  		placeholder="연락처를 입력해주세요" />
                            </div>
                      		<div>
                         		<label class="form-label" for="country" ><span style="color:#c20000">*</span> 국적</label>
	                          	<select id="country" class="form-select select2" name="cre_country"
		                            	data-allow-clear="false">
		                            <c:forEach var="country" items="${countries}" >
			                            <option value="${country.code_name}">${country.code_name}</option>
		                            </c:forEach>
	                        	</select>
                      		</div>
                      		
                            <div>
                            	<label class="form-label" for="start-contract"><span style="color:#c20000">*</span> 계약시작일</label>
	                       		<input type="text" id="start-contract" class="form-control flatpickr-validation" name="cre_contract_start"
	                            	placeholder="YYYY-MM-DD"  />
                      		</div>
                      		<div>
                            	<label class="form-label" for="end-contract"><span style="color:#c20000">*</span> 계약만료일</label>
	                       		<input type="text" id="end-contract" class="form-control flatpickr-validation" name="cre_contract_end" 
	                       			placeholder="YYYY-MM-DD"  />
                      		</div>
                            </div>

                            <div class="col-12 d-flex justify-content-between">
                              <button type="button" class="btn btn-label-secondary btn-prev" disabled>
                                <i class="bx bx-chevron-left bx-sm ms-sm-n2"></i>
                                <span class="align-middle d-sm-inline-block d-none">이전</span>
                              </button>
                              <button type="button" class="btn btn-primary btn-next">
                                <span class="align-middle d-sm-inline-block d-none me-sm-1">다음</span>
                                <i class="bx bx-chevron-right bx-sm me-sm-n2"></i>
                              </button>
                            </div>
                          </div>
                        </div>
                        
                        
                        <!-- ADD CREATOR Chapter 2 --> 
                        <div id="personal-info" class="content">
                          <div class="row g-3" style="justify-content: space-around;">
							<div class="col-6 ch-area">
							
								<div style="display: flex; justify-content: space-between;">
									<span><span style="color: #c20000">*</span> 유튜브 채널
										정보 (대표채널을 선택해 주세요)</span>
									<button type="button"
										class="btn btn-sm btn-icon btn-outline-primary mb-1"
										onclick="creatorAddDo()">
										<i class='bx bx-plus bx-burst-hover'></i>
									</button>
								</div>
								
								
								<div id="ch-item-list" class="group-a">
									<!-- 채널명, 가입일, 카테고리, 채널링크 div-->
									<div class="repeater-wrapper pt-0 pt-md-4"
										data-repeater-item>
										<div class="d-flex position-relative pe-0">
											<div style="margin: 0 20px;"
												class="d-flex position-relative pe-0 align-items-center justify-content-center">
												<!-- 여기에 라디오 버튼 추가 -->
												<label class="form-check-label"> <input
													type="radio" name="rep_channel"
													class="form-check-input rep-channel" checked="checked" />
												</label>
											</div>
											<!-- 채널 정보 영역 -->
											<div class="row w-100 ch-card">
												<div class="videoUrlForm">
													<input type="text" id="rep-video"
														class="form-control ch-form rep-video"
														name="rep_video" placeholder="대표 영상 링크를 입력하세요" />
													<button type="button" class="urlChekBtn"
														onclick="urlCheck()">
														<i class='bx bx-search'></i>
													</button>
												</div>
												<div class="col-sm-7">
													<select id="selectCate" class="ch-form selectCate w-100" >
														<option disabled selected hidden>카테고리를 선택하세요</option>
														<option>패션</option>
														<option>뷰티</option>
														<option>푸드</option>
														<option>Vlog</option>
														<option>여행</option>
														<option>게임</option>
														<option>동물</option>
														<option>IT</option>
														<option>과학</option>
														<option>영화</option>
														<option>음악</option>
														<option>스포츠</option>
														<option>FUN</option>
														<option>교육</option>
														<option>사회</option>
														<option>유아</option>
														<option>기타</option>
													</select>
												</div>
												<div class="col-sm-5" style="padding-left: 0;">
													<input type="text" id="start-ch"
														class="form-control flatpickr-validation ch-form start-ch"
														name="channel_date" placeholder="채널가입일" disabled />
												</div>
												<div>
													<input type="text" id="ch-name"
														class="form-control ch-form ch-name"
														name="channel_name" placeholder="채널명" disabled />
												</div>
												<div>
													<input type="text" id="channel-url"
														class="form-control ch-form channel-url"
														name="channel_url" placeholder="채널 링크" disabled />
												</div>
											</div>
											<div
												class="d-flex position-relative pe-0 align-items-center justify-content-center">
												<button type="button"
													class="btn btn-sm rounded-pill btn-icon btn-outline-primary mb-1"
													onclick="delChItem()">
													<i class='bx bx-minus-circle'></i>
												</button>
											</div>
											<!-- / 채널 정보 영역 -->
										</div>
									</div>
									<!-- / 채널명, 가입일, 카테고리, 채널링크 div-->
								</div>

							</div>
							<div class="col-6 ch-area">
                          <div style="display: flex; justify-content: space-between; align-items: center;">
                          	<span>기타 SNS 링크(인스타그램, 페이스북)</span>
                            <button type="button" class="btn btn-sm btn-icon btn-outline-primary mb-1" onclick="addSnsItem()">
                            <i class='bx bx-plus bx-burst-hover'></i>
                          </button>                    	
                          </div>
                        <div id="sns-item-list" class="mt-3 mb-3" data-repeater-list="group-a">
                          <div class="repeater-wrapper " data-repeater-item>
                            <div class="d-flex position-relative pe-0">
                              <div class="row w-100">
                                
	                            <div>
	                              <input type="text" id="snsUrl" class="form-control ch-form snsUrl" name="sns_url" placeholder="SNS 링크 입력" />
	                            </div>


                              </div>
 								<div class="d-flex position-relative pe-0 align-items-center justify-content-center" onclick="delSnsItem()">
	                              <button type="button" class="btn btn-sm rounded-pill btn-icon btn-outline-primary mb-1">
	                              		<i class='bx bx-minus-circle'></i>
		                          </button>
				              </div>
                            </div>
                          </div>
                        </div>

                      </div>	
                            
                            <div class="col-12 d-flex justify-content-between">
                              <button type="button" class="btn btn-primary btn-prev">
                                <i class="bx bx-chevron-left bx-sm ms-sm-n2"></i>
                                <span class="align-middle d-sm-inline-block d-none">이전</span>
                              </button>
                              <button type="button" class="btn btn-primary btn-next">
                                <span class="align-middle d-sm-inline-block d-none me-sm-1">다음</span>
                                <i class="bx bx-chevron-right bx-sm me-sm-n2"></i>
                              </button>
                            </div>
                          </div>
                        </div>
                        <!-- ADD CREATOR Chapter 3  -->
                        <div id="social-links" class="content">
                          <div class="row g-3">
                          	
                        <!-- 내용 -->
                        
                        
                       	<div class="col-6">
                   		  <span>담당 매니저 선택</span>
                   		  <div class="mb-3 mt-3 select-mng-box" style="width:250px">
                             <input type="text" id="managerName" class="form-control act-form" name="mng_name"
                              data-bs-toggle="modal" data-bs-target="#modalCenter" 
                              readonly="readonly" placeholder="매니저 선택" />
                              <input type="hidden" id="managerId"/>
                   		  </div>
                          <div style="display: flex; justify-content: space-between; align-items: center;">
                          	<span>활동 이력</span>
                            <button type="button" class="btn btn-sm rounded-pill btn-icon btn-outline-primary mb-1" onclick="addHisItem()">
                              <span class="tf-icons bx bx-plus"></span>
                            </button>                    	
                          </div>
                          <div id="his-item-list" class="mb-5" data-repeater-list="group-a">
						    
	                          <!-- 활동이력 영역-->
	                          <div class="repeater-wrapper position-relative pt-0 pt-md-4" data-repeater-item>
	                            <div class="d-flex position-relative pe-0">
	                              <div class="row act-card" >
	                                
	                                <div class="col-sm-5">
			                       		<input type="text" id="hisDate" class="form-control flatpickr-validation act-form hisDate"
			                            	name="history_date" placeholder="날짜 선택" />
	                      			</div>
	                                
			                        <div class="col-sm-5" style="padding-left:0px">
				                        <select id="typeSelect" class="form-select act-form typeSelect">
				                        	<option value="" disabled selected hidden >분류 선택</option>
				                          <option value="구독자">구독자</option>
				                          <option value="조회수">조회수</option>
				                          <option value="버튼획득">버튼획득</option>
				                          <option value="수상이력">수상이력</option>
				                        </select>
			                        </div>
			                       
	                          	 	<div>
	                          		    <input type="text" id="hisTitle" class="form-control act-form hisTitle" placeholder="채널명 또는 크리에이터명" />
	                           		</div>
			                        <div>
	                          		    <input type="text" id="hisContent" class="form-control act-form hisContent" placeholder="ex) 구독자 10만 달성, 올해의 크리에이터 최우수상" />
	                           		</div>
	                              </div>
	                              <div class="d-flex position-relative pe-0 align-items-center justify-content-center">
		                              <button type="button" class="btn btn-sm rounded-pill btn-icon btn-outline-primary mb-1">
		                              		<i class='bx bx-minus-circle'></i>
			                          </button>
			              		  </div>
	                            </div>
	                             
	                          </div>
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
			                       id="cre_specifics" rows="3" 
			                       placeholder="특이사항 및 참고사항을 입력해주세요"
			                       style="height:264px" name="cre_specifics"></textarea>
			                    </div>

                              </div>
                            </div>
                          </div>
                        </div>

                      </div>	
                            
                            
                            
                            <div class="col-12 d-flex justify-content-between">
                              <button type="button" class="btn btn-primary btn-prev">
                                <i class="bx bx-chevron-left bx-sm ms-sm-n2"></i>
                                <span class="align-middle d-sm-inline-block d-none">이전</span>
                              </button>
                              <button class="btn btn-success" onclick="creatorAddDo()">완료</button>
                            </div>
							
                          </div>
                        </div>
                      <!-- </form> -->
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
	
	<!-- Modal -->
    <div class="modal fade" id="modalCenter" tabindex="-1" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content org-tree">
          <div class="modal-header org-header">
            <h5 class="modal-title" id="modalCenterTitle">조직도</h5>
           
            <button
              type="button"
              class="btn-close"
              data-bs-dismiss="modal"
              aria-label="Close"></button>
          </div>
          <div class="modal-body org-body">
            <div class="row" style="justify-content: center;">
            	  <!-- JSTree -->
              <div class="row">
                <!-- Checkbox -->
                <div class="col-md-12 col-12">
                  <div class="card mb-md-0 mb-4" style="padding: 10px 5px; box-shadow: none;">
                    <div >
                      <div id="jstree-checkbox"></div>
                    </div>
                  </div>
                  <div class="ps__rail-y" style="top: 755px;height: 232px;right: 0px;">
                  	<div class="ps__thumb-y" tabindex="0" style="top: 110px; height: 33px;">
                  	</div>
                  </div>
                </div>
                <!-- /Checkbox -->
              </div>
              <!-- /JSTree -->
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-primary"
				data-bs-dismiss="modal"aria-label="Close"
            	onclick="selectMng()">완료</button>
          </div>
        </div>
      </div>
    </div>

	
	
    <!-- Core JS -->
    <!-- build:js assets/vendor/js/core.js -->

    <script src="../../assets/vendor/libs/jquery/jquery.js"></script>
    <script src="../../assets/vendor/libs/popper/popper.js"></script>
    <script src="../../assets/vendor/js/bootstrap.js"></script>
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
    
    <!-- Page JS -->
    <script src="../../assets/js/extended-ui-perfect-scrollbar.js"></script> <!-- scroll -->
    
    
    <!-- custom script -->
	<script>
  	// 채널정보 입력창을 추가시 cnt++
  	 var channelCnt = 0;
  	 
  	 $(document).ready(function() {
		// DAUM 주소 검색 창
        document.getElementById("address").addEventListener("click", function(){ //주소입력칸을 클릭하면
            //카카오 지도 발생
            new daum.Postcode({
                oncomplete: function(data) { //선택시 입력값 세팅
                    document.getElementById("address").value = data.address; // 주소 넣기
                    document.querySelector("input[name=address_detail]").focus(); //상세입력 포커싱
                }
            }).open();
        });
        $(document).on('focus', '.flatpickr-validation', function() {
		  // 날짜 선택 폼
	      var flatpickrElements = document.querySelectorAll(".flatpickr-validation");
	      
	      flatpickrElements.forEach(function (element) {
	        flatpickr(element, {
	          monthSelectorType: "static"
	        });
	      });
    	});
        
    });
  	 
  	 
  	 // 사진 업로드 
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
  	 
  	
  	function urlCheck(){
  		
  		var videoUrl = $(".rep-video").eq(channelCnt).val();
  		console.log(videoUrl);
  		
  		var isDuplicate = false;
  		if($(".rep-video").length > 1){
	  			
	  	    $(".rep-video").each(function() {
	  	        if (videoUrl == $(".rep-video").eq(0)) {
	  	            isDuplicate = true;
	  	            return isDuplicate; 
	  	        }
	  	    }); 
  		}
  	    if (isDuplicate) {
  	        alert("이미 작성중인 링크입니다.");
  	        return; 
  	    }
  		
  		$.ajax({
  			type: 'post',
  			url: 'getChInfo.ajax.do',
  			data: {videoURL: videoUrl},
  			dataType: 'JSON',
  			success:function(data){
  				console.log("data",data);
  				console.log("data.chInfo",data.chInfo);
  				inputInfo(data.chInfo);
  				console.log("data.msg",data.msg);
  				if(data.msg!=null){
  					alert(data.msg);
  				}
  			},
  			error:function(e){
  				console.log(e);
  				
  			}
  		})
  	}
  	function inputInfo(chInfo){
  		console.log("inputInfo() 실행");
  		
  		var dateTime = chInfo.channelDate;
  		var fp = $(".start-ch").eq(channelCnt).flatpickr();
  		fp.setDate(dateTime, true);
  		
  		$('.ch-name').eq(channelCnt).val(chInfo.channelName);
  		$('.channel-url').eq(channelCnt).val(chInfo.channelUrl);
  		$(".start-ch").eq(channelCnt).prop("disabled", false);
  	}
  	 
  	
  	// 최종 등록 함수
  	function creatorAddDo() {
		  console.log('creatorAddDo event !! ');
  		
		  // var creatorForm = new creatorForm();
      
      // CreatorDTO
      console.log($("#managerId").val());
      var creatorDTO = {
        mng_id : $("#managerId").val(),
        cre_gender : $("input[name='cre_gender']:checked").val(),
        cre_name : $("#username").val(),
        cre_nick_name : $("#nickname").val(),
        cre_email : $("#email").val(),
        cre_phone : $("#phone").val(),
        cre_birthday : $("#birthdate").val(),
        cre_country : $("#country").val(),
        cre_address : $("#address").val(),
        cre_address_detail : $("#detail_addr").val(),
        cre_contract_start : $("#start-contract").val(),
        cre_contract_end :$("#end-contract").val(),
        cre_specifics : $("#cre_specifics").val()
      };
      console.log("creatorDTO",creatorDTO);
      
      // Channel
      var channelDTOList = [];
      console.log($('#ch-item-list .repeater-wrapper[data-repeater-item]'));
      $('#ch-item-list .repeater-wrapper[data-repeater-item]').each(function(index, element) {
        var channelDTO = {
            channel_name: $(element).find('.ch-name').val(),
            channel_url: $(element).find('.channel-url').val(),
            rep_channel: $(element).find('.rep-channel').is(':checked') ? 1 : 0,
            channel_date: $(element).find('.start-ch').val(),
            channel_cate: $(element).find('.selectCate').val(),
            rep_video: $(element).find('.rep-video').val()
        };
        
        
        channelDTOList.push(channelDTO);
      });
      console.log("channelDTOList",channelDTOList);

      // SNS
      var snsDTOList = [];
      $('#sns-item-list .repeater-wrapper[data-repeater-item]').each(function(index, element){
        var snsDTO = {
          sns_url : $(element).find('.snsUrl').val()
        }
        snsDTOList.push(snsDTO);
      });
      console.log("snsDTOList",snsDTOList);
      // CreatorHistory
      var creHistDTOList = [];
      $('#his-item-list .repeater-wrapper[data-repeater-item]').each(function(index, element){
        var creHistDTO = {
          cre_his_title : $(element).find('.hisTitle').val(),
          cre_his_cate : $(element).find('.typeSelect').val(),
          cre_his_content : $(element).find('.hisContent').val(),
          history_date : $(element).find('.hisDate').val()
        }
        creHistDTOList.push(creHistDTO);
      });
      console.log("creHistDTOList",creHistDTOList);
      

      
      
      
		/* $.ajax({
			type : 'post',
			url : 'creatorAdd.ajax.do',
			data: JSON.stringify({
			        creatorDTO: creatorDTO,
			        channelDTOList: channelDTOList,
			        snsDTOList: snsDTOList,
			        creHistDTOList: creHistDTOList
		    }),
        	contentType: 'application/json;charset=UTF-8',
	    	success : function(data, textStatus, jqXHR){
	    		console.log("응답 성공 | 상태 코드 : ", jqXHR.status);
	    		console.log("textStatus : ",textStatus);
	    		if(jqXHR.status == 200){
	    			location.replace('/creatorList.go');
	    		}
	    	},
	    	error : function(data, textStatus, jqXHR){
	    		console.log("응답 실패 | 상태 코드 : ", jqXHR.status);
	    		console.log("textStatus : ",textStatus);
	    		
	    	}
			
		}); */
	}
  	
  	
    // 조직도에서 매니저 선택시 호출 함수
  	function selectMng() {
      console.log('selectMng event');
      var selectedTags = $("#jstree-checkbox [aria-level=2][aria-selected=true]");
    
      var selectedMng = selectedTags.map(function() {// 선택된 태그들을 새로운 배열로 만들어줌
        return $(this).text();
      }).get();

      var selectMngId = selectedTags.map(function(){
        console.log($(this).find('#mng_id').val());
        return $(this).find('#mng_id').val();
      }).get();

        console.log(selectedMng+" / "+selectMngId);

      if(selectedMng.length > 1){
	      alert('담당 매니저는 한 명만 선택 해 주세요');
	      return false;
      }
	      $('#managerName').val(selectedMng);
	      $('#managerId').val(selectMngId);
	}
	/* 보류
    var checkboxTree = $('#jstree-checkbox');
    checkboxTree.on('select_node.jstree', function (e, data) {
        // 클릭한 노드의 부모 노드를 가져오기
        var parentNode = checkboxTree.jstree(true).get_node(data.node.parent);

        // 클릭한 노드의 부모 노드를 열기 (자식 요소 보이게 하기)
        checkboxTree.jstree(true).open_node(parentNode);
      }); */
  	
      
     
      <!-- 보류
   	var chCateDrawn = false; // 플래그 초기화
  	
  	function getChCate() {
		console.log("getChCate 실행 !!!!!!!!");
		if (!chCateDrawn) {
			console.log("chCaeDrawn",chCateDrawn);
		    $.ajax({
		    	type : 'get',
		    	url : 'getChCate.ajax.do',
		    	data : {},
		    	dataType : 'JSON',
		    	success : function(data){
		    		selectBoxId = $('#selectpickerBasic1').attr('id');
		    		console.log("selectBoxId = " ,selectBoxId);
		    		drawChCate(data.chCategory,selectBoxId);
		    		chCateDrawn = true; // 옵션 생성 완료를 나타내는 플래그
		    	},
		    	error : function(e){
		    		console.log(e);
		    	}
		    });
		}
  	}

 
    function drawChCate(cateList, selectBoxId) {
    	console.log('selectBoxId : ',selectBoxId);
		console.log("parameter value : ",cateList);
	
		var selectBox = $("#" + selectBoxId);
		console.log('selectBox = '+selectBox);
	
		// 1안
	  	/* var selectBox = $("#selectpickerBasic"); */ 

	    // 기존 옵션 제거
	    /*selectBox.empty();
	    debugger;
	    
		console.log("cateList.length : "+ cateList.length);

	    $.each(cateList, function(index, category) {	    	 */
	 		/*console.log("@@@@cateList.length : "+index+"_"+ cateList.length); */
	   /*      selectBox.append($('<option>', {
	            value: category, 
	            text: category
	        }));
	        console.log(selectBox);
	    });
	    // 셀렉트 박스 갱신
	    selectBox.selectpicker('refresh');
	    
		// 2안
		/* cateList.forEach(function(cateItem, index, cateList){
			var option = selectBox.find('option').eq(index);
			option.val(cateItem);
			option.html(cateItem);
			console.log("result"+index+" : ",option.val()," / ",option.text());
		}); */
	}	
  -->    
     // 채널 정보 항목 추가 이벤트
     function addChItem(){
    	console.log('addChItem event !!');  
        channelCnt++;
        console.log("channelCnt = "+ channelCnt);
        var originalChannel = $("#ch-item-list .repeater-wrapper:first");
        var clone = originalChannel.clone(true);
        clone.find('input, select').val('');	// 밸류 속성 비우기
        clone.find('input[type="radio"]').prop('checked', false);
        originalChannel.parent().append(clone);
     }; 
      
     // 채널 정보 항목 제거 이벤트
     function delChItem() {
		var repeaterWrapper = $(event.currentTarget).closest(".repeater-wrapper");
		console.log(repeaterWrapper);
	    // 채널 정보 입력 항목 최소 한개 유지
	    var repeatWrapperCount = $('#ch-item-list .repeater-wrapper').length;
	    if (repeatWrapperCount === 1) {
	        alert('채널 정보는 최소 1개가 필요합니다.');
	        return false;
	    }
	    
	    // 라디오 버튼 체크되어 있는 항목 삭제시 동작
	    var isRadioChecked = repeaterWrapper.find(':radio').prop('checked');
	    if (isRadioChecked) {
	        $('#ch-item-list .repeater-wrapper:first :radio').prop('checked', true);
	    }
	
	    // 입력된 정보가 있을 경우에 동작
	    var inputValues = repeaterWrapper.find('input').filter(function() {
	        return $(this).val() !== '';
	    });
	    if (inputValues.length > 0) {
	        var confirmed = confirm("입력된 정보가 삭제됩니다. 정말 삭제하시겠습니까?");
	
	        if (confirmed) {
	            repeaterWrapper.remove();
	        }
	    } else {
	        repeaterWrapper.remove();
	    }
	    // channelCnt 감소
	    channelCnt--;
	}
     
     
     
    // SNS 정보 추가 항목 이벤트
    function addSnsItem(){
    	console.log('addSnsItem() 실행');
    	console.log($("#sns-item-list .repeater-wrapper"));
    	 var originalSns = $("#sns-item-list .repeater-wrapper").eq(0);
         var clone = originalSns.clone(true);
         
         clone.find('input').val('');	// 밸류 속성 비우기
         originalSns.parent().append(clone);
    }
    // SNS 정보 항목 제거 이벤트
    function delSnsItem(){
    	var repeaterWrapper = $(event.currentTarget).closest(".repeater-wrapper");
		console.log(repeaterWrapper);
	    // 채널 정보 입력 항목 최소 한개 유지
	    var repeatWrapperCount = $('#sns-item-list .repeater-wrapper').length;
	    if (repeatWrapperCount === 1) {
	        alert('SNS 정보는 최소 1개가 필요합니다.');
	        return false;
	    }
	
	    // 입력된 정보가 있을 경우에 동작
	    var inputValues = repeaterWrapper.find('input').filter(function() {
	        return $(this).val() !== '';
	    });
	    if (inputValues.length > 0) {
	        var confirmed = confirm("입력된 정보가 삭제됩니다. 정말 삭제하시겠습니까?");
	
	        if (confirmed) {
	            repeaterWrapper.remove();
	        }
	    } else {
	        repeaterWrapper.remove();
	    }
    }
    
   // 활동이력 정보 항목 추가 이벤트
   function addHisItem() {
	    console.log("addHisItem() 실행");
   		var originalHis = $("#his-item-list .repeater-wrapper:first");
        var clone = originalHis.clone(true);
        
        clone.find('input').val('');	// 밸류 속성 비우기
        originalHis.parent().append(clone);
   }
   // History 정보 항목 제거 이벤트
   function delHisItem(){
   	var repeaterWrapper = $(event.currentTarget).closest(".repeater-wrapper");
		console.log(repeaterWrapper);
	    // 채널 정보 입력 항목 최소 한개 유지
	    var repeatWrapperCount = $('#his-item-list .repeater-wrapper').length;
	    if (repeatWrapperCount === 1) {
	        alert('History 정보는 최소 1개가 필요합니다.');
	        return false;
	    }
	
	    // 입력된 정보가 있을 경우에 동작
	    var inputValues = repeaterWrapper.find('input').filter(function() {
	        return $(this).val() !== '';
	    });
	    if (inputValues.length > 0) {
	        var confirmed = confirm("입력된 정보가 삭제됩니다. 정말 삭제하시겠습니까?");
	
	        if (confirmed) {
	            repeaterWrapper.remove();
	        }
	    } else {
	        repeaterWrapper.remove();
	    }
   }
   
	</script>


	<!-- Main JS -->
	<script src="../../assets/js/main.js"></script>

	<!-- Page JS -->

	<script src="../../assets/js/form-wizard-numbered.js"></script>
	<script src="../../assets/js/form-wizard-validation.js"></script>
	<script src="../../assets/js/forms-file-upload.js"></script>

	<!-- jstree -->
	<script src="../../assets/vendor/libs/jstree/jstree.js"></script>
	<!-- scroll-bar -->
	<script
		src="../../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

	<!-- 조직도 -->
	<script>
	    // 조직도 
	    $.ajax({
			type: 'get',
	    	url: 'getOrgList',
	    	data: {},
	    	dataType: 'JSON',
	        success : function(data){
	          console.log(data);
	          drawOrg(data.orgList, data.deptKind);
	        } ,
	        error : function(e){
	          console.log(e);
	        }
		});
		
		function drawOrg(orgList, deptKind) {
			console.log('orgList', orgList);
			console.log('deptKind',deptKind);
			
			var theme = $('html').hasClass('light-style') ? 'default' : 'default-dark',
				    checkboxTree = $('#jstree-checkbox');
	     
			if (checkboxTree.length) {
				
				var serverData = [];
				
				for (var i = 0; i < deptKind.length; i++) {
				    var deptname = {
				        text: deptKind[i],
				        type: 'depart',
				        children: []
				    };
				    console.log("deptKind",deptKind[i]);
				    
				    var empLength = function(){
				    	var cnt=0;
				    		for(var k=0; k < orgList.length; k++){
				    			if(orgList[k].dept == deptKind[i]){
				    				cnt++;
				    				/* console.log("cnt", cnt); */
				    			}
				    		}
				    		return cnt;
				    };
				    var empInfo = function(index){
				    	var info=[];
				    		for(var k=0; k < orgList.length; k++){
				    			if(orgList[k].dept == deptKind[i]){
				    				/* console.log("emp_value : ", orgList[k].emp_name,orgList[k].grade); */
				    				info.push( orgList[k].emp_name+" | "+orgList[k].grade+"<input type='hidden' id='mng_id' name='mng_id' value='"+orgList[k].emp_id+"'/>");
				    			}
				    		}
				    		return info[index];
				    };
				    
				    for (var j = 0; j < empLength(); j++) {
				    	/* console.log("empInfo("+j+")",empInfo(j)); */
				        var emp = {
				            text: empInfo(j)
				        };
				        deptname.children.push(emp);
				    } 
	
				    // 부모 데이터를 배열에 추가
				    	serverData.push(deptname); 
				}
	
	
				  // jstree에서 사용할 데이터 구성
				  var jstreeData = serverData.map(function (parent) {
				    var parentNode = {
				      text: parent.text,
				      type: 'depart',
				      children: parent.children.map(function (child) {
				        return {
				          text: child.text
				        };
				      })
				    };
				    return parentNode;
				  });
	
				  checkboxTree.jstree({
				    core: {
				      themes: {
				        name: theme
				      },
				      data: jstreeData
				    },
				    plugins: ['types', 'checkbox', 'wholerow'],
				    types: {
				      default: {
				        icon: 'bx bx-user'
				      },
				      depart: {
				    	icon: 'bx bx-folder'
				      }
				    }
				  });
				}
		}  
		// /조직도 
    </script>
</body>
  
  
</html>
