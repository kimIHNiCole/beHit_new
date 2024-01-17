<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="../../assets/vendor/libs/jquery/jquery.js"></script>
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
      <li id="alarmList" class="nav-item dropdown-notifications navbar-dropdown dropdown me-3 me-xl-1">
                  <a
                    class="nav-link dropdown-toggle hide-arrow"
                    href="javascript:void(0);"
                    data-bs-toggle="dropdown"
                    data-bs-auto-close="outside"
                    aria-expanded="false">
                    <i class="bx bx-bell bx-sm"></i>
                    <span class="badge bg-danger rounded-pill badge-notifications"></span>
                  </a>
        <ul class="dropdown-menu dropdown-menu-end py-0">
        
          <li class="dropdown-menu-header border-bottom">
            <div class="dropdown-header d-flex align-items-center py-3">
              <h5 class="text-body mb-0 me-auto">알림</h5>
              <a
                href="javascript:void(0)"
                id="readAllAlarm"
                class="dropdown-notifications-all text-body"
                data-bs-toggle="tooltip"
                data-bs-placement="top"
                title="모두 읽기"
                ><i class="bx fs-4 bx-envelope-open"></i
              ></a>
            </div>
          </li>
          
          <li class="dropdown-notifications-list scrollable-container">
            <ul class="list-group list-group-flush">
            <%-- <c:choose>
		        <c:when test="${not empty alarmList}">
		            <c:forEach var="alarm" items="${alarmList}">
		                <li class="list-group-item list-group-item-action dropdown-notifications-item">
		                <div class="d-flex">
		                  <div class="flex-shrink-0 me-3">
		                    <div class="avatar">
		                      <img src="../../assets/img/avatars/1.png" alt class="w-px-40 h-auto rounded-circle" />
		                    </div>
		                  </div>
		                  <div class="flex-grow-1">
		                    <h6 class="mb-1">${alarm.alarm_msg}</h6>
		                    <small class="text-muted">${alarm.alarm_date}</small>
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
		            </c:forEach>
		        </c:when>
        <c:otherwise>
        <div class = "noneAlarm">
        <span class="bi bi-bell"></span>
            <div class="alarm_text bold">새로운 소식이 없습니다.</div>
         </div>
        </c:otherwise>
    </c:choose> --%>
            
            <!-- 한덩이 -->
             <!--  <li class="list-group-item list-group-item-action dropdown-notifications-item">
                <div class="d-flex">
                  <div class="flex-shrink-0 me-3">
                    <div class="avatar">
                      <img src="../../assets/img/avatars/1.png" alt class="w-px-40 h-auto rounded-circle" />
                    </div>
                  </div>
                  <div class="flex-grow-1">
                    <h6 class="mb-1">새로운 메시지가 도착했습니다.</h6>
                    <small class="text-muted">메시지 시간</small>
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
              </li> -->
              <!-- 한덩이 -->
	          <!-- <li class="list-group-item list-group-item-action dropdown-notifications-item marked-as-read">
	            <div class="d-flex">
	                <div class="flex-shrink-0 me-3">
	                  <div class="avatar">
	                      <img src="../../assets/img/avatars/2.png" alt class="w-px-40 h-auto rounded-circle" />
	                   </div>
	                  </div>
	                  <div class="flex-grow-1">
	                     <h6 class="mb-1">결재할 문서가 도착하였습니다.</h6>	                             
	                       <small class="text-muted">메시지 시간</small>
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
	           </li> -->
            </ul>
          </li>
          
          <li class="dropdown-menu-footer border-top p-3">
            <button id="deleteAllAlarms" class="btn btn-primary text-uppercase w-100">알림 전체 삭제</button>
          </li>
          
        </ul>
      </li>
      <!--/ Notification -->
      <!-- User -->
      <li class="nav-item navbar-dropdown dropdown-user dropdown">
        <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
          <div class="avatar avatar-online">
            <img id="navPhoto" src="" alt class="w-px-40 rounded-circle" />
          </div>
        </a>
        <ul class="dropdown-menu dropdown-menu-end">
          <li>
            <a class="dropdown-item" href="#">
              <div class="d-flex">
                <div class="flex-shrink-0 me-3">
                  <div class="avatar avatar-online">
                    <img id="navDropPhoto" src="../../assets/img/avatars/1.png" alt class="w-px-40 rounded-circle" />
                  </div>
                </div>
                <div class="flex-grow-1">
                  <span id="navEmpName" class="fw-medium d-block"></span>
                  <small id="navEmpId" class="text-muted"></small>
                </div>
              </div>
            </a>
          </li>
          <li>
            <div class="dropdown-divider"></div>
          </li>
          <li>
            <a class="dropdown-item" href="/logout.go">
              <i class="bx bx-power-off me-2"></i>
              <span class="align-middle">Log Out</span>
            </a>
          </li>
        </ul>
      </li>
      <!--/ User -->
    </ul>
  </div>
