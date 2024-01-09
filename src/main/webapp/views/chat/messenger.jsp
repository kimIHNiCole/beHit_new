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
    <link rel="stylesheet" href="../../assets/vendor/libs/bootstrap-select/bootstrap-select.css" />
	<link rel="stylesheet" href="../../assets/vendor/libs/jstree/jstree.css" /> <!-- 조직도 -->

    <!-- Page CSS -->

    <link rel="stylesheet" href="../../assets/vendor/css/pages/app-chat.css" />
    <link rel="stylesheet" href="../../assets/vendor/css/pages/page-profile.css" />

    <!-- Helpers -->
    <script src="../../assets/vendor/js/helpers.js"></script>
    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Template customizer: To hide customizer set displayCustomizer value false in config.js.  -->
<!--     <script src="../../assets/vendor/js/template-customizer.js"></script> -->
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
	
 	.bx.bx-message-dots.chat{
	font-size: 10rem;
	margin-top : 20rem;
	margin-left: 27rem;
	}
	
	.text-primary.mb-0{
	margin: 1rem;
	}
	.flex-grow-1.input-group.input-group-merge.rounded-pill.ms-1{
	margin-top: 1rem;
	}
	.chatListAndS{
 	margin-left: 0.3rem;
	margin-right: 1rem;
	margin-bottom: 0.5rem;
	}
.chat-names{
font-size: 10px;
}

