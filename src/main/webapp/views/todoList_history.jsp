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
    <link rel="stylesheet" href="../../assets/vendor/libs/datatables-bs5/datatables.bootstrap5.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/datatables-responsive-bs5/responsive.bootstrap5.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/datatables-buttons-bs5/buttons.bootstrap5.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/select2/select2.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/@form-validation/umd/styles/index.min.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/quill/typography.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/quill/katex.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/quill/editor.css" />

    <!-- Page CSS -->

    <link rel="stylesheet" href="../../assets/vendor/css/pages/app-ecommerce.css" />

    <!-- Helpers -->
    <script src="../../assets/vendor/js/helpers.js"></script>
    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Template customizer: To hide customizer set displayCustomizer value false in config.js.  -->
    <!-- <script src="../../assets/vendor/js/template-customizer.js"></script> -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="../../assets/js/config.js"></script>
    
        <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f2f2f2;
        }

        #taskList {
            max-width: 100%;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            border-radius: 8px;
        }

        .date-header {
            font-size: 18px;
            font-weight: bold;
            border-bottom: 1px solid #ccc;
            padding-bottom: 10px;
            padding-top: 10px;
            margin-bottom: 10px;
            margin-top: 10px;
            color: white;
            background-color: green;
            text-align: center; 
        }		
		.form-check-input:checked, .form-check-input[type=checkbox]:indeterminate {
		    background-color: #71dd37;
		    border-color: #71dd37;
		    box-shadow: 0 2px 4px 0 rgba(113, 221, 55, 0.4);
		}

        .delete-btn {
            background-color: white;
            color: black;
            border: none;
            padding: 5px 10px;
            cursor: pointer;
        }
        
        #todohistoryContainer{
        	overflow-y: auto;
        	height: 530px;
        }
        
        .tb-history{
			width: 100%;        
        }
        #modalContent {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            width: 100%;
            height: 628px; /* 최대 높이 설정 */
            overflow: hidden;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        #todoListContainer {
            max-height: 80%;
            overflow-y: auto;
            margin-bottom: 10px;
            height:80%;
        }
        #todoInput {
            width: calc(100% - 22px); /* 20px는 패딩, 2px는 테두리 고려 */
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
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
        <!-- Layout container -->
        <div class="layout-page">
	      <!-- Navbar -->
		  <jsp:include page="/views/header_navbar.jsp" />

          <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
              <h4 class="py-3 mb-4">완료한 히스토리</h4>
              <div class="col-12">
              	<div class="row">
              	<div class="col-8">
                	<!-- Category List Table -->
					<div id="taskList">
						<div class="date-header" style="color:green; background-color:white; text-align:left; margin-top:0px;">
							완료한 개수<a id="todoYCount" style="color: green"></a>개
						</div>
						<div id="todohistoryContainer"><!-- 투두히스토리 -->
							<table class="tb-history">
							<thead>
							<tr>
								<th></th>
								<th></th>
								<th></th>
							</tr>
							</thead>
							<tbody id="todohistory"></tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="col-4">
					<div id="modalContent">
				    <div>
				        <span style="color: green">할 일 <a id="todoNCount" style="color: green"></a>개 남음</span>
				    </div>
				    <hr>
				    <div id="todoListContainer"><!-- 투두리스트 -->
				        <table style="width:100%">
				        	<thead>
					        <tr>
					        	<th></th>
					        	<th></th>
					        	<th></th>
					        </tr>
					        </thead>
				        	<tbody id="todolist"></tbody>
				        </table>
				    </div>
				    <div>
				        <input type="text" id="todoInput" placeholder="할 일을 입력하세요" onkeydown="handleKeyPress(event)">
				    </div>
				</div>
				</div>
				</div>
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
    <script src="../../assets/vendor/libs/datatables-bs5/datatables-bootstrap5.js"></script>
    <script src="../../assets/vendor/libs/select2/select2.js"></script>
    <!-- <script src="../../assets/vendor/libs/@form-validation/umd/bundle/popular.min.js"></script> -->
    <!-- <script src="../../assets/vendor/libs/@form-validation/umd/plugin-bootstrap5/index.min.js"></script> -->
    <!-- <script src="../../assets/vendor/libs/@form-validation/umd/plugin-auto-focus/index.min.js"></script> -->
    <script src="../../assets/vendor/libs/quill/katex.js"></script>
    <script src="../../assets/vendor/libs/quill/quill.js"></script>

    <!-- Main JS -->
    <!-- <script src="../../assets/js/main.js"></script> -->

    <!-- Page JS -->
    <!-- <script src="../../assets/js/app-ecommerce-category-list.js"></script> -->
    
    
    <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
    
  </body>
<script>
todohistory();
todoList();

////////////////// 히스토리 //////////////////
// 투두히스토리 가져오기
function todohistory(){
	$.ajax({
		type: 'get',
		url: 'todohistory.do',
		data: {},
		dataType: 'json',
		success: function (data) {
			console.log(data);
			todohistorydraw(data);
		},
		error: function (e) {
			console.log(e);
		}
	});
}

