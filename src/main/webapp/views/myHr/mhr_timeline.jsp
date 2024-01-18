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
    <link rel="stylesheet" href="../../assets/vendor/libs/fullcalendar/fullcalendar.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/flatpickr/flatpickr.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/select2/select2.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/quill/editor.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/@form-validation/umd/styles/index.min.css" />

    <!-- Page CSS -->

    <link rel="stylesheet" href="../../assets/vendor/css/pages/app-calendar.css" />

    <!-- Helpers -->
    <script src="../../assets/vendor/js/helpers.js"></script>
    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Template customizer: To hide customizer set displayCustomizer value false in config.js.  -->
    <script src="../../assets/vendor/js/template-customizer.js"></script>
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="../../assets/js/config.js"></script>
    <style>
    
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
              <div class="card app-calendar-wrapper">
                <div class="row g-0">
                  <!-- Calendar Sidebar -->
                  <div class="col app-calendar-sidebar" id="app-calendar-sidebar">
                    <div class="p-4">
                      <div class="mb-1">
                        <small class="text-small text-muted text-uppercase align-middle">근무시간 전체 등록</small>
                      </div>

					  <div class="form-check mb-2" style="padding-left: 0; display: flex; align-items: center;" >
					  	<form action="selectmonth" method="post" style="display: flex; align-items: center;">
					  		<input type="text" value="" name="workmonth" id="workmonth" style="display: none;">
					        <select class="form-select" style="flex: 1; margin-right: 8px;" name="worktime">
						        <option value="07:00~16:00">07:00~16:00</option>
						        <option value="08:00~17:00">08:00~17:00</option>
						        <option value="09:00~18:00">09:00~18:00</option>
						        <option value="10:00~19:00">10:00~19:00</option>
						        <option value="11:00~20:00">11:00~20:00</option>
						    </select>
						    <button type="submit" class="btn btn-primary" id="workbutton">등록</button>
						</form>
					  </div>
						<br/>
                      <div class="mb-1" id="selecdate" style="visibility: hidden;">
                        <small class="text-small text-muted text-uppercase align-middle" 
                        	id="selectedDateText" >근무시간 선택일(<span id="selectdate">선택일값</span>)변경</small>
						  <div class="form-check mb-2" style="padding-left: 0; display: flex; align-items: center; white-space: nowrap;">
						  	<form action="selectday" method="post" style="display: flex; align-items: center;">
						  		<input type="text" style="display: none;" value="" name="workdate" id="workdate">
							    <select class="form-select"  style="flex: 1; margin-right: 8px;" name="worktime">
							        <option value="07:00~16:00">07:00~16:00</option>
							        <option value="08:00~17:00">08:00~17:00</option>
							        <option value="09:00~18:00">09:00~18:00</option>
							        <option value="10:00~19:00">10:00~19:00</option>
							        <option value="11:00~20:00">11:00~20:00</option>
							    </select>
							    <button type="submit" class="btn btn-primary">변경</button>
						  	</form>
						  </div>
                      </div>
                      <div class="app-calendar-events-filter" style="display: none;">
                        <div class="form-check form-check-danger mb-2">
                          <input
                            class="form-check-input input-filter"
                            type="checkbox"
                            id="select-personal"
                            data-value="personal"
                            checked
                            disabled />
                          <label class="form-check-label" for="select-personal">내 일정</label>
                        </div>
                        <div class="form-check mb-2">
                          <input
                            class="form-check-input input-filter"
                            type="checkbox"
                            id="select-business"
                            data-value="business"
                            checked
                            disabled />
                          <label class="form-check-label" for="select-business">프로젝트 일정</label>
                        </div>
                      </div>
                    </div>
                  </div>
                  <!-- /Calendar Sidebar -->

                  <!-- Calendar & Modal -->
                  <div class="col app-calendar-content">
                    <div class="card shadow-none border-0">
                      <div class="card-body pb-0">
                        <!-- FullCalendar -->
                        <div id="calendar">
                        	
                        </div>
                        <!-- 맨위에 달,주,일,리스트 없애려면 -->
                       		<!--
	                        app-calendar.js 부분의 아래 코드에서↓
	                        
	                        headerToolbar: {
					        start: 'sidebarToggle, prev,next, title',
					        end: 'dayGridMonth,timeGridWeek,timeGridDay,listMonth' -> 이부분을 end: ''로 변경
				        
					      	}, 
	                        -->
                      </div>
                    </div>
                    <div class="app-overlay"></div>
                    <!-- FullCalendar Offcanvas -->
                    <div
                      class="offcanvas offcanvas-end event-sidebar"
                      tabindex="-1"
                      id="addEventSidebar"
                      aria-labelledby="addEventSidebarLabel">
                      
                    </div>
                  </div>
                  <!-- /Calendar & Modal -->
                </div>
              </div>
            </div>
            <!-- / Content -->
            <jsp:include page="/views/todo_include.jsp" />
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
    <script src="../../assets/vendor/libs/fullcalendar/fullcalendar.js"></script>
    <script src="../../assets/vendor/libs/@form-validation/umd/bundle/popular.min.js"></script>
    <script src="../../assets/vendor/libs/@form-validation/umd/plugin-bootstrap5/index.min.js"></script>
    <script src="../../assets/vendor/libs/@form-validation/umd/plugin-auto-focus/index.min.js"></script>
    <script src="../../assets/vendor/libs/select2/select2.js"></script>
    <script src="../../assets/vendor/libs/flatpickr/flatpickr.js"></script>
    <script src="../../assets/vendor/libs/moment/moment.js"></script>

    <!-- Main JS -->
    <script src="../../assets/js/main.js"></script>

    <!-- Page JS -->
    <script src="../../assets/js/app-calendar-events.js"></script>
    <script src="../../assets/js/app-calendar.js"></script>
    
    <!-- Header -->
    <script src="../../assets/js/header.js"></script>
    <script>
	var nextcnk = 0;
	var prevcnk = 0;
	var minprev = -6;
	var maxnext = 1;
	
	document.addEventListener('DOMContentLoaded', function() {
		
		events.sort((a, b) => {
		    const calendarOrder = { 'Personal': 1, 'Business': 2 };
		    
		    const calendarA = a.extendedProps.calendar.toLowerCase();
			const calendarB = b.extendedProps.calendar.toLowerCase();

			return calendarOrder[calendarA] - calendarOrder[calendarB];
		});

		// 클래스명이 'fc-event-time'인 모든 요소들을 선택
		var fcEventTimeElements = document.querySelectorAll('.fc-event-time');

		// 각 요소의 내용을 공백으로 변경
		fcEventTimeElements.forEach(function(element) {
			if (element.textContent !== undefined) {
				// 대부분의 브라우저에서는 textContent를 지원
				element.textContent = '';
			} else {
				// 일부 브라우저에서는 innerText를 사용해야 할 수 있음
				element.innerText = '';
			}
		});
		
        let h2Element = document.getElementById('fc-dom-1');
		let monthAndYear = h2Element.innerText.trim().split(' ');
		        
		function monthToNumber(monthString) {
			const months = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];
			return (months.indexOf(monthString) + 1).toString().padStart(2, '0');
		}
		        
		let month = monthToNumber(monthAndYear[0]);
		let year = monthAndYear[1];
		
		document.getElementById('workmonth').value = year + '-' + month;
		        
		
		var previousMonthButton = document.querySelector('button[title="Previous month"]');
		var NextMonthButton = document.querySelector('button[title="Next month"]');

		if (previousMonthButton) {
		  previousMonthButton.addEventListener('click', function() {
			  	 NextMonthButton.style.visibility = 'visible';
				 prevcnk--;
				 nextcnk--;
				 console.log(prevcnk);
				 console.log(nextcnk);
			 if (prevcnk == minprev ){
				 previousMonthButton.style.visibility = 'hidden';
			 }
		  });
		}
		  
		if (NextMonthButton) {
			NextMonthButton.addEventListener('click', function() {
					 previousMonthButton.style.visibility = 'visible';
					 prevcnk++;
					 nextcnk++;
					 console.log(prevcnk);
					 console.log(nextcnk);
				 if (nextcnk == maxnext){
					 NextMonthButton.style.visibility = 'hidden';
				 }
			});
		} 
	});
    /*
	function workmonth(){
		let h2Element = document.getElementById('fc-dom-1');
		let monthAndYear = h2Element.innerText.trim().split(' ');
		console.log('h2 : ', h2Element);
			        
		function monthToNumber(monthString) {
			const months = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];
			// 입력된 월 문자열이 배열에서 몇 번째에 위치하는지 찾아서 해당 인덱스를 반환
			return (months.indexOf(monthString) + 1).toString().padStart(2, '0');;
		}
			        
		let month = monthToNumber(monthAndYear[0]);
		let year = monthAndYear[1];
			
		document.getElementById('workmonth').value = year + '-' + month;
		
		var workmonth = $('#workmonth').val();
		console.log(workmonth);
		
	    $.ajax({
	    	type:'post',
	    	 url:'/timelineList',
	    	 data:{'workmonth':workmonth},
	    	 dataType: 'json',
	    	 success:function(data){
	    		 console.log(data);
	    		 console.log(data.list);
	    		
	    		 list =[
	    				<c:forEach var="list" items="${list}">
	    					{
	    						"title" : '${list.work_start}'+'~'+'${list.work_end}',
	    						"start" : '${list.work_day}',
	    						"end" : '${list.work_day}'
	    					}<c:if test="${!loop.last}">,</c:if>
	    				</c:forEach>
	    			];
	    			console.log(list);
	    			events = [
	    				<c:forEach var="list" items="${list}">
	    					{
	    						 title: '${list.work_start}'+'~'+'${list.work_end}',
	    						 start: '${list.work_day}',
	    						 end: '${list.work_day}',
	    						 allDay: false,
	    						 extendedProps: {
	    						   calendar: 'Personal'
	    						 }
	    					}<c:if test="${!loop.last}">,</c:if>
	    				</c:forEach>
	    			];
	    			
	    			  	if (window.appCalendar) {
	    				    window.appCalendar.render();
	    				}
	    	 },
	    	 error:function(e){
	    		 console.log(e);
	    	 }
	    });
	console.log('${list[0].work_day}'); 
	} */
	/*
	var list =[
		<c:forEach var="list" items="${chlist}">
			{
				"title" : '${list.work_start}'+'~'+'${list.work_end}',
				"start" : '${list.work_day}',
				"end" : '${list.work_day}'
			}<c:if test="${!loop.last}">,</c:if>
		</c:forEach>
	];
	list.put= [
		<c:forEach var="list" items="${vhlist}">
			{
				"title" : '${list.vaca_start}'+'~'+'${list.vaca_end}',
				"start" : '${list.vaca_date}',
				"end" : '${list.vaca_date}'
			}<c:if test="${!loop.last}">,</c:if>
		</c:forEach>
	];
	
	console.log(list); */
	
		var events = [
	        <c:forEach var="work" items="${chlist}">
	            {
	                title: '근무 '+'${work.work_start}' + '~' + '${work.work_end}',
	                start: '${work.work_day}',
	                end: '${work.work_day}',
	                allDay: false,
	                extendedProps: {
	                    calendar: 'Personal'
	                }
	            }<c:if test="${!loop.last}">,</c:if>
	        </c:forEach>,
	        <c:forEach var="vacation" items="${vhlist}">
	            {
	                title: '연차 '+'${vacation.vaca_start}' + '~' + '${vacation.vaca_end}',
	                start: '${vacation.vaca_date}',
	                end: '${vacation.vaca_date}',
	                allDay: false,
	                extendedProps: {
	                    calendar: 'Business'
	                }
	            }<c:if test="${!loop.last}">,</c:if>
	        </c:forEach>
	    ];
	
	console.log(events);
	

	


	
	
    </script>
  </body>
</html>
