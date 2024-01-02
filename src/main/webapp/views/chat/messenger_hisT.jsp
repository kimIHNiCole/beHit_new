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
    <link rel="stylesheet" href="../../assets/vendor/libs/bootstrap-maxlength/bootstrap-maxlength.css" />

    <!-- Page CSS -->

    <link rel="stylesheet" href="../../assets/vendor/css/pages/app-chat.css" />
    <link rel="stylesheet" href="../../assets/vendor/css/pages/page-profile.css" />

    <!-- Helpers -->
    <script src="../../assets/vendor/js/helpers.js"></script>
    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Template customizer: To hide customizer set displayCustomizer value false in config.js.  -->
    <script src="../../assets/vendor/js/template-customizer.js"></script>
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="../../assets/js/config.js"></script>
    
    <!-- 커스텀 -->
    <style>
    /* 채팅방 추가 버튼 */
    .btn.btn-primary.text-nowrap{
    	margin-left: 5px;
    	width: 130px;
    	font-size: 13px;
    }
    /* 채팅 리스트 글씨 */
    .text-primary.mb-0{
    	margin-top: 12px;
    	font-weight: 600;
    	margin-right: 20px;
    }
    
    /* 서치박스 */
    .flex-grow-1.input-group.input-group-merge.rounded-pill.ms-1{
    	width: 180px;
    	margin-left: 50px;
    }
    /* 내 이름, 부서 표시 */
    .text-muted.text-uppercase{
    	width: 150px;
    }
	/* 메시지 전송 버튼 */
	.btn.btn-primary.d-flex.send-msg-btn{
		width: 95px;
	}


    
    </style>
  </head>

  <body>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
        
        
          <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
              <div class="app-chat overflow-hidden card">
                <div class="row g-0">
                  <!-- Sidebar Left -->
                  
                  <!-- /Sidebar Left-->

                  <!-- Chat & Contacts -->
                  <div
                    class="col app-chat-contacts app-sidebar flex-grow-0 overflow-hidden border-end"
                    id="app-chat-contacts">
                    <div class="sidebar-header pt-3 px-3 mx-1">
                      <div class="d-flex align-items-center me-3 me-lg-0">
                        <div
                          class="flex-shrink-0 avatar avatar-online me-2"
                          data-bs-toggle="sidebar"
                          data-overlay="app-overlay-ex"
                          data-target="#app-chat-sidebar-left">
                          <img
                            class="user-avatar rounded-circle cursor-pointer"
                            src="../../assets/img/avatars/1.png"
                            alt="Avatar" />
                        </div>
                        <div class="text-muted text-uppercase">
                        	<span class="chat-contact-name text-truncate m-0">한가인</span>
                        	<div><span class="m-0">매니지먼트팀</span></div>
                        	</div>
                        <button class="btn btn-primary text-nowrap">채팅방 추가</button>
                       </div>
                    </div>
                    <hr class="container-m-nx mt-3 mb-0" />
                    <div class="sidebar-body">
                      <!-- Chats -->
                      <ul class="list-unstyled chat-contact-list pt-1" id="chat-list">
                        <li class="chat-contact-list-item chat-contact-list-item-title">
                          <h6 class="text-primary mb-0">채팅 리스트</h6>
                          <div class="flex-grow-1 input-group input-group-merge rounded-pill ms-1">
                          <span class="input-group-text" id="basic-addon-search31"
                            ><i class="bx bx-search fs-4"></i
                          ></span>
                          <input
                            type="text"
                            class="form-control chat-search-input"
                            placeholder="Search..."
                            aria-label="Search..."
                            aria-describedby="basic-addon-search31" />
                        </div>
                        </li>
                        <li class="chat-contact-list-item chat-list-item-0 d-none">
                          <h6 class="text-muted mb-0">No Chats Found</h6>
                        </li>
                        <!-- 온라인일 경우 표시 -->
                        <li class="chat-contact-list-item">
                          <a class="d-flex align-items-center">
                            <div class="flex-shrink-0 avatar avatar-online">
                              <img src="../../assets/img/avatars/13.png" alt="Avatar" class="rounded-circle" />
                            </div>
                            <div class="chat-contact-info flex-grow-1 ms-3">
                              <h6 class="chat-contact-name text-truncate m-0">전은호</h6>
                              <p class="chat-contact-status text-truncate mb-0 text-muted">
                                어디로 보내면 될까요?
                              </p>
                            </div>
                            <small class="text-muted mb-auto">16:05</small>
                          </a>
                        </li>
                        <!-- 오프라인일 경우 표시 -->
                        <li class="chat-contact-list-item active">
                          <a class="d-flex align-items-center">
                            <div class="flex-shrink-0 avatar avatar-offline">
                              <img src="../../assets/img/avatars/2.png" alt="Avatar" class="rounded-circle" />
                            </div>
                            <div class="chat-contact-info flex-grow-1 ms-3">
                              <h6 class="chat-contact-name text-truncate m-0">김세연</h6>
                              <p class="chat-contact-status text-truncate mb-0 text-muted">
                                11시 반에 시킬까?
                              </p>
                            </div>
                            <small class="text-muted mb-auto">10:58</small>
                          </a>
                        </li>
                        <li class="chat-contact-list-item">
                          <a class="d-flex align-items-center">
                            <div class="flex-shrink-0 avatar avatar-online">
                              <img src="../../assets/img/avatars/13.png" alt="Avatar" class="rounded-circle" />
                            </div>
                            <div class="chat-contact-info flex-grow-1 ms-3">
                              <h6 class="chat-contact-name text-truncate m-0">오현비</h6>
                              <p class="chat-contact-status text-truncate mb-0 text-muted">
                                너무 추워서 얼어죽어버릴 것만 같아요
                              </p>
                            </div>
                            <small class="text-muted mb-auto">9:11</small>
                          </a>
                        </li>
                        <li class="chat-contact-list-item">
                          <a class="d-flex align-items-center">
                            <div class="flex-shrink-0 avatar avatar-online">
                              <img src="../../assets/img/avatars/13.png" alt="Avatar" class="rounded-circle" />
                            </div>
                            <div class="chat-contact-info flex-grow-1 ms-3">
                              <h6 class="chat-contact-name text-truncate m-0">이도훈</h6>
                              <p class="chat-contact-status text-truncate mb-0 text-muted">
                                다 확인했지? 테이블 이대로 생성할게
                              </p>
                            </div>
                            <small class="text-muted mb-auto">2023-12-22</small>
                          </a>
                        </li>
                        <li class="chat-contact-list-item">
                          <a class="d-flex align-items-center">
                            <div class="flex-shrink-0 avatar avatar-online">
                              <img src="../../assets/img/avatars/13.png" alt="Avatar" class="rounded-circle" />
                            </div>
                            <div class="chat-contact-info flex-grow-1 ms-3">
                              <h6 class="chat-contact-name text-truncate m-0">윤예성</h6>
                              <p class="chat-contact-status text-truncate mb-0 text-muted">
                                회의실 3개 안 이상하다니까
                              </p>
                            </div>
                            <small class="text-muted mb-auto">2023-12-22</small>
                          </a>
                        </li>
                        <!-- 바쁨 상태일 때(안 쓸 예정) 
                        <li class="chat-contact-list-item">
                          <a class="d-flex align-items-center">
                            <div class="flex-shrink-0 avatar avatar-busy">
                              <span class="avatar-initial rounded-circle bg-label-success">CM</span>
                            </div>
                            <div class="chat-contact-info flex-grow-1 ms-3">
                              <h6 class="chat-contact-name text-truncate m-0">Calvin Moore</h6>
                              <p class="chat-contact-status text-truncate mb-0 text-muted">
                                If it takes long you can mail inbox user
                              </p>
                            </div>
                            <small class="text-muted mb-auto">1 Day</small>
                          </a>
                        </li>
                        -->
                        
                        
                      </ul>
                      
                    </div>
                  </div>
                  <!-- /Chat contacts -->

                  <!-- Chat History -->
                  <div class="col app-chat-history">
                    <div class="chat-history-wrapper">
                      <div class="chat-history-header border-bottom">
                        <div class="d-flex justify-content-between align-items-center">
                          <div class="d-flex overflow-hidden align-items-center">
                            <i
                              class="bx bx-menu bx-sm cursor-pointer d-lg-none d-block me-2"
                              data-bs-toggle="sidebar"
                              data-overlay
                              data-target="#app-chat-contacts"></i>
                            <div class="flex-shrink-0 avatar">
                              <img
                                src="../../assets/img/avatars/2.png"
                                alt="Avatar"
                                class="rounded-circle"
                                data-bs-toggle="sidebar"
                                data-overlay
                                data-target="#app-chat-sidebar-right" />
                            </div>
                            <div class="chat-contact-info flex-grow-1 ms-3">
                              <h6 class="m-0">김세연</h6>
                              <small class="user-status text-muted">인사팀</small>
                            </div>
                          </div>
                          
                        </div>
                      </div>
                      <div class="chat-history-body">
                        <ul class="list-unstyled chat-history mb-0">
                          <li class="chat-message chat-message-right">
                            <div class="d-flex overflow-hidden">
                              <div class="chat-message-wrapper flex-grow-1">
                                <div class="chat-message-text">
                                  <p class="mb-0">보여줄게 완전히 달라진 나</p>
                                </div>
                                <div class="text-end text-muted mt-1">
                                  <i class="bx bx-check-double text-success"></i>
                                  <small>09:00 AM</small>
                                </div>
                              </div>
                              <div class="user-avatar flex-shrink-0 ms-3">
                                <div class="avatar avatar-sm">
                                  <img src="../../assets/img/avatars/1.png" alt="Avatar" class="rounded-circle" />
                                </div>
                              </div>
                            </div>
                          </li>
                          <li class="chat-message">
                            <div class="d-flex overflow-hidden">
                              <div class="user-avatar flex-shrink-0 me-3">
                                <div class="avatar avatar-sm">
                                  <img src="../../assets/img/avatars/2.png" alt="Avatar" class="rounded-circle" />
                                </div>
                              </div>
                              <div class="chat-message-wrapper flex-grow-1">
                                <div class="chat-message-text">
                                  <p class="mb-0">오늘은 지각을 조금밖에 안 했구만</p>
                                  <p class="mb-0">이 정도만 해도 만족스러워😊</p>
                                </div>
                                <div class="chat-message-text mt-2">
                                  <p class="mb-0">제군들 부대장은 실망했다</p>
                                </div>
                                <div class="text-muted mt-1">
                                  <small>09:02 AM</small>
                                </div>
                              </div>
                            </div>
                          </li>
                          <li class="chat-message chat-message-right">
                            <div class="d-flex overflow-hidden">
                              <div class="chat-message-wrapper flex-grow-1">
                                <div class="chat-message-text">
                                  <p class="mb-0">얍얍</p>
                                </div>
                                <div class="text-end text-muted mt-1">
                                  <i class="bx bx-check-double text-success"></i>
                                  <small>10:03 AM</small>
                                </div>
                              </div>
                              <div class="user-avatar flex-shrink-0 ms-3">
                                <div class="avatar avatar-sm">
                                  <img src="../../assets/img/avatars/1.png" alt="Avatar" class="rounded-circle" />
                                </div>
                              </div>
                            </div>
                          </li>
                          <li class="chat-message">
                            <div class="d-flex overflow-hidden">
                              <div class="user-avatar flex-shrink-0 me-3">
                                <div class="avatar avatar-sm">
                                  <img src="../../assets/img/avatars/2.png" alt="Avatar" class="rounded-circle" />
                                </div>
                              </div>
                              <div class="chat-message-wrapper flex-grow-1">
                                <div class="chat-message-text">
                                  <p class="mb-0">아무 말 대잔치</p>
                                </div>
                                <div class="chat-message-text mt-2">
                                  <p class="mb-0">배는 안 고픈데 맛있는 게 먹고 싶다</p>
                                </div>
                                <div class="chat-message-text mt-2">
                                  <p class="mb-0">맥도날드❤️❤️❤️❤️</p>
                                </div>
                                <div class="text-muted mt-1">
                                  <small>10:11 AM</small>
                                </div>
                              </div>
                            </div>
                          </li>
                          <li class="chat-message chat-message-right">
                            <div class="d-flex overflow-hidden">
                              <div class="chat-message-wrapper flex-grow-1">
                                <div class="chat-message-text">
                                  <p class="mb-0">신메뉴 맛있었으면 좋겠넹</p>
                                </div>
                                <div class="text-end text-muted mt-1">
                                  <i class="bx bx-check-double text-success"></i>
                                  <small>10:12 AM</small>
                                </div>
                              </div>
                              <div class="user-avatar flex-shrink-0 ms-3">
                                <div class="avatar avatar-sm">
                                  <img src="../../assets/img/avatars/1.png" alt="Avatar" class="rounded-circle" />
                                </div>
                              </div>
                            </div>
                          </li>
                          <li class="chat-message">
                            <div class="d-flex overflow-hidden">
                              <div class="user-avatar flex-shrink-0 me-3">
                                <div class="avatar avatar-sm">
                                  <img src="../../assets/img/avatars/2.png" alt="Avatar" class="rounded-circle" />
                                </div>
                              </div>
                              <div class="chat-message-wrapper flex-grow-1">
                                <div class="chat-message-text">
                                  <p class="mb-0">히스토리 너무 길어</p>
                                </div>
                                <div class="chat-message-text mt-2">
                                  <p class="mb-0">삭제하겠습니다!</p>
                                </div>
                                <div class="text-muted mt-1">
                                  <small>10:20 AM</small>
                                </div>
                              </div>
                            </div>
                          </li>
                          <li class="chat-message chat-message-right">
                            <div class="d-flex overflow-hidden">
                              <div class="chat-message-wrapper flex-grow-1">
                                <div class="chat-message-text">
                                  <p class="mb-0">네엡</p>
                                </div>
                                <div class="text-end text-muted mt-1">                             
                                  <small>11:00 AM</small>
                                </div>
                              </div>
                              <div class="user-avatar flex-shrink-0 ms-3">
                                <div class="avatar avatar-sm">
                                  <img src="../../assets/img/avatars/1.png" alt="Avatar" class="rounded-circle" />
                                </div>
                              </div>
                            </div>
                          </li>
                          
                        </ul>
                      </div>
                      <!-- Chat message form -->
                      <div class="chat-history-footer">
                        <form class="form-send-message d-flex justify-content-between align-items-center">
                          <input
                            class="form-control message-input border-0 me-3 shadow-none"
                            placeholder="메시지를 입력하세요..." />
                          <div class="message-actions d-flex align-items-center">                      
                            <label for="attach-doc" class="form-label mb-0">
                              <i class="bx bx-paperclip bx-sm cursor-pointer mx-3 text-body"></i>
                              <input type="file" id="attach-doc" hidden />
                            </label>
                            <button class="btn btn-primary d-flex send-msg-btn">
                              <i class="bx bx-paper-plane me-md-1 me-0"></i>
                              <span class="align-middle d-md-inline-block d-none">전송</span>
                            </button>
                          </div>
                        </form>
                      </div>
                    </div>
                  </div>
                  <!-- /Chat History -->

                  <!-- Sidebar Right -->
                  <div class="col app-chat-sidebar-right app-sidebar overflow-hidden" id="app-chat-sidebar-right">
                    <div
                      class="sidebar-header d-flex flex-column justify-content-center align-items-center flex-wrap p-4 mt-2">
                      <div class="avatar avatar-xl avatar-online">
                        <img src="../../assets/img/avatars/2.png" alt="Avatar" class="rounded-circle" />
                      </div>
                      <h6 class="mt-3 mb-1">Felecia Rower</h6>
                      <small class="text-muted">NextJS Developer</small>
                      <i
                        class="bx bx-x bx-sm cursor-pointer close-sidebar me-1 fs-4 d-block"
                        data-bs-toggle="sidebar"
                        data-overlay
                        data-target="#app-chat-sidebar-right"></i>
                    </div>
                    <div class="sidebar-body px-4 pb-4">
                      <div class="my-3">
                        <span class="text-muted text-uppercase">About</span>
                        <p class="mb-0 mt-2">
                          A Next. js developer is a software developer who uses the Next. js framework alongside ReactJS
                          to build web applications.
                        </p>
                      </div>
                      <div class="my-4">
                        <span class="text-muted text-uppercase">Personal Information</span>
                        <ul class="list-unstyled d-grid gap-2 mt-2">
                          <li class="d-flex align-items-center">
                            <i class="bx bx-envelope"></i>
                            <span class="align-middle ms-2">josephGreen@email.com</span>
                          </li>
                          <li class="d-flex align-items-center">
                            <i class="bx bx-phone-call"></i>
                            <span class="align-middle ms-2">+1(123) 456 - 7890</span>
                          </li>
                          <li class="d-flex align-items-center">
                            <i class="bx bx-time-five"></i>
                            <span class="align-middle ms-2">Mon - Fri 10AM - 8PM</span>
                          </li>
                        </ul>
                      </div>
                      <div class="mt-4">
                        <span class="text-muted text-uppercase">Options</span>
                        <ul class="list-unstyled d-grid gap-2 mt-2">
                          <li class="cursor-pointer d-flex align-items-center">
                            <i class="bx bx-bookmark"></i>
                            <span class="align-middle ms-2">Add Tag</span>
                          </li>
                          <li class="cursor-pointer d-flex align-items-center">
                            <i class="bx bx-star"></i>
                            <span class="align-middle ms-2">Important Contact</span>
                          </li>
                          <li class="cursor-pointer d-flex align-items-center">
                            <i class="bx bx-image-alt"></i>
                            <span class="align-middle ms-2">Shared Media</span>
                          </li>
                          <li class="cursor-pointer d-flex align-items-center">
                            <i class="bx bx-trash-alt"></i>
                            <span class="align-middle ms-2">Delete Contact</span>
                          </li>
                          <li class="cursor-pointer d-flex align-items-center">
                            <i class="bx bx-block"></i>
                            <span class="align-middle ms-2">Block Contact</span>
                          </li>
                        </ul>
                      </div>
                    </div>
                  </div>
                  <!-- /Sidebar Right -->

                  <div class="app-overlay"></div>
                </div>
              </div>
            </div>
            <!-- / Content -->
			
			<!-- modal -->
			<!-- 조직도 모달 -->
              <div class="modal fade" id="apv-modal" tabindex="-1" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered1 modal-simple modal-add-new-cc">
                  <div class="modal-content p-3 p-md-5">
                    <div class="modal-body">
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                       
			              <div class="list">
			                
			              </div>
			              

                      <div class="col-12 text-center">
                        <button type="button" class="btn btn-primary me-sm-3 me-1 mt-3 apv-doc-select">선택</button>
                        <button
                          type="reset"
                          class="btn btn-label-secondary btn-reset mt-3"
                          data-bs-dismiss="modal"
                          aria-label="Close">
                          취소</button>
                          </div>
                       </div>
            	</div>
            	</div>
            	</div>
            

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
    <script src="../../assets/vendor/libs/bootstrap-maxlength/bootstrap-maxlength.js"></script>
    <script src="../../assets/vendor/libs/jstree/jstree.js"></script>
    

    <!-- Main JS -->
    <script src="../../assets/js/main.js"></script>

    <!-- Page JS -->
    <script src="../../assets/js/app-chat.js"></script>
    
    <!-- 소켓 -->
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.5.1/sockjs.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
    <script>
