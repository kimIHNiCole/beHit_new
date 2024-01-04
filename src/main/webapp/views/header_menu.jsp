<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
    <li class="menu-item">
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
      <a href="/creators/creator_list_all.go" class="menu-link">
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
    
    <li class="menu-item" id="calendar_go">
      <a href="/calendar/calendar.go" class="menu-link">
         <i class="menu-icon tf-icons bx bx-calendar"></i>
        <div class="text-truncate" data-i18n="캘린더">캘린더</div>
      </a>
    </li>
    
    <li class="menu-item" id="reserveRoom_list">
      <a href="/reserve/reserveRoom_list.go" class="menu-link">
         <i class="menu-icon tf-icons bx bx-time-five"></i>
        <div class="text-truncate" data-i18n="예약">예약</div>
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
          <a href="/myHr/mhr_vacation.go" class="menu-link">
            <div class="text-truncate" data-i18n="내 연차내역">내 연차내역</div>
          </a>
        </li>
      </ul>
    </li>
    
    <li class="menu-item">
      <a href="/chat/messenger.go" class="menu-link">
         <i class="menu-icon tf-icons bx bx-chat"></i>
        <div class="text-truncate" data-i18n="메신저">메신저</div>
      </a>
    </li>
    
    <li class="menu-item" id="employee">
      <a href="javascript:void(0);" class="menu-link menu-toggle">
        <i class="menu-icon tf-icons bx bx-user"></i>
        <div class="text-truncate" data-i18n="인사 관리">인사 관리</div>
      </a>
      <ul class="menu-sub">
        <li class="menu-item" id="employee_list">
          <a href="/employee/employee_list.go" class="menu-link">
            <div class="text-truncate" data-i18n="직원 관리">직원 관리</div>
          </a>
        </li>
        <li class="menu-item" id="workHour">
          <a href="javascript:void(0);" class="menu-link menu-toggle">
            <div class="text-truncate" data-i18n="근태 관리">근태 관리</div>
          </a>
          <ul class="menu-sub">
            <li class="menu-item" id="workHour_list">
              <a href="/employee/workHour_list.go" class="menu-link">
                <div class="text-truncate" data-i18n="근태 현황">근태 현황</div>
              </a>
            </li>
            <li class="menu-item" id="vacation_list">
              <a href="/employee/vacation_list.go" class="menu-link">
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
