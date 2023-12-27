<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<style>
          body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        #modalContainer {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            justify-content: center;
            align-items: center;
        }
        #modalContent {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            width: 400px;
            max-height: 80%; /* 최대 높이 설정 */
            overflow: hidden;
        }
        #todoListContainer {
            max-height: calc(80% - 60px); /* 모달창 높이에서 할일 입력창 높이를 뺀 값 */
            overflow-y: auto;
            margin-bottom: 10px;
            height:80%;
        }
        #remainingTasks {
            margin-bottom: 10px;
        }
        .todoItem {
            margin-bottom: 5px;
        }
        #todoInputContainer {
            position: relative;
            margin-top: 10px;
        }
        #todoInput {
            width: calc(100% - 22px); /* 20px는 패딩, 2px는 테두리 고려 */
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        #addTodoButton {
            position: absolute;
            right: 0;
            top: 0;
            height: 100%;
            padding: 6px;
            border: 1px solid #ccc;
            border-radius: 0 4px 4px 0;
            cursor: pointer;
        }
</style>
</head>
<body>
<button onclick="openTodoModal()">투두 리스트 열기</button>

<div id="modalContainer">
    <div id="modalContent">
        <div>
            <span id="remainingTasks">할일 0개 남음</span>
            <a href="#" onclick="showCompletedHistory()">완료된 히스토리 보기</a>
            <span style="float: right;"><button onclick="closeTodoModal()">X</button></span>
        </div>
        <div id="todoListContainer">
            <!-- 투두 리스트가 여기에 들어갑니다 -->
        </div>
        <div>
            <input type="text" id="todoInput" placeholder="할 일을 입력하세요" onkeydown="handleKeyPress(event)">
        </div>
    </div>
</div>
</body>
<script>
function openTodoModal() {
    document.getElementById('modalContainer').style.display = 'flex';
    document.addEventListener('keydown', handleKeyPressOutside);
}

function closeTodoModal() {
    document.getElementById('modalContainer').style.display = 'none';
    document.removeEventListener('keydown', handleKeyPressOutside);
}

function handleKeyPressOutside(event) {
    if (event.key === 'Escape') {
        closeTodoModal();
    }
}

function handleKeyPress(event) {
    if (event.key === 'Enter') {
    }
}
</script>
</html>