$(function () {
    connect();
});
//문서가 로드될 때 실행되는 함수, 'connect' 함수를 호출하여 웹소켓 연결을 수행

var stompClient = null; //웹소켓 통신을 위한 Stomp 클라이언트를 저장하는 변수
var username = "";  // 사용자의 이름을 저장하는 변수로, 초기에는 비어 있는 상태

function connect() {
	// 웹소켓 연결을 수행하는 함수
    var socket = new SockJS('/chat');
	// SockJS 를 통해 서버의 웹소켓 엔드포인트에 연결
    stompClient = Stomp.over(socket);
	// Stomp 클라이언트 생성
    stompClient.connect({}, function (frame) {
    	// 연결이 성공하면 콜백 함수에서 로그 출력
        console.log('Connected: ' + frame);
    });
}


</script>
    
    
    
    <script>
    
    // 클릭한 채팅방 빨간색으로 활성화
    $(document).ready(function() {
        // 각 리스트 아이템에 클릭 이벤트 리스너 추가
        $('.chat-contact-list-item').click(function() {
            // 기존 active 클래스를 모두 제거
            $('.chat-contact-list-item').removeClass('active');
            
            // 클릭한 리스트에 active 클래스 추가
            $(this).addClass('active');
        });
    });
    
    
    // 직원 리스트 모달 시작
    	$.ajax({
    		type: 'get',
        	url: '../getOrgList',
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
    	    var modalBody = $('#apv-modal .modal-body .list');

    	    // 리스트 초기화
    	    modalBody.empty();

    	    // 각각의 데이터를 리스트에 추가
    	    orgList.forEach(function (employee) {
    	        var listItem = $('<div class="list-item"></div>');
    	        listItem.append('<input type="checkbox" class="emp-checkbox" data-emp-id="' + employee.emp_id + '">');
    	        listItem.append('<span class="emp-id">' + employee.emp_id + '</span>');
    	        listItem.append(' | <span class="emp-name">' + employee.emp_name + '</span>');


    	        // 리스트 아이템을 모달 바디에 추가
    	        modalBody.append(listItem);
    	    });

    	    // 체크박스 변경 시 처리
    	    modalBody.on('change', '.emp-checkbox', function () {
    	        var isChecked = $(this).prop('checked');
    	        var empId = $(this).data('emp-id');

    	        // 선택된 정보를 사용하여 원하는 동작 수행
    	        console.log('Employee ID:', empId, 'Checked:', isChecked);
    	    });

    	    // 선택 버튼 클릭 시 처리
    	    $('.apv-doc-select').click(function () {
    	        var selectedEmpIds = [];

    	        // 체크된 항목의 emp_id 가져오기
    	        modalBody.find('.list-item input:checked').each(function () {
    	            selectedEmpIds.push($(this).data('emp-id'));
    	        });

    	        // 선택된 정보를 사용하여 원하는 동작 수행
    	        console.log('Selected Employee IDs:', selectedEmpIds);
    	        
    	        // 채팅방 이름 첫 번째 선택한 사람 외 1명으로 변경하여 서버에 값 보내기
    	        // 셀렉트한 emp_id 들 값들 서버로 보내기
    	        // 생성자는 서버에서 세션 id 받아서 저장하기
    	        // 생성일은 커런트 타임 스탬프로 넣기
    	        // 채팅방 제너레이트키 사용해서 채팅방 참여자 테이블에 참여자들 id 넣기
    	        
    	        
    	        $.ajax({
				    type: 'GET',
				    url: '/createRoom',
				    data: { emp_ids: selectedEmpIds },
				    traditional: true,
				    success: function (data) {
				        console.log(data);
				        if(data.idx > 0){
				        	console.log("생성");
				        	location.href='../chat/messengerT.go';
				        }
				    },
				    error: function (error) {
				        console.error('Error:', error);
				    }
				});
    	        

    	        // 모달 닫기
    	        $('#apv-modal').modal('hide');
    	        
    	    });
    	    
    		 // 모달이 닫힐 때 체크박스 상태 초기화
    	    $('#apv-modal').on('hidden.bs.modal', function () {
    	        modalBody.find('.emp-checkbox').prop('checked', false);
    	        checkboxStates = {}; // 체크박스 상태 초기화
    	    });
    	    
    	}
    	
    	/*/직원 리스트 모달 끝 */
	  
    </script>
    
    
  </body>
</html>