.modal-content{
width: 23rem;
}
.card.mb-md-0.mb-4.shadow-none.border.overflow-hidden{

width: 20rem;
}
.app-chat{
position: relative;
height: calc(100vh - 9rem);
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
                          <!-- <img
                            class="user-avatar rounded-circle cursor-pointer"
                            src="../../assets/img/avatars/1.png"
                            alt="Avatar" /> -->
                            <c:choose>
						    <c:when test="${not empty photo and not empty photo.new_file_name}">
						        <img src="/file/employee/${photo.new_file_name}" alt="${photo.ori_file_name}" 
						            class="user-avatar rounded-circle cursor-pointer" />
						    </c:when>
						    <c:otherwise>
						        <img src="../../assets/img/avatars/21.png" alt="user image" 
						            class="user-avatar rounded-circle cursor-pointer" />
						    </c:otherwise>
						</c:choose>
                            
                        </div>
                        <div class="text-muted text-uppercase">
                        	<span class="chat-contact-name text-truncate m-0">${emp_name}</span><span id="emp_id">(${emp_id})</span>
                        	<div><span class="m-0">${emp_dept_name}</span></div>
                        	</div>
                        	<button type="button" onclick="addChatRoom()" class="btn btn-primary text-nowrap" data-bs-toggle="modal" data-bs-target="#apv-org-modal">채팅방 추가</button>
                       
                       </div>
                    </div>
                    <hr class="container-m-nx mt-3 mb-0" />
                    <div class="sidebar-body">
                    	<div class="chatListAndS d-flex align-items-center">
					    <h6 class="text-primary mb-0">채팅리스트</h6>
					    <div class="flex-grow-1 input-group input-group-merge rounded-pill ms-1">
					        <span class="input-group-text" id="basic-addon-search31">
					            <i class="bx bx-search fs-4"></i>
					        </span>
					        <input
					            type="text"
					            class="form-control chat-search-input"
					            placeholder="Search..."
					            aria-label="Search..."
					            aria-describedby="basic-addon-search31"
					        />
					    </div>
					</div>
                      <!-- Chats -->
                      
                      <ul class="list-unstyled chat-contact-list pt-1" id="chat-list">
                        <li class="chat-contact-list-item chat-list-item-0 d-none">
                          <h6 class="text-muted mb-0">No Chats Found</h6>
                        </li>
                        <li id="showChatRListOnChatMs" class="chat-contact-list-item">
                        	
                        </li>
                       
<%--                         <!-- 온라인일 경우 표시 -->
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
							        <span>${chatMb.emp_name}</span>
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
                        </c:forEach> --%>
                        
                        
                      </ul>
                      
                    </div>
                  </div>
                  <!-- /Chat contacts -->

                  <!-- Chat History -->
                 <div class="col app-chat-history" id="defaultChatHistory">
                    <i class='bx bx-message-dots chat' ></i>
                 </div>
                  
                  <!-- /Chat History -->
                  <!-- Chat History -->
                  <div class="col app-chat-history" id="selectedChatHistory" style="display: none;">
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
                              	id="roomPhotoToDisplay"
                                src=""
                                alt="Avatar"
                                class="rounded-circle"
                                data-bs-toggle="sidebar"
                                data-overlay
                                data-target="#app-chat-sidebar-right" />
                            </div>
                            <div class="chat-contact-info flex-grow-1 ms-3">
                              <h6 class="m-0" id="chatRoomNameInRoom"></h6>
                              <small class="user-status text-muted" id="chatMbListInRoom"></small>
                            </div>
                          </div>
                          
                        </div>
                      </div>
                      <div class="chat-history-body" id="chat-history-body">
                        
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
                            <button class="btn btn-primary d-flex send-msg-btn"  onclick="sendMessage()">
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

			 <!-- 조직도 추가 모달 -->
              <div class="modal fade org-modal" id="apv-org-modal" tabindex="-1" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="modalCenterTitle">조직도</h5>
                    <button
                      type="button"
                      class="btn-close"
                      data-bs-dismiss="modal"
                      aria-label="Close"></button>
                  </div>
                  <div class="modal-body org-modal-body">
                  
	                  <div class="col-md-4">
				              <div class="card mb-md-0 mb-4 shadow-none border overflow-hidden" >
				                
				                <div class="card-body" id="org-body">
				                  <div id="jstree-checkbox"></div>
				                </div>
				              </div>
				            </div>
				            
                    
                  
                  </div>
                  <div class="modal-footer">
                    <div class="col-12 text-center">
                      <button 
                      	type="button" class="btn btn-primary me-sm-3 me-1 mt-3 org-list-select"
                      	id=""
                      	data-bs-dismiss="modal"
                        aria-label="Close">선택</button>
                      <button
                        type="reset"
                        id="modal-close"
                        class="btn btn-label-secondary btn-reset mt-3"
                        data-bs-dismiss="modal"
                        aria-label="Close">취소</button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- /조직도 추가 모달 -->
              
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
    <script src="../../assets/vendor/libs/jstree/jstree.js"></script>

    

    <!-- Main JS -->
    <script src="../../assets/js/main.js"></script>

    <!-- Page JS -->
    <script src="../../assets/js/app-chat.js"></script>
    
    <!-- 소켓 -->

    <script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.5.1/sockjs.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
 <!-- Header JS -->
    <script src="../../assets/js/header.js"></script> 

<script>/* 웹소켓 스크립트  */

$(function () {
    connect();
});
//문서가 로드될 때 실행되는 함수, 'connect' 함수를 호출하여 웹소켓 연결을 수행

var stompClient = null; //웹소켓 통신을 위한 Stomp 클라이언트를 저장하는 변수
var emp_id = "";
var loginId ="";
var loginName="";
var loginFileName="";
var currentSubscription = null;
let chatRoomIdx = '';
var selectedNodes = []; // 전역 범위에서 정의

function connect() {
    var socket = new SockJS('/chat');
    stompClient = Stomp.over(socket);
    
    // 추가 코드: 디버깅을 위한 로그
    console.log('Stomp 클라이언트 설정:', stompClient);

    stompClient.connect({}, function (frame) {
        console.log('Connected:', frame);
    });
}

function chatRListOnChatMs(){
	console.log('chatRListOnChatMs 호출됨');
	$.ajax({
		type: 'get',
		url: '/chatRListOnChatMs',
		data: {},
		dataType: 'JSON',
	    success : function(data){
	      console.log(data);
	      showChatRListOnChatMs(data);
	    } ,
	    error : function(e){
	      console.log(e);
	    }
	});
}

function showChatRListOnChatMs(data) {
    var chatListContainer = $('#chat-list');
    var noChatsFoundItem = chatListContainer.find('.chat-list-item-0');
    var chatRListOnChatMs = data.chatRListOnChatMs;
    loginId=data.loginId;

    // 기존에 있던 내용을 비워줍니다.
    chatListContainer.empty();

    if (chatRListOnChatMs.length === 0) {
        noChatsFoundItem.removeClass('d-none');
        return;
    } else {
        noChatsFoundItem.addClass('d-none');
    }

    chatRListOnChatMs.forEach(function (chatRoom) {
    	var listItem = $('<li class="chat-contact-list-item"></li>');
    	listItem.on('click', function() {
            registerClickEvent(chatRoom.chat_room_idx);
            // 클릭한 리스트에 active 클래스 추가
            $('.chat-contact-list-item').removeClass('active');
            $(this).addClass('active');
        });
        
        var otherMembers = chatRoom.chatMb.filter(function (chatMb) {
            return chatMb.emp_id !== loginId;
        });

        console.log("나를 제외한 멤버", otherMembers);
        
        
        // 리스트 아이템 내용 채우기
        var avatarHtml = '';

        if (otherMembers.length > 1) {
            // 참가자가 여러 명일 때
            avatarHtml = '<img src="../../assets/img/avatars/22.jpg" alt="Avatar" class="rounded-circle" />';
        } else {
        	if(otherMembers[0].new_file_name != null){
        		avatarHtml = '<img src="/file/employee/' + otherMembers[0].new_file_name + '" alt="Avatar" class="rounded-circle" />';
        	}else{
        		avatarHtml ='<img src="../../assets/img/avatars/21.png" alt="Avatar" class="rounded-circle" />';
        	}
        }

        listItem.append('<a class="d-flex align-items-center">' +
            '<div class="flex-shrink-0 avatar avatar-online">' + avatarHtml + '</div>' +
            '<div class="chat-contact-info flex-grow-1 ms-3">' +
            '<input type="hidden" value="' + chatRoom.chat_room_idx + '"/>' +
            '<h6 class="chat-contact-name text-truncate m-0">' + chatRoom.chat_room_name + '</h6>' +
            '<p class="chat-contact-status text-truncate mb-0 text-muted">' + chatRoom.last_message + '</p>' +
            '</div>' +
            '<small class="text-muted mb-auto">' + formattedDate(chatRoom.last_message_date) + '</small>' +
            '</a>');

        // 리스트 아이템을 부모 요소에 추가
        chatListContainer.append(listItem);
    });
}

function addChatRoom(){
	console.log("채팅방 추가 버튼 클릭");
	// 모달이 열릴 때마다 체크박스 초기화
    
	 // 채팅방 생성
	//리스트 받기
		$.ajax({
		type: 'get',
    	url: '../../getOrgList',
    	data: {},
    	dataType: 'JSON',
        success : function(data){
          console.log("data",data);
        drawOrg(data.orgList, data.deptKind);
        } ,
        error : function(e){
          console.log("e",e);
        }
	});
	
}    

//리스트 받기 실행 함수
function drawOrg(orgList, deptKind) {
    		console.log('orgList', orgList);
    		console.log('deptKind',deptKind);
    		
    		var theme = $('html').hasClass('light-style') ? 'default' : 'default-dark';
    		var checkboxTree = $('#jstree-checkbox');
         	console.log("체크박스트리",checkboxTree);
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
   			    				console.log("cnt", cnt);
   			    			}
   			    		}
   			    		return cnt;
    			    };
    			    var empInfo = function(index){
    			    	var info=[];
   			    		for(var k=0; k < orgList.length; k++){
   			    			if(orgList[k].dept == deptKind[i]){
   			    				console.log("emp_value : ", orgList[k].emp_name,orgList[k].grade);
   			    				info.push( orgList[k].emp_name+" | "+orgList[k].grade+"<input type='hidden' value='"+orgList[k].emp_id+"'/>");
   			    			}
   			    		}
   			    		return info[index];
    			    };
    			    
    			    for (var j = 0; j < empLength(); j++) {
    			    	console.log("empInfo("+j+")",empInfo(j));
    			        var emp = {
    			            text: empInfo(j)
    			        };
    			        deptname.children.push(emp);
    			    } 

    			    // 부모 데이터를 배열에 추가
   			    	serverData.push(deptname); 
    			}

    			console.log(serverData); 

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
//체크시 조직도 이벤트 (담당자)
$(document).ready(function () {
    $('#jstree-checkbox').on('click', '.jstree-anchor', function (event) {
        event.preventDefault();

        var $clickedNode = $(this);
        var nodeName = $clickedNode.text().trim();
        var nodeHidden = $clickedNode.find('input[type="hidden"]').val();
        var isSelected = $clickedNode.attr('aria-selected') === 'true';

        setTimeout(function () {
            var currentSelected = $clickedNode.attr('aria-selected') === 'true';

            var isParentNode = !$clickedNode.parent().hasClass('jstree-leaf');
            if (isParentNode) {
                var isOpen = $clickedNode.parent().hasClass('jstree-open');
                if (!isOpen) {
                    $clickedNode.parent().find('> .jstree-icon').click();
                }

                $clickedNode.parent().find('.jstree-children li').each(function () {
                    var $childNode = $(this).find('> .jstree-anchor');
                    var childNodeName = $childNode.text().trim();
                    var childNodeSelected = $childNode.attr('aria-selected') === 'true';
                    var ChildHidden = $childNode.find('input[type="hidden"]').val();

                    // "|"를 기준으로 문자열 분할하고 첫 번째 부분 사용
                    var empNameParts = childNodeName.split('|');
                    var empName = empNameParts.length > 0 ? empNameParts[0].trim() : '';

                    // 객체 생성
                    var empObject = {
                        emp_id: ChildHidden,
                        emp_name: empName
                    };

                    // 배열에서 노드 정보 추가 또는 제외
                    if (childNodeSelected) {
                        if (!selectedNodes.some(node => node.emp_id === ChildHidden)) {
                            selectedNodes.push(empObject);
                            addToDamList(empName, ChildHidden);
                        }
                    } else {
                        selectedNodes = selectedNodes.filter(node => node.emp_id !== ChildHidden);
                        removeFromDamList(ChildHidden);
                    }

                    console.log('이름:', childNodeName, ' 클릭 후 체크 여부:', childNodeSelected, ' ChildHidden:', ChildHidden);
                });
            } else {
                // "|"를 기준으로 문자열 분할하고 첫 번째 부분 사용
                var empNameParts = nodeName.split('|');
                var empName = empNameParts.length > 0 ? empNameParts[0].trim() : '';

                // 객체 생성
                var empObject = {
                    emp_id: nodeHidden,
                    emp_name: empName
                };

                // 배열에서 노드 정보 추가 또는 제외
                if (currentSelected) {
                    if (!selectedNodes.some(node => node.emp_id === nodeHidden)) {
                        selectedNodes.push(empObject);
                        addToDamList(empName, nodeHidden);
                    }
                } else {
                    selectedNodes = selectedNodes.filter(node => node.emp_id !== nodeHidden);
                    removeFromDamList(nodeHidden);
                }

                console.log('이름:', nodeName, ' 클릭 후 체크 여부:', currentSelected, ' nodeHidden:', nodeHidden);
            }

            // 출력 선택된 노드 배열
            console.log('Selected Nodes:', selectedNodes);
        }, 0);
    });

    // 트리 노드 열림/닫힘 이벤트 리스너를 추가
    $('#jstree-checkbox').on('after_open.jstree', function (event, data) {
        // 열린 노드의 이름
        var nodeName = $(data.node).find('> a').text().trim();
		
        // console.log('이름:', nodeName, ' 상태: 열림');
    });

    $('#jstree-checkbox').on('after_close.jstree', function (event, data) {
        // 닫힌 노드의 이름
        var nodeName = $(data.node).find('> a').text().trim();

        // console.log('이름:', nodeName, ' 상태: 닫힘');
    });
});