</nav>
<!-- / Navbar -->
<script>

$(document).ready(function() {
	
	loadAlarmList();
	navProfile();
	
});	


//프로필 정보를 가져오는 함수
function navProfile() {
    $.ajax({
        url: '/navProfile.go',
        type: 'GET',
        dataType: 'json',
        success: function(data) {
            console.log("프로필인포 넘어옴", data.navProfile);
            console.log("프로필사진 넘어옴", data.navPhoto);

            // 드롭다운에 프로필 정보 추가
            updateProfileDropdown(data.navProfile, data.navPhoto);
        },
        error: function(e) {
            console.error('Failed to load profile information:', e);
        }
    });
}

//프로필 정보를 업데이트하는 함수
function updateProfileDropdown(navProfile, navPhoto) {
    // 프로필 이미지를 표시하거나 기본 이미지를 사용
    var profileImage = (navPhoto && navPhoto.new_file_name) ?
    		'/file/employee/' + navPhoto.new_file_name : '../../assets/img/avatars/21.png';

    // 프로필 이름과 아이디를 업데이트
    $('#navPhoto').attr('src', profileImage);
    $('#navDropPhoto').attr('src', profileImage);
    $('#navPhoto').attr('alt', navProfile.emp_name);
    $('#navDropPhoto').attr('alt', navProfile.emp_name);
    $('#navEmpName').text(navProfile.emp_name);
    $('#navEmpId').text(navProfile.emp_id);
}


// 알람 목록을 불러오는 함수
function loadAlarmList() {
        $.ajax({
            url: '/alarmList.go',
            type: 'GET',
            dataType: 'json',
            success: function(data) {
                // 알람 목록을 동적으로 화면에 추가
                console.log("알람리스트 넘어옴", data.alarmList);
                var alarmList = data.alarmList;
                updateAlarmList(alarmList);
            },
            error: function(e) {
                console.error('Failed to load alarm list:', e);
            }
        });
    }

