<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html
  lang="kr"
  class="light-style layout-navbar-fixed layout-menu-fixed layout-compact"
  dir="ltr"
  data-theme="theme-default"
  data-assets-path="../../assets/"
  data-template="vertical-menu-template">
  <head>
    <meta charset="UTF-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

	<title>BeHit</title>
	
    <meta name="description" content="" />
	<!-- pretendard 폰트 -->
	<link rel="stylesheet" type="text/css" href='https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css'>
	
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
    <link rel="stylesheet" href="../../assets/vendor/libs/datatables-bs5/datatables.bootstrap5.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/datatables-responsive-bs5/responsive.bootstrap5.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/datatables-buttons-bs5/buttons.bootstrap5.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/select2/select2.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/@form-validation/umd/styles/index.min.css" />

    <!-- Page CSS -->

    <!-- Helpers -->
    <script src="../../assets/vendor/js/helpers.js"></script>
    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Template customizer: To hide customizer set displayCustomizer value false in config.js.  -->
    <script src="../../assets/vendor/js/template-customizer.js"></script>
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="../../assets/js/config.js"></script>
    <style>
    .mx-2 {
	    margin-right: 0.5rem !important;
	    margin-left: 0.5rem !important;
	    display: flex;
	    justify-content: center;
	    align-items: center;
	}
	.cardListTop{
		display:flex;
		justify-content: flex-end;
	}
	.cardListTop div:nth-child(1) a{
	    margin: 5px 5px;
	    padding: 7px 15px;
	    background: #FFF;
	    border: 2px solid #a2a2a2;
	    border-radius: 7px;
	    color:#a2a2a2;
	}
	.cardListTop div:nth-child(1) a:hover{
		background: #a2a2a2;
		color: #FFF;
	}
	.cardListTop div:nth-child(2) a{
	    margin: 5px 5px;
	    padding: 7px 15px;
	    background: #FFF;
	    border: 2px solid #C20000;
	    border-radius: 7px;
	}
	.cardListTop div:nth-child(2) a:hover{
		background: #C20000;
		color:#FFFFFF;
	}
	.creCardTitle{
		color: black;
		font-weight: 600;
		font-size: 23px;
	}
	.all-list-profile{
		width: 50px;
	    height: 50px;
	    border-radius: 50px;	
	}
    </style>
  </head>

  <body>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
      
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
            	<h4 class="py-3 mb-4"><span class="text-muted fw-light">크리에이터</span></h4>
            <div class="col-md-4">
   			  <!-- 탭 추가 -->                    
   			  <ul class="nav nav-pills" role="tablist">
   			    <li class="nav-item">
       		      <button 
       		      		class="nav-link active" 
       		      		data-bs-toggle="tab" 
       		      		data-bs-target="#form-tabs-first" 
       		      		role="tab" 
       		      		aria-selected="true">
         				크리에이터 리스트
       		      </button>
   			    </li>
   			    <c:if test="${deptCheck eq true}">
	   			    <li class="nav-item">
	     			  <button 
	     			  		class="nav-link" 
	     			  		data-bs-toggle="tab" 
	     			  		data-bs-target="#form-tabs-second" 
	     			  		role="tab" 
	     			  		aria-selected="false" >
	       				크리에이터 관리
	    			  </button>
	   			    </li>
   			    </c:if>
   			  </ul>
   			</div>
   			
              <div class="card">
       			<div class="card-datatable table-responsive" style="overflow-x: hidden; align-items: center;">
	              <div class="tab-content">
	              	<div class="tab-pane fade active show" id="form-tabs-first"  role="tabpanel">
	              	<!-- 합계 데이터 영역 -->
		              <div class="row g-4 mb-4">
		                <div class="col-sm-6 col-xl-3">
		                  <div class="card">
		                    <div class="card-body">
		                      <div class="d-flex align-items-start justify-content-between">
		                        <div class="content-left">
		                          <span>전체 크리에이터</span>
		                          <div class="d-flex align-items-end mt-2">
		                            <h4 class="mb-0 me-2 total_creators"></h4>
		                          </div>
		                          <p class="mb-0">　</p>
		                        </div>
		                      </div>
		                    </div>
		                  </div>
		                </div>
		                <div class="col-sm-6 col-xl-3">
		                  <div class="card">
		                    <div class="card-body">
		                      <div class="d-flex align-items-start justify-content-between">
		                        <div class="content-left">
		                          <span>전체 채널</span>
		                          <div class="d-flex align-items-end mt-2">
		                            <h4 class="mb-0 me-2 total_channels"></h4>
		                          </div>
		                          <p class="mb-0">　</p>
		                        </div>
		                      </div>
		                    </div>
		                  </div>
		                </div>
		                <div class="col-sm-6 col-xl-3">
		                  <div class="card">
		                    <div class="card-body">
		                      <div class="d-flex align-items-start justify-content-between">
		                        <div class="content-left">
		                          <span>전체 구독자 합계</span>
		                          <div class="d-flex align-items-end mt-2">
		                            <h4 class="mb-0 me-2 total_subscribers"></h4>
		                          </div>
		                          <p class="mb-0">전일대비 <small class="text-success">+0.0%</small></p>
		                        </div>
		                      </div>
		                    </div>
		                  </div>
		                </div>
		                <div class="col-sm-6 col-xl-3">
		                  <div class="card">
		                    <div class="card-body">
		                      <div class="d-flex align-items-start justify-content-between">
		                        <div class="content-left">
		                          <span>전체 컨텐츠 합계</span>
		                          <div class="d-flex align-items-end mt-2">
		                            <h4 class="mb-0 me-2 total_contents"></h4>
		                          </div>
		                          <p class="mb-0">전일 대비 <small class="text-danger">-3.5%</small></p>
		                        </div>
		                      </div>
		                    </div>
		                  </div>
		                </div>
		              </div>
		              <!-- / 합계 데이터 영역 -->
	              		<div class="row g-3">
	              			<!-- 전체 크리에이터 -->
				              <div class="card-datatable table-responsive">
				                <table id="creatorList" class="datatables-users table border-top">
				                  <thead>
				                    <tr>
				                     <th>&nbsp;</th>
				                      <th>크리에이터</th>
				                      <th>카테고리</th>
				                      <th>대표채널</th>
				                      <th>담당매니저</th>
				                    </tr>
				                  </thead>
				                  <tbody>
				                  </tbody>
				                </table>
			                </div>
	              		</div>
	              	</div>
	              		<!-- 나의 크리에이터 -->
			              <div class="tab-pane fade" id="form-tabs-second" role="tabpanel">
	  		              	<div class="cardListTop">
		              		 <div>
		              		   <a href="showOrgModal()">열람 권한자 등록</a>
		              		  </div>
		              		  <div>
			              	   <a href="/creators/creatorAdd.go">
			              	   	<i class="bx bx-user-check me-1"></i>
			              	   	크리에이터 등록</a>
		              		  </div>
		              		</div>
	             			<div id="creCardList" class="row g-3 mt-4">
	             			  <div class="row">
	             			   <!-- 크리에이터 카드영역 -->
	             			  </div>
	             			</div>
	             		  </div>
			             <!-- / 나의 크리에이터 -->
	              </div>
	            </div>  
              </div>
            </div>
            <!-- / Content -->
            <div class="content-backdrop fade"></div>
          </div>
          <!-- / Content wrapper -->
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
    <script src="../../assets/vendor/libs/moment/moment.js"></script>
    <script src="../../assets/vendor/libs/datatables-bs5/datatables-bootstrap5.js"></script> <!-- 페이징들어있는거 -->
    <script src="../../assets/vendor/libs/select2/select2.js"></script>
    <script src="../../assets/vendor/libs/@form-validation/umd/bundle/popular.min.js"></script>
    <script src="../../assets/vendor/libs/@form-validation/umd/plugin-bootstrap5/index.min.js"></script>
    <script src="../../assets/vendor/libs/@form-validation/umd/plugin-auto-focus/index.min.js"></script>
    <script src="../../assets/vendor/libs/cleavejs/cleave.js"></script>
    <script src="../../assets/vendor/libs/cleavejs/cleave-phone.js"></script>

    <!-- Main JS -->
    <script src="../../assets/js/main.js"></script>
	
    <script>
   		
    
    	$.ajax({
		   type : 'get',
		   url:'/getCreatorlist',
		   dataType:'json',
		   success:function(result){
			   console.log('result'+result);
			   drawTotalAll(result.totalInfo);
			   drawAllList(result.allList,result.permList);
			   drawMyList(result.myList);
		   },
		   error:function(e){
			   console.log(e);
		   }
    	}); 
    	
    	function drawTotalAll(totalInfo){
    		console.log(totalInfo);
    		$('.total_creators:eq(0)').text(totalInfo.total_creators+" 명");
    		$('.total_channels:eq(0)').text(totalInfo.total_channels+" 개");
    		$('.total_subscribers:eq(0)').text(totalInfo.total_subscribers+" 명");
    		$('.total_contents:eq(0)').text(totalInfo.total_contents+" 개");
    	}
    	
    	
     	function drawAllList(allList,permList) {
     		var combinedList = allList.concat(permList);
    		console.log('combinedList===='+combinedList);
	    	var creatorTable = $("#creatorList").DataTable({
	    		data : combinedList,
	    		columnDefs: [
	    	        { targets: 0, orderable: false } // 0번째 열에 대해 정렬 비활성화
	    	    ],
	    		columns:[
	    			{ 
	    				width:'10%', 
	    				data:null,
	    				render:function(data,type,row){
	    					return '<img class="all-list-profile" style="text-align:center;" src="/file/creator/'+row.new_file_name+'" art="'+row.ori_file_name+'">'
	    				}
    				},
	    			{ 
	    				width:'30%', 
	    				data: null,
	    				render : function(data, type, row){
	    					return '<a href="/creators/creatorDetail.go?cre_idx=' + row.cre_idx +'">'+row.cre_nick_name+'</a>';
	    				}
	    			},
	    			{ width:'20%', data:'channel_cate'},
	    			{ 
	    				width:'20%', 
	    				data: null,
	    				render : function(data, type, row){
	    					return  '<a href="' + row.channel_url + '">'+row.channel_name+'</a>';
	    				}
	    			},
	    			{ width:'20%', data:'mng_name'}
	    		]
	    	});
		}
    	
    	function drawMyList(myList) {
			console.log("myList : " , myList);
			$.each(myList, function (index, myCre) {
		        // HTML 문자열 생성 및 추가
		        var htmlString = 
		        	'<div class="col-md-6 col-lg-4">' +
		            '<h6 class="mt-2 text-muted"></h6>' +
		            '<div class="card">' +
		            '<div style="height:400px; overflow:hidden">' +
		            '<a href="/creators/creatorDetail.go?cre_idx='+myCre.cre_idx+'">'+
		            	'<img class="card-img-top" style="width: 100%;" src="/file/creator/'+
		            	myCre.new_file_name+'" alt="'+myCre.ori_file_name+'"/></a>' +
		            '</div>'+	
		            '<div class="card-body">' +
		            '<h5 class="card-title"><a href="/creators/creatorDetail.go?cre_idx='+myCre.cre_idx+'" class="creCardTitle">' + myCre.cre_nick_name + '</a></h5>' +
		            '<table>' +
		            '<tr>' +
		            '<td colspan="2"><input type="hidden" value="'+ myCre.cre_idx +'"/></td>' +
		            '</tr>'+
		            '<tr>'+
		            	'<td><label class="card-text"> 대표 채널</label></td>' + 
		            	'<td><label>| <i class="bx bxl-youtube" style="color:#ff0000"></i> ' +
		            	'<a href="'+myCre.channel_url+'" class="card-link">' + myCre.channel_name + '</a></label></td>' +
		            '</tr>'+
		            	'<td><label class="card-text"> 총 구독자수</label></td>' + 
		            	'<td><label>| ' + myCre.last_subscriber + ' 명</label>' +
		            '</tr>'+
		            '<tr>'+
		            	'<td><label class="card-text"> 총 컨텐츠수</label></td>' +
		            	'<td><label>| ' + myCre.last_contents + ' 개</label>' +
		            '</tr>'+
		            '<tr>'+
		            	'<td><label class="card-text"> 총 조회수</label></td>' +
		            	'<td><label>| ' + myCre.last_views + ' 회</label>' +
		            '</tr>'+
		            '<tr>'+
		            	'<td><label class="card-text"> 카테고리</label></td>' +
		            	'<td><label>| ' + myCre.channel_cate + '</label>' +
		            '</tr>'+
		            '</table>' +
		            '</div>' +
		            '</div>' +
		            '</div>';

		        // 생성된 HTML을 #contentContainer에 추가
		        $("#creCardList .row").append(htmlString);
		    });
			
		} 
   
    
    </script>
    
  </body>
</html>