function addToDamList(name, hiddenValue) {
    var $damList = $('#addChamList');
    var Fname = name.split(' | ')[0];
    var $badge = $('<span style="margin-right:5px" class="badge bg-primary">' + Fname + '<button type="button" class="offset-1" onclick="removeNodeFromList1(\'' + hiddenValue + '\')"><i class=\'bx bx-x\'></i></button></span>');
    $damList.append($badge);
}

function removeFromDamList(hiddenValue) {
    var $badgeToRemove = $('#addDamList').find('[onclick="removeNodeFromList(\'' + hiddenValue + '\')"]').closest('.badge.bg-primary');
    $badgeToRemove.remove();
}

function removeNodeFromList(hiddenValue) {
    selectedNodes = selectedNodes.filter(node => node !== hiddenValue);
    removeFromDamList(hiddenValue);
    console.log('Selected Nodes after removal:', selectedNodes);
}



//선택 버튼 클릭 시 처리
$('.org-list-select').click(function () {
	console.log("selectedNodes",selectedNodes);
    
 	$.ajax({
        type: 'POST',
        url: '/createRoom',
        contentType: 'application/json',
        data: JSON.stringify(selectedNodes),
        success: function (data) {
            console.log(data);
            if (data.idx > 0) {
                console.log("생성");
                location.href = '../chat/messenger.go';
            }
        },
        error: function (error) {
            console.error('Error:', error);
        }
    });
    

    // 모달 닫기
    $('#apv-org-modal').modal('hide');
    selectedNodes = [];
    
});