// 알람 목록을 동적으로 화면에 추가하는 함수
function updateAlarmList(alarmList) {
        var alarmDropdown = $('#alarmList');
        var notificationsList = alarmDropdown.find('.dropdown-notifications-list ul');
        var badgeNotifications = alarmDropdown.find('.badge-notifications');

        // 읽지 않은 알람의 개수를 초기화
        var unreadCount = 0;

        // 기존 알람 목록을 비우기
        notificationsList.empty();

        if (alarmList.length > 0) {
            // 알람이 있을 경우
            $.each(alarmList, function(index, alarm) {
                // 읽지 않은 알람인 경우
                if (alarm.alarm_readCheck === 'N') {
                    unreadCount++;
                }

                // 알람 타입에 따른 이미지 경로 설정
                var avatarImagePath;
                if (alarm.alarm_type === 1) {
                    avatarImagePath = "../../assets/img/avatars/25.png";
                } else if (alarm.alarm_type === 3) {
                    avatarImagePath = "../../assets/img/avatars/23.png";
                } else if (alarm.alarm_type === 4) {
                    avatarImagePath = "../../assets/img/avatars/24.png";
                } else if(alarm.alarm_type === 5){
                	avatarImagePath = "../../assets/img/avatars/26.png";
                }
                else {
                    // 기본값 설정 또는 예외 처리 로직 추가
                    avatarImagePath = "../../assets/img/avatars/1.png";
                }

                var listItemClass = alarm.alarm_readCheck === 'N' ?
                    'list-group-item list-group-item-action dropdown-notifications-item' :
                    'list-group-item list-group-item-action dropdown-notifications-item marked-as-read';

                var listItem = $('<li class="' + listItemClass + '">' +
                	'<input type="hidden" name="alarm_type" value="' + alarm.alarm_type + '">' +
                	'<input type="hidden" name="alarm_type_idx" value="' + alarm.alarm_type_idx + '">' +
                    '<div class="d-flex">' +
                    '<div class="flex-shrink-0 me-3">' +
                    '<div class="avatar">' +
                    '<img src="' + avatarImagePath + '" alt class="w-px-40 h-auto rounded-circle" />' +
                    '</div>' +
                    '</div>' +
                    '<div class="flex-grow-1">' +
                    '<h6 class="mb-1">' + alarm.alarm_msg + '</h6>' +
                    '<small class="text-muted">' + formattedDate(alarm.alarm_date) + '</small>' +
                    '</div>' +
                    '<div class="flex-shrink-0 dropdown-notifications-actions">' +
                    '<a href="javascript:void(0)" class="dropdown-notifications-read">' +
                    '<span class="badge badge-dot"></span>' +
                    '</a>' +
                    '<a href="javascript:void(0)" class="dropdown-notifications-archive">' +
                    '<span class="bx bx-x"></span>' +
                    '</a>' +
                    '</div>' +
                    '</div>' +
                    '</li>');
                
             // 알람 리스트에 data- 속성 추가
                listItem.attr('data-alarm-type', alarm.alarm_type);
                listItem.attr('data-alarm-type-idx', alarm.alarm_type_idx);

                notificationsList.append(listItem);
            });

            // 알람이 있을 때는 알람 전체 삭제 버튼을 표시
            alarmDropdown.find('.dropdown-menu-footer').show();

            // 읽지 않은 알람 리스트 사이즈 업데이트
            badgeNotifications.text(unreadCount);
        } else {
            // 알람이 없을 때는 알람 전체 삭제 버튼을 숨김
            alarmDropdown.find('.dropdown-menu-footer').hide();

            // 알람이 없을 경우
            notificationsList.append('<li class="list-group-item list-group-item-action dropdown-notifications-item marked-as-read text-center">' +
                '<div class="d-flex justify-content-center align-items-center">' +
                '<div class="flex-grow-1">' +
                '<i class="bx bx-bell" style="font-size: 7rem;"></i><br/>' +
                '<br/><div class="alarm_text bold">새로운 소식이 없습니다.</div>' +
                '<br/></div>' +
                '</div>' +
                '</li>');

            // 알람 리스트 사이즈 초기화
            badgeNotifications.text('0');
        }
}


// 알람 목록을 주기적으로 업데이트 (예: 1분마다)
setInterval(function() {
        loadAlarmList();
}, 60000); // 1분에 한 번
    
//풀푸시 확인을 위한 변경
/* 알림 개별 읽음 처리  */
$(document).on('click', '.dropdown-notifications-item', function(event) {
    var listItem = $(this);

    // 클릭된 요소가 삭제 버튼인 경우 페이지 이동 방지
    if ($(event.target).hasClass('dropdown-notifications-archive')) {
        return;
    }
 // 해당 알람의 type index를 가져옴
    var alarmTypeIdx = listItem.find('input[name="alarm_type_idx"]').val();
    console.log("알람 idx", alarmTypeIdx);
    
    // 해당 알람의 type을 가져옴
    var alarmType = listItem.find('input[name="alarm_type"]').val();
    console.log("알람 타입", alarmType);
 // 알람 타입에 따라 페이지 이동
    switch (alarmType) {
        case '1':
            window.location.href = '/chat/messenger.go';
            break;
        case '3':
            window.location.href = '/approval/getApproval_detail.go/'+alarmTypeIdx;
            break;
        case '4':
            window.location.href = '/project/project_detail.go?proj_idx='+alarmTypeIdx;
            break;
        case '5':
            window.location.href = '/employee/empdetail?emp_id='+alarmTypeIdx;
            break;
        default:
            console.log('Unhandled alarm type:', alarmType);
            break;
    }
    

    // 서버로 읽음 여부 업데이트 요청을 보냄
    $.ajax({
        url: '/updateAlarmRead.go',
        type: 'GET',
        data: {
            alarmType: alarmType,
            alarmTypeIdx: alarmTypeIdx
        },
        dataType: 'json',
        success: function(data) {
        	if(data.idx > 0){
            	loadAlarmList();
            	
            }else{
            	console.log("업데이트 실패");
            }
        },
        error: function(e) {
            console.error('Failed to update read status:', e);
        }
    });
});
    