// 투두히스토리 그려주기
function todohistorydraw(obj){
    var content = '';
    var groupedByDate = {};

    obj.list.forEach(function (item) {
    if (!groupedByDate[item.todo_update]) {
            groupedByDate[item.todo_update] = [];
        }
        groupedByDate[item.todo_update].push(item);
    });

    for (var date in groupedByDate) {
        content += '<tr>';
        content += '<th colspan="3"><div class="date-header">' + date + '</div></th>';
        content += '</tr>';

        groupedByDate[date].forEach(function (item) {
            var isChecked = item.todo_state === 'Y' ? 'checked' : '';
            $("#todoYCount").text(item.todoY);

            content += '<tr>';
            content += '<th style="width: 40px"><input onclick="todocheck(this)" type="checkbox" class="form-check-input input-filter" value="'+item.todo_idx+'" ' + isChecked + '></th>';
            content += '<td>'+ item.todo_content +'</td>';
            content += '<th style="width: 50px"><button onclick="todohisdel(this)" class="delete-btn" value="'+item.todo_idx+'"><i class="bx bx-trash"></i></button>'+'</th>';
            content += '</tr>';
        });
    }

    if (content === '') {
        content = '<tr><th colspan="3">완료한 일이 없습니다.</th></tr>';
        $("#todoYCount").text(0);
    }

    $('#todohistory').empty();
    $('#todohistory').append(content);
}
////////////////// 투두리스트 //////////////////
// 투두리스트 데이터 가져오기
function todoList(){
	$.ajax({
		type: 'get',
		url: 'todoList.do',
		data: {},
		dataType: 'json',
		success: function (data) {
			console.log(data);
			todoListdraw(data);
		},
		error: function (e) {
			console.log(e);
		}
	});
}

// 투두리스트 그려주기
function todoListdraw(obj){
    var content = '';
    var totalItems = obj.list.length;
    console.log(totalItems);
    
    if (totalItems === 0){
    	content = '<tr><th colspan="3">할일이 없습니다.</th></tr>';
    	$("#todoNCount").text(0);
    }else{
    	obj.list.forEach(function (item){
    		var isChecked = item.todo_state === 'Y' ? 'checked' : '';
    		var textcolor = item.todo_state === 'Y' ? '' : 'black';
    		$("#todoNCount").text(item.todoN);
    		
    		content += '<tr>';
    		content += '<th style="width:30px"><input onclick="todocheck(this)" type="checkbox" class="form-check-input input-filter" value="'+item.todo_idx+'" ' + isChecked + '></th>';
    		content += '<td style="color: '+ textcolor+'">'+ item.todo_content +'</td>';
    		content += '<th style="width:40px"><button onclick="tododel(this)" class="delete-btn" value="'+item.todo_idx+'"><i class="bx bx-trash"></i></button>'+'</th>';
    		
    		content += '</tr>';
    	});
    }
    $('#todolist').empty();
    $('#todolist').append(content);
}

// 할일 입력하기
function handleKeyPress(event) {
    if (event.key === 'Enter') {
    	var todoText = $("#todoInput").val();
    	var trimtodoText = todoText.trim();
    	if(trimtodoText !== ''){
	    	console.log("입력한 내용: ", todoText);
	    	$.ajax({
	    		type: 'post',
	    		url: 'todoListwrite.do',
	    		data: {todoText: todoText},
	    		dataType: 'json',
	    		success: function (data) {
	    			console.log(data);
	    			$("#todoInput").val('');
	    			todoList();
	    		},
	    		error: function (e) {
	    			console.log(e);
	    		}
	    	});
    	}else{
    		$("#todoInput").val('');
    	}
    }
}

////////////////// 투두 공통 //////////////////
//할일 삭제하기
function todohisdel(del){
	var todoIdx = del.value;
	console.log("삭제할 투두idx: ", todoIdx);
	$.ajax({
		type: 'post',
		url: 'todoListdel.do',
		data: {todoIdx: todoIdx},
		dataType: 'json',
		success: function (data) {
			console.log(data);
			todohistory();
			todoList();
		},
		error: function (e) {
			console.log(e);
		}
	});
}

//할일 숨기기
function tododel(del){
	var todoIdx = del.value;
	var checked = $(del).closest('tr').find('input[type="checkbox"]').prop('checked');
	console.log("삭제할 투두idx: ", todoIdx);
	$.ajax({
		type: 'post',
		url: 'todoListhide.do',
		data: {todoIdx: todoIdx, checked: checked},
		dataType: 'json',
		success: function (data) {
			console.log(data);
			todohistory();
			todoList();
		},
		error: function (e) {
			console.log(e);
		}
	});
}

// 체크박스 클릭시 이벤트
function todocheck(check){
	var checked = check.checked;
	var todoIdx = check.value;
	
	if (checked){
		console.log("체크true idx값: ", todoIdx);
		$.ajax({
			type: 'post',
			url: 'todoListcheck.do',
			data: {todoIdx: todoIdx,checked: checked},
			datatype: 'json',
			success: function (data) {
				console.log(data);
				todohistory();
				todoList();
			},
			error: function (e) {
				console.log(e);
			}
		});
	}else{
		console.log("체크false idx값: ", todoIdx);
		$.ajax({
			type: 'post',
			url: 'todoListcheck.do',
			data: {todoIdx: todoIdx,checked: checked},
			datatype: 'json',
			success: function (data) {
				console.log(data);
				todohistory();
				todoList();
			},
			error: function (e) {
				console.log(e);
			}
		});
	}
}
</script>

<!-- Header JS -->
    <script src="../../assets/js/header.js"></script> 
</html>