//모달이 닫힐 때 selectedNodes 배열 초기화
$('#apv-org-modal').on('hidden.bs.modal', function () {
    selectedNodes = [];
});





/* function drawOrg(orgList, deptKind) {
    var modalBody = $('#apv-modal .modal-body .list');

    // 리스트 초기화
    modalBody.empty();

    // 각각의 데이터를 리스트에 추가
    orgList.forEach(function (employee) {
        var listItem = $('<div class="list-item"></div>');
        listItem.append('<input type="checkbox" class="emp-checkbox" data-emp-id="' + employee.emp_id + '" data-emp-name="' + employee.emp_name + '">');
        listItem.append('<span class="emp-id">' + employee.emp_id + '</span>');
        listItem.append(' | <span class="emp-name">' + employee.emp_name + '</span>');


        // 리스트 아이템을 모달 바디에 추가
        modalBody.append(listItem);
    });

    // 체크박스 변경 시 처리
    modalBody.on('change', '.emp-checkbox', function () {
        var isChecked = $(this).prop('checked');
        var empId = $(this).data('emp-id');
        var empName = $(this).data('emp-name');

        // 선택된 정보를 사용하여 원하는 동작 수행
        console.log('직원 ID:', empId, '직원 이름:', empName, '선택 여부:', isChecked);
    });

    // 선택 버튼 클릭 시 처리
    $('.apv-doc-select').click(function () {
    	var selectedEmpData = [];

        // 체크된 항목의 emp_id 가져오기
        modalBody.find('.list-item input:checked').each(function () {
        	selectedEmpData.push({
                emp_id: $(this).data('emp-id'),
                emp_name: $(this).data('emp-name')
            });
        });

        // 선택된 정보를 사용하여 원하는 동작 수행
        console.log('선택된 직원 정보:', selectedEmpData);
        
        // 채팅방 이름 첫 번째 선택한 사람 외 1명으로 변경하여 서버에 값 보내기
        // 셀렉트한 emp_id 들 값들 서버로 보내기
        // 생성자는 서버에서 세션 id 받아서 저장하기
        // 생성일은 커런트 타임 스탬프로 넣기
        // 채팅방 제너레이트키 사용해서 채팅방 참여자 테이블에 참여자들 id 넣기
        
        
        $.ajax({
		    type: 'POST',
		    url: '/createRoom',
		    contentType: 'application/json',
		    data: JSON.stringify(selectedEmpData),
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
    
} */

