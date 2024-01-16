<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script>

/**
 * Sweet Alerts 스크립트
 */
 

   var successMsg = "${successMsg}";
   if(successMsg != ""){
      Swal.fire({
         /*         title: 'Good job!', */
                 text: successMsg,
                 icon: 'success',
                 customClass: {
                   confirmButton: 'btn btn-primary'
                 },
                 buttonsStyling: false
               });
   }
   
   var warningMsg = "${warningMsg}";
   if(warningMsg != ""){
      Swal.fire({
           text: warningMsg,
           icon: 'warning',
           customClass: {
             confirmButton: 'btn btn-primary'
           },
           buttonsStyling: false
         });
   }
   
   var confirmMsg = "${confirmMsg}";
   if(confirmMsg != ""){
      Swal.fire({
         /*         title: 'Are you sure?', */
                 text: confirmMsg,
                 icon: 'warning',
                 showCancelButton: true,
                 confirmButtonText: 'OK',
                 customClass: {
                   confirmButton: 'btn btn-primary me-3',
                   cancelButton: 'btn btn-label-secondary'
                 },
                 buttonsStyling: false
               }).then(function (result) {
                 if (result.value) {
                   Swal.fire({
                     icon: 'success',
         /*             title: 'Deleted!', */
                     text: '삭제되었습니다.',
                     customClass: {
                       confirmButton: 'btn btn-success'
                     }
                   });
                 }
               });
   }



(function () {
  const 
    iconSuccess = document.querySelector('#type-success'),
    iconWarning = document.querySelector('#type-warning'),
    confirmText = document.querySelector('#confirm-text');


  // Alert Types
  // --------------------------------------------------------------------

  // Success Alert
  if (iconSuccess) {
    iconSuccess.onclick = function () {
      Swal.fire({
/*         title: 'Good job!', */
        text: '저장이 완료되었습니다!',
        icon: 'success',
        customClass: {
          confirmButton: 'btn btn-primary'
        },
        buttonsStyling: false
      });
    };
  }


  // Warning Alert
  if (iconWarning) {
    iconWarning.onclick = function () {
      Swal.fire({
        title: 'Warning!',
        text: ' You clicked the button!',
        icon: 'warning',
        customClass: {
          confirmButton: 'btn btn-primary'
        },
        buttonsStyling: false
      });
    };
  }


  // Alert With Functional Confirm Button
  if (confirmText) {
    confirmText.onclick = function () {
      Swal.fire({
/*         title: 'Are you sure?', */
        text: "정말 삭제하시겠습니까?",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonText: 'OK',
        customClass: {
          confirmButton: 'btn btn-primary me-3',
          cancelButton: 'btn btn-label-secondary'
        },
        buttonsStyling: false
      }).then(function (result) {
        if (result.value) {
          Swal.fire({
            icon: 'success',
/*             title: 'Deleted!', */
            text: '삭제되었습니다.',
            customClass: {
              confirmButton: 'btn btn-success'
            }
          });
        }
      });
    };
  }
})();


</script>
<!-- Menu -->
<aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
  <div class="app-brand demo">
    <a href="/home.go" class="app-brand-link">
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
    <li class="menu-item" id="home">
      <a href="/home.go" class="menu-link">
        <i class="menu-icon tf-icons bx bx-home-circle"></i>
        <div class="text-truncate" data-i18n="홈">홈</div>
      </a>
    </li>
    
    <li class="menu-item" id="approval_main">
      <a href="/approval/approval_main.go" class="menu-link">
        <i class="menu-icon tf-icons bx bx-food-menu"></i>
        <div class="text-truncate" data-i18n="전자 결재">전자 결재</div>
      </a>
    </li>
    
    <li class="menu-item" id="creator_list_all">
      <a href="/creators/creatorList.go" class="menu-link">
         <i class="menu-icon tf-icons bx bx-slideshow"></i>
        <div class="text-truncate" data-i18n="크리에이터">크리에이터</div>
      </a>
    </li>
    
    <li class="menu-item" id="project_main">
      <a href="/project/project_main.go" class="menu-link">
         <i class="menu-icon tf-icons bx bx-customize"></i>
        <div class="text-truncate" data-i18n="프로젝트">프로젝트</div>
      </a>
    </li>
    
    <li class="menu-item" id="myHr" >
      <a href="javascript:void(0);" class="menu-link menu-toggle">
        <i class="menu-icon tf-icons bx bx-pie-chart-alt-2"></i>
        <div class="text-truncate" data-i18n="근태관리">근태관리</div>
      </a>

      <ul class="menu-sub">
      	<li class="menu-item" id="mhr_timeline">
          <a href="/myHr/mhr_timeline.go" class="menu-link">
            <div class="text-truncate" data-i18n="내 근태관리">내 근태관리</div>
          </a>
        </li>
        <li class="menu-item" id="mhr_vacation">
          <a href="/myHr/workdetail" class="menu-link">
            <div class="text-truncate" data-i18n="내 연차내역">내 연차내역</div>
          </a>
        </li>
      </ul>
    </li>
    
    <li class="menu-item" id="chat">
      <a href="/chat/messenger.go" class="menu-link">
         <i class="menu-icon tf-icons bx bx-chat"></i>
        <div class="text-truncate" data-i18n="메신저">메신저</div>
      </a>
    </li> 
    <c:choose>
    	<c:when test="${sessionScope.dept == 2 || sessionScope.position == 8}">
			<li class="menu-item" id="employee">
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
		</c:when>
		<c:otherwise>
		<!-- 메뉴를 보이지 않게 하는 내용 -->
		</c:otherwise>
	</c:choose>
  </ul>
</aside>
<!-- / Menu -->
