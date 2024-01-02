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
	
/* 	.bx.bx-message-dots.chat{
	font-size: 10rem;
	margin-top : 20rem;
	margin-left: 27rem;
	} */
	.chat-contact-status.text-truncate.mb-0.text-muted{
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
                        	<span class="chat-contact-name text-truncate m-0">${emp_name}</span><span id="emp_id">${emp_id}</span>
                        	<div><span class="m-0">${emp_dept_name}</span></div>
                        	</div>
                        	<button type="button" class="btn btn-primary text-nowrap" data-bs-toggle="modal" data-bs-target="#apv-modal">채팅방 추가</button>
                       <!--  <button class="btn btn-primary text-nowrap">채팅방 추가</button> -->
                       </div>
                    </div>
                    <hr class="container-m-nx mt-3 mb-0" />
                    <div class="sidebar-body">
                      <!-- Chats -->
                      <ul class="list-unstyled chat-contact-list pt-1" id="chat-list">
                        <li class="chat-contact-list-item">
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
                        <c:forEach items="${ChatRoomAll}" var="ChatRoomAll" varStatus="loop">
                        <li class="chat-contact-list-item">
                          <a class="d-flex align-items-center">
                            <div class="flex-shrink-0 avatar avatar-online">
                              <img src="../../assets/img/avatars/13.png" alt="Avatar" class="rounded-circle" />
                            </div>
                            <div class="chat-contact-info flex-grow-1 ms-3">
                            <input type=hidden value="${ChatRoomAll.chat_room_idx}"/>
                              <h6 class="chat-contact-name text-truncate m-0">${ChatRoomAll.chat_room_name}</h6>
                              <p class="chat-contact-status text-truncate mb-0 text-muted">
							    <c:forEach items="${ChatRoomAll.chatMb}" var="chatMb" varStatus="loop">
							        <span>${chatMb.emp_id}</span>
							        <c:if test="${not loop.last}">
							            <!-- Add "," only if it's not the last element -->
							            ,
							        </c:if>
							    </c:forEach>
							</p>
                            </div>                         
                            <small class="text-muted mb-auto">${ChatRoomAll.chat_room_date}</small>
                          </a>
                        </li>
                        </c:forEach>                      
                      </ul>
                      
                    </div>
                  </div>
                  <!-- /Chat contacts -->

                  <!-- Chat History -->
                 <!--  <div class="col app-chat-history">
                    <i class='bx bx-message-dots chat' ></i>
                      
                    </div>
                  </div> -->
                  <!-- /Chat History -->
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
                        
                        <ul id="chatMessageList" class="list-unstyled chat-history mb-0">
						    <!-- 채팅 메시지가 동적으로 추가될 곳 -->
						</ul>
						<ul id="webChatMessage" class="list-unstyled chat-history mb-0">
						    <!-- 채팅 메시지가 동적으로 추가될 곳 -->
						</ul>
                      </div>
                      <!-- Chat message form -->
                      <div class="chat-history-footer">
                        <form class="form-send-message d-flex justify-content-between align-items-center">
                          <input id="chatSend"
                            class="form-control message-input border-0 me-3 shadow-none"
                            placeholder="메시지를 입력하세요..." />
                          <div class="message-actions d-flex align-items-center">                      
                            <label for="attach-doc" class="form-label mb-0">
                              <!-- <i class="bx bx-paperclip bx-sm cursor-pointer mx-3 text-body"></i> -->
                              <input type="file" id="attach-doc" hidden />
                            </label>
                            <button class="btn btn-primary d-flex send-msg-btn" onclick="sendMessage()">
                              <i class="bx bx-paper-plane me-md-1 me-0"></i>
                              <span class="align-middle d-md-inline-block d-none" >전송</span>
                            </button>
                          </div>
                        </form>
                      </div>
                    </div>
                  </div>
                  <!-- /Chat History -->
                  

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

        </div>

      </div>
      </div>
      </div>
<!-- 여기까지인 듯?  -->
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


<script>/* 웹소켓 스크립트  */
$(function () {
    connect();
});
//문서가 로드될 때 실행되는 함수, 'connect' 함수를 호출하여 웹소켓 연결을 수행

var stompClient = null; //웹소켓 통신을 위한 Stomp 클라이언트를 저장하는 변수
var emp_id = "";
var loginId ="";


var currentChatRoomIdx = null; // 현재 연결된 채팅방의 인덱스 저장 변수

function connect(chatRoomIdx) {
	
	// 이전 채팅방의 구독 해제
    unsubscribeFromPreviousRoom();
	
	// 웹소켓 연결을 수행하는 함수
    var socket = new SockJS('/chat/messenger_his');
	// SockJS 를 통해 서버의 웹소켓 엔드포인트에 연결
    stompClient = Stomp.over(socket);
	// Stomp 클라이언트 생성
    stompClient.connect({}, function (frame) {
    	// 연결이 성공하면 콜백 함수에서 로그 출력
        console.log('Connected: ' + frame);
    	
    	
     // 현재 채팅방에 대한 구독 설정
        if (chatRoomIdx) {
            stompClient.subscribe('/topic/chat/' + chatRoomIdx, function (message) {
                console.log('Received message: ' + message.body);
            });
            // 현재 채팅방 인덱스 저장
            currentChatRoomIdx = chatRoomIdx;
        }
    	
    });
}

function unsubscribeFromPreviousRoom() {
    // 이전 채팅방에서의 구독 해제
    if (currentChatRoomIdx) {
        stompClient.unsubscribe('/topic/chat/' + currentChatRoomIdx);
    }
}

    
 // 채팅방 생성
//직원 리스트 모달 시작
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
		        	location.href='../chat/messenger_his.go';
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

    
    
 // 채팅방 구독
    
// 클릭한 채팅방 빨간색으로 활성화
$(document).ready(function() {
	


    // 각 리스트 아이템에 클릭 이벤트 리스너 추가
    $('.chat-contact-list-item').click(function() {
    	
        // 기존 active 클래스를 모두 제거
        $('.chat-contact-list-item').removeClass('active');

        // 클릭한 리스트에 active 클래스 추가
        $(this).addClass('active');
        
  
        // 선택한 채팅방의 ID를 가져와서 해당 채팅방에 가입
        var newChatRoomIdx = $(this).find('input[type=hidden]').val();
        console.log(newChatRoomIdx);
        

        connect(newChatRoomIdx);

        stompClient.subscribe("/topic/chatRoom/" + newChatRoomIdx, function (webMessage) {
            // 실시간으로 클라이언트에서 구독을 했다.
            console.log('특정 방에 뿌림',webMessage);
            // 새로운 메시지 도착 시 처리
            showMessage(JSON.parse(webMessage.body));
        });

        $.ajax({
            type: 'GET',
            url: '/chatList', // 서버에서 처리할 요청 URL
            data: { chatRoomIdx: newChatRoomIdx }, // 전송할 데이터 (chatRoomIdx)
            success: function(data) {
                // 서버에서 받은 데이터(response)를 처리
                console.log('채팅 리스트 가져오기 성공', data);

                loginId= data.loginId;
                // 여기서 받은 데이터를 이용하여 화면에 채팅 리스트를 업데이트하거나 처리
                showMessageList(data.chatList, loginId);
            },
            error: function(error) {
                console.error('채팅 리스트 가져오기 실패', error);
            }
        });
    });
});



   
function showMessageList(chatList, loginId) {
	$('#chatMessageList').empty();
	console.log("쇼메시지리스트함수",chatList);
	console.log("쇼메시지리스트함수",loginId);
    // chatList를 순회하며 각 메시지에 대한 처리
    chatList.forEach(function(message) {
        // 적절한 메시지 형식을 선택하여 화면에 추가
        var messageHtml = getMessageHtml(message, loginId);
        
        // 채팅 메시지 목록에 추가
        $('#chatMessageList').append(messageHtml);
    });
}

function getMessageHtml(message, loginId) {
	console.log("겟메시지함수",message);
	console.log("겟메시지함수",loginId);
    var messageHtml = '';

    if (message.emp_id == loginId) {
        // 로그인한 사용자의 메시지
        messageHtml += '<li class="chat-message chat-message-right">';
        messageHtml += '<div class="d-flex overflow-hidden">';
        messageHtml += '<div class="chat-message-wrapper flex-grow-1">';
        messageHtml += '<div class="chat-message-text">';
        messageHtml += '<p class="mb-0">' + message.message + '</p>';
        messageHtml += '</div>';
        messageHtml += '<div class="text-end text-muted mt-1">';
        messageHtml += '<small>' + message.message_date + '</small>';
        messageHtml += '</div>';
        messageHtml += '</div>';
    } else {
        // 다른 사용자의 메시지
        messageHtml += '<li class="chat-message">';
        messageHtml += '<div class="d-flex overflow-hidden">';
        messageHtml += '<div class="user-avatar flex-shrink-0 me-3">';
        messageHtml += '<div class="avatar avatar-sm">';
        messageHtml += '<img src="../../assets/img/avatars/2.png" alt="Avatar" class="rounded-circle" />';
        messageHtml += '<span>' + message.emp_id + '</span>';
        messageHtml += '</div>';
        messageHtml += '</div>';
        messageHtml += '<div class="chat-message-wrapper flex-grow-1">';
        messageHtml += '<div class="chat-message-text">';
        messageHtml += '<p class="mb-0">' + message.message + '</p>';
        messageHtml += '</div>';
        messageHtml += '<div class="text-muted mt-1">';
        messageHtml += '<small>' + message.message_date + '</small>';
        messageHtml += '</div>';
        messageHtml += '</div>';
    }


    messageHtml += '</div>';
    messageHtml += '</li>';

    return messageHtml;
}


function sendMessage() {
    // 메시지 내용 가져오기
    var messageContent = $('#chatSend').val();
    console.log(messageContent);
    
    // 선택된 채팅방의 chat_room_idx 가져오기
    var chatRoomIdx = $('.chat-contact-list-item.active input[type=hidden]').val();
    console.log(chatRoomIdx);
    
 // 현재 시간을 가져오기
    var currentDate = new Date();

    // 시간을 원하는 형식으로 변환 (예: "2024-01-02")
    var formattedDate = currentDate.getFullYear() + "-" +
                        padZero(currentDate.getMonth() + 1) + "-" +
                        padZero(currentDate.getDate());
    
    console.log(formattedDate);
    
    console.log(loginId);
    stompClient.send("/app/chatRoom/" + chatRoomIdx, {}, JSON.stringify({
    	'chat_room_idx':chatRoomIdx,
        'message': messageContent,
        'emp_id': loginId,
        'message_date': formattedDate
    }));

    // 메시지 전송 후 입력창 초기화
    $('#chatSend').val('');
}

//숫자가 한 자리일 경우 앞에 0을 붙이는 함수
function padZero(number) {
    return (number < 10 ? '0' : '') + number;
}


function showMessage(webMessage) {
	console.log("웹소켓쇼메시지",loginId);
	var webMessageHtml = getWebMessageHtml(webMessage, loginId);
	$('#webChatMessage').append(webMessageHtml);
	
	
}

function getWebMessageHtml(webMessage, loginId) {
/* 	$('#webChatMessage').empty(); */
	console.log("웹메시지함수",webMessage);
	console.log("웹메시지함수",loginId);
    var webMessageHtml = '';

    if (webMessage.emp_id == loginId) {
        // 로그인한 사용자의 메시지
        webMessageHtml += '<li class="chat-message chat-message-right">';
        webMessageHtml += '<div class="d-flex overflow-hidden">';
        webMessageHtml += '<div class="chat-message-wrapper flex-grow-1">';
        webMessageHtml += '<div class="chat-message-text">';
        webMessageHtml += '<p class="mb-0">' + webMessage.message + '</p>';
        webMessageHtml += '</div>';
        webMessageHtml += '<div class="text-end text-muted mt-1">';
        webMessageHtml += '<small>' + webMessage.message_date + '</small>';
        webMessageHtml += '</div>';
        webMessageHtml += '</div>';
    } else {
        // 다른 사용자의 메시지
        webMessageHtml += '<li class="chat-message">';
        webMessageHtml += '<div class="d-flex overflow-hidden">';
        webMessageHtml += '<div class="user-avatar flex-shrink-0 me-3">';
        webMessageHtml += '<div class="avatar avatar-sm">';
        webMessageHtml += '<img src="../../assets/img/avatars/2.png" alt="Avatar" class="rounded-circle" />';
        webMessageHtml += '<span>' + webMessage.emp_id + '</span>';
        webMessageHtml += '</div>';
        webMessageHtml += '</div>';
        webMessageHtml += '<div class="chat-message-wrapper flex-grow-1">';
        webMessageHtml += '<div class="chat-message-text">';
        webMessageHtml += '<p class="mb-0">' + webMessage.message + '</p>';
        webMessageHtml += '</div>';
        webMessageHtml += '<div class="text-muted mt-1">';
        webMessageHtml += '<small>' + webMessage.message_date + '</small>';
        webMessageHtml += '</div>';
        webMessageHtml += '</div>';
    }


    webMessageHtml += '</div>';
    webMessageHtml += '</li>';

    return webMessageHtml;
}

    
    
</script>
    
    
</body>

</html>