/*/직원 리스트 모달 끝 */

    
 // 채팅방 구독
    
// 클릭한 채팅방 빨간색으로 활성화
$(document).ready(function() {

	chatRListOnChatMs();
	
	if (chatRoomIdx) {
        registerClickEvent(chatRoomIdx);
    }
        
});
 
 
function registerClickEvent(chatRoomIdx) {
		console.log("클릭된 챗룸",chatRoomIdx);
    	//웹소켓 대화 삭제
    	$('#webChatMessage').empty();
/*         // 기존 active 클래스를 모두 제거
        $('.chat-contact-list-item').removeClass('active');
        
        // 클릭한 리스트에 active 클래스 추가
        $(this).addClass('active'); */
        
        //기본 채팅방 숨기기
        $('#defaultChatHistory').css('display', 'none');
        
        // 선택된 채팅방 표시
        $('#selectedChatHistory').css('display', 'block');
        
     // 선택한 채팅방의 ID를 가져와서 해당 채팅방에 가입
/*         chatRoomIdx = $(this).find('input[type=hidden]').val(); */
        

        if (currentSubscription) {
            // 현재 구독이 있으면 해지
            currentSubscription.unsubscribe();
        }

        currentSubscription = stompClient.subscribe("/topic/chatRoom/" + chatRoomIdx, function (webMessage) {
            console.log('특정 방에 뿌림', webMessage);
            console.log(chatRoomIdx);
            chatRListOnChatMs();

            showMessage(JSON.parse(webMessage.body));
        });

        
        $.ajax({
            type: 'GET',
            url: '/chatList', // 서버에서 처리할 요청 URL
            data: { chatRoomIdx: chatRoomIdx }, // 전송할 데이터 (chatRoomIdx)
            success: function(data) {
                // 서버에서 받은 데이터(response)를 처리
                console.log('채팅 리스트 가져오기 성공', data);

                loginId= data.loginId;
                loginName= data.loginName;
                loginFileName= data.loginPhoto.new_file_name;
             // 여기서 받은 데이터를 이용하여 화면에 채팅 리스트를 업데이트하거나 처리
                var roomNameToDisplay;

                // loginName을 제외한 emp_name이 하나라면 해당 이름을 사용, 그렇지 않으면 data.chatRoomName 사용
                var otherMembers = data.chatMbListInRoom.filter(function (chatMb) {
                    return chatMb.emp_name != loginName;
                });

                if (otherMembers.length == 1) {
                    roomNameToDisplay = otherMembers[0].emp_name;
                    if(otherMembers[0].new_file_name != null){
                    	newFileName= otherMembers[0].new_file_name;
                    	$('#roomPhotoToDisplay').attr('src', '/file/employee/' + newFileName);
                    }else{
                    	$('#roomPhotoToDisplay').attr('src', "../../assets/img/avatars/21.png");
                    }
                } else {
                    roomNameToDisplay = data.chatRoomName;
                    $('#roomPhotoToDisplay').attr('src', "../../assets/img/avatars/22.jpg");
                }

                $('#chatRoomNameInRoom').text(roomNameToDisplay);
                showChatMbListInRoom(data.chatMbListInRoom);
                showMessageList(data.chatList, loginId);
            },
            error: function(error) {
                console.error('채팅 리스트 가져오기 실패', error);
            }
        });        
	
}
 

 
function showChatMbListInRoom(chatMbListInRoom){

	var empNames = chatMbListInRoom.map(function (chatMb) {
        return chatMb.emp_name;
    });
	// empNames 배열을 쉼표로 연결한 문자열 생성
    var empNamesString = empNames.join(', ');

    console.log("룸멤버리스트이름", empNamesString);
    $('#chatMbListInRoom').text(empNamesString);
	}
 


   
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
        // chatMessageList에 대한 스크롤을 맨 아래로 이동