/* 알림 전체 읽음 */
$(document).on('click', '#readAllAlarm', function() {

        // 서버로 알람 전체 읽음 요청을 보냄
        $.ajax({
            url: '/readAllAlarm.go',
            type: 'GET',
            dataType: 'json',
            success: function(data) {
                // 삭제 성공 시 화면에서 모든 알람 제거
                if (data.idx > 0) {
                    loadAlarmList(); // 혹은 다른 적절한 처리 수행
                } else {
                    console.log("전체 읽음 실패");
                }
                // 여기에 삭제 성공 메시지 또는 다른 처리를 추가할 수 있습니다.
            },
            error: function(e) {
                console.error('Failed to delete all alarms:', e);
            }
        });
        
});
    
    
/* 알림 개별 삭제 */
$(document).on('click', '.dropdown-notifications-archive', function(event) {
    	// 이벤트가 DOM 트리를 향상 전파되지 않도록 멈춤
        event.stopPropagation();
    	
    	// 클릭된 알람의 부모 리스트 아이템을 찾음
        var listItem = $(this).closest('.list-group-item');
        
        // 해당 알람의 type 을 가져옴
        var alarmType = listItem.find('input[name="alarm_type"]').val();
        console.log("알람 타입",alarmType);
        // 해당 알람의 type index를 가져옴
        var alarmTypeIdx = listItem.find('input[name="alarm_type_idx"]').val();
    	console.log("알람 idx",alarmTypeIdx);
    	// 서버로 삭제 요청을 보냄
        $.ajax({
            url: '/deleteAlarm.go',
            type: 'GET',
            data: {
                alarmType: alarmType,
                alarmTypeIdx: alarmTypeIdx
            },
            dataType: 'json',
            success: function(data) {
                // 삭제 성공 시 화면에서 해당 알람 제거
                if(data.idx > 0){
                	loadAlarmList();
                	
                }else{
                	console.log("삭제 실패");
                }
                // 여기에 삭제 성공 메시지 또는 다른 처리를 추가할 수 있습니다.
            },
            error: function(e) {
                console.error('Failed to delete alarm:', e);
            }
        });
});
    
/* 알림 전체 삭제 */
$(document).on('click', '#deleteAllAlarms', function() {

        // 서버로 알람 전체 삭제 요청을 보냄
        $.ajax({
            url: '/deleteAllAlarms.go',
            type: 'GET',
            dataType: 'json',
            success: function(data) {
                // 삭제 성공 시 화면에서 모든 알람 제거
                if (data.idx > 0) {
                    loadAlarmList(); // 혹은 다른 적절한 처리 수행
                } else {
                    console.log("삭제 실패");
                }
                // 여기에 삭제 성공 메시지 또는 다른 처리를 추가할 수 있습니다.
            },
            error: function(e) {
                console.error('Failed to delete all alarms:', e);
            }
        });
        
});
    
    


function formattedDate(dateString) {
    const options = { month: '2-digit', day: '2-digit', hour: '2-digit', minute: '2-digit', hour12: false };
    const formatted = new Date(dateString).toLocaleString('ko-KR', options);
    return formatted;
}

</script>
