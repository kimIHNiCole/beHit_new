<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<style></style>
</head>
<body>
	<div class="tab-pane fade active show" id="form-tabs-second" role="tabpanel">
      <!-- 채널 리스트 -->
      <div class="card mb-4" >
        <h5 class="card-header">활동 채널 리스트</h5>
        <div class="table-responsive mb-3">
          <table class="table datatable-project border-top">
            <thead>
              <tr>
                <th>채널명</th>
                <th class="text-nowrap">카테고리</th>
                <th>구독자 수</th>
                <th>컨텐츠 수</th>
                <th>총 조회수</th>
                <th>가입일자</th>
              </tr>
            </thead>
            <tbody>
            	<tr>
                 <th>쀼쀼</th>
                 <th class="text-nowrap">일상, 코믹</th>
                 <th>11,234 명</th>
                 <th>45 개</th>
                 <th>1,999,356</th>
                 <th>2023.10.01</th>
              	</tr>
              	<tr>
                 <th>많이 먹어도 살 안 쪄서 좋겠당</th>
                 <th class="text-nowrap">먹방</th>
                 <th>3,332,123 명</th>
                 <th>325 개</th>
                 <th>515,745,435</th>
                 <th>2019.04.24</th>
              	</tr>
            </tbody>
          </table>
        </div>
      </div>
      <!-- / 채널 리스트 -->
      <!-- SNS 리스트 -->
      <div class="card mb-4">
        <h5 class="card-header">SNS</h5>
        <div class="table-responsive mb-3">
          <table class="table datatable-project border-top">
            <thead>
              <tr>                         
                <th>SNS 주소</th>
                <th class="text-nowrap">팔로워</th>
                <th>팔로우</th>
                <th>게시물</th>
              </tr>
            </thead>
            <tbody>
            	<tr>                         
                 <th><img src="../../assets/img/icons/brands/instagram.png" alt="instagram" class="me-3" height="20">히빱 일상</th>
                 <th class="text-nowrap">311,234</th>
                 <th>1 명</th>
                 <th>279 개</th>
               </tr>
            	<tr>                         
                 <th><img src="../../assets/img/icons/brands/facebook.png" alt="facebook" class="me-3" height="20">히빱 페북</th>
                 <th class="text-nowrap">22,222</th>
                 <th>191 명</th>
                 <th>-</th>
               </tr>
            </tbody>
          </table>
        </div>
      </div>
      <!-- / SNS 리스트 -->

      <!-- Activity Timeline -->
      <div class="card mb-4">
        <h4 class="card-header">활동이력</h4>
        <div class="card-body">
          <ul class="timeline">
            <li class="timeline-item timeline-item-transparent">
              <span class="timeline-point-wrapper"
                ><span class="timeline-point timeline-point-primary"></span
              ></span>
              <div class="timeline-event">
                <div class="timeline-header mb-1">
                  <h6 class="mb-0">유튜브 채널 1</h6>
                  <small class="text-muted">2023-12-12</small>
                </div>
                <p class="mb-2">200만 구독자 달성</p>
                
              </div>
            </li>
            <li class="timeline-item timeline-item-transparent">
              <span class="timeline-point-wrapper"
                ><span class="timeline-point timeline-point-warning"></span
              ></span>
              <div class="timeline-event">
                <div class="timeline-header mb-1">
                  <h6 class="mb-0">유튜브 채널 2</h6>
                  <small class="text-muted">2023-11-28</small>
                </div>
                <p class="mb-2">10만 구독자 달성</p>
                
              </div>
            </li>
            <li class="timeline-item timeline-item-transparent">
              <span class="timeline-point-wrapper"
                ><span class="timeline-point timeline-point-info"></span
              ></span>
              <div class="timeline-event">
                <div class="timeline-header mb-1">
                  <h6 class="mb-0">히빱</h6>
                  <small class="text-muted">2023-11-22</small>
                </div>
                <p class="mb-2">유튜브 크리에이터 대상 수상</p>
                
              </div>
            </li>
            <li class="timeline-item timeline-item-transparent">
              <span class="timeline-point-wrapper"
                ><span class="timeline-point timeline-point-success"></span
              ></span>
              <div class="timeline-event">
                <div class="timeline-header mb-1">
                  <h6 class="mb-0">유튜브 채널 2</h6>
                  <small class="text-muted">2023-10-01</small>
                </div>
                <p class="mb-0">채널 가입일</p>
              </div>
            </li>
            <li class="timeline-end-indicator">
              <i class="bx bx-check-circle"></i>
            </li>
          </ul>
        </div>
      </div>
      <!-- /Activity Timeline -->
</div>
</body>
<script></script>
</html>