/*         $('#chatMessageList').scrollTop($('#chatMessageList')[0].scrollHeight); */
    });
}

function formattedDate(dateString) {
    const options = { month: '2-digit', day: '2-digit', hour: '2-digit', minute: '2-digit', hour12: false };
    const formatted = new Date(dateString).toLocaleString('ko-KR', options);
    return formatted;
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
        messageHtml += '<small>' + formattedDate(message.message_date) + '</small>';
        messageHtml += '</div>';
        messageHtml += '</div>';
    } else {
        // 다른 사용자의 메시지
        messageHtml += '<li class="chat-message">';
        messageHtml += '<div class="d-flex overflow-hidden">';
        messageHtml += '<div class="user-avatar flex-shrink-0 me-3">';
        messageHtml += '<div class="avatar avatar-sm">';
        if (message.new_file_name === null) {
            messageHtml += '<img src="../../assets/img/avatars/21.png" alt="Avatar" class="rounded-circle" />';
        } else {
            messageHtml += '<img src="/file/employee/' + message.new_file_name + '" alt="Avatar" class="rounded-circle" />';
        }
        messageHtml += '<span class="chat-names">' + message.emp_name + '</span>';
        messageHtml += '</div>';
        messageHtml += '</div>';
        messageHtml += '<div class="chat-message-wrapper flex-grow-1">';
        messageHtml += '<div class="chat-message-text">';
        messageHtml += '<p class="mb-0">' + message.message + '</p>';
        messageHtml += '</div>';
        messageHtml += '<div class="text-muted mt-1">';
        messageHtml += '<small>' + formattedDate(message.message_date) + '</small>';
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
    
    
    
 // 현재 시간을 가져오기
    var currentDate = new Date();

 // 시간을 "MM. DD. HH:mm" 형식으로 변환
    var formattedDate = padZero(currentDate.getMonth() + 1) + ". " +
                        padZero(currentDate.getDate()) + ". " +
                        padZero(currentDate.getHours()) + ":" +
                        padZero(currentDate.getMinutes());
    
    console.log(formattedDate);
    
    console.log(loginId);
    console.log('send:'+chatRoomIdx);
    stompClient.send("/app/chatRoom/" + chatRoomIdx, {}, JSON.stringify({
        'chat_room_idx': chatRoomIdx,
        'message': messageContent,
        'emp_id': loginId,
        'emp_name': loginName,
        'message_date': formattedDate,
        'new_file_name' : loginFileName
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
	// webChatMessage에 대한 스크롤을 맨 아래로 이동
/* 	$('#webChatMessage').scrollTop($('#webChatMessage')[0].scrollHeight); */
	
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
        webMessageHtml += '<small>' + formattedDate(webMessage.message_date) + '</small>';
        webMessageHtml += '</div>';
        webMessageHtml += '</div>';
    } else {
        // 다른 사용자의 메시지
        webMessageHtml += '<li class="chat-message">';
        webMessageHtml += '<div class="d-flex overflow-hidden">';
        webMessageHtml += '<div class="user-avatar flex-shrink-0 me-3">';
        webMessageHtml += '<div class="avatar avatar-sm">';
        if (webMessage.new_file_name === null) {
        	webMessageHtml += '<img src="../../assets/img/avatars/21.png" alt="Avatar" class="rounded-circle" />';
        } else {
        	webMessageHtml += '<img src="/file/employee/' + webMessage.new_file_name + '" alt="Avatar" class="rounded-circle" />';
        }
        webMessageHtml += '<span class="chat-names">' + webMessage.emp_name + '</span>';
        webMessageHtml += '</div>';
        webMessageHtml += '</div>';
        webMessageHtml += '<div class="chat-message-wrapper flex-grow-1">';
        webMessageHtml += '<div class="chat-message-text">';
        webMessageHtml += '<p class="mb-0">' + webMessage.message + '</p>';
        webMessageHtml += '</div>';
        webMessageHtml += '<div class="text-muted mt-1">';
        webMessageHtml += '<small>' + formattedDate(webMessage.message_date) + '</small>';
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
