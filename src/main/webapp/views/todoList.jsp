<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>BeHit</title>
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<style>
        #modalContent {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            width: 400px;
            height: 32rem; /* 최대 높이 설정 */
            overflow: hidden;
            border: var(--bs-modal-border-width) solid var(--bs-modal-border-color);
				    border-radius: 1rem;
				    outline: 0;
    				box-shadow: 0 2px 20px 0 rgba(67, 89, 113, 0.45);
        }
        #todoListContainer {
            max-height: 80%;
            overflow-y: auto;
            margin-bottom: 10px;
            height:80%;
        }
        #todoInput {
            width: calc(100% - 2px); /* 20px는 패딩, 2px는 테두리 고려 */
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
		.form-check-input:checked, .form-check-input[type=checkbox]:indeterminate {
		    background-color: #C20000;
		    border-color: #C20000;
		    box-shadow: 0 2px 4px 0 rgba(113, 221, 55, 0.4);
		}

        .delete-btn {
            background-color: white;
            color: black;
            border: none;
            padding: 5px 10px;
            cursor: pointer;
        }
        
        #modalContent{
        	font-family:pretendard;
        }
        
        
</style>
</head>
<body>
<div id="modalContent">
    <div>
        <span style="color: #C20000">할 일 <a id="todoNCount" style="color: #C20000"></a>개 남음</span>
        <a href="todoList_history.go" style="color: red; text-decoration: none;">완료된 히스토리 보기</a>
        <span style="float: right;"><button style="background: none; border: none;" onclick="closeTodoModal()">X</button></span>
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
</body>
<script>
todoList();

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
    		content += '<th style="width:30px; padding-right:15px;"><input onclick="todocheck(this)" type="checkbox" class="form-check-input input-filter" value="'+item.todo_idx+'" ' + isChecked + '></th>';
    		content += '<td style="color: '+ textcolor+'; text-align: left;">'+ item.todo_content +'</td>';
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

// 할일 삭제하기
function tododel(del){
	var todoIdx = del.value;
	var checked = $(del).closest('tr').find('input[type="checkbox"]').prop('checked');
	console.log("삭제할 투두idx: ", todoIdx);
	console.log("삭제할 체크상태:",checked);
	$.ajax({
		type: 'post',
		url: 'todoListhide.do',
		data: {todoIdx: todoIdx,checked: checked},
		dataType: 'json',
		success: function (data) {
			console.log(data);
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
				todoList();
			},
			error: function (e) {
				console.log(e);
			}
		});
	}
}

function closeTodoModal() {
	document.getElementById('modalContent').style.display = 'none';
}

</script>
</html>