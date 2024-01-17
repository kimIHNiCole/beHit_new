<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="../../assets/vendor/libs/jquery/jquery.js"></script>
<style>
	#todoopenModal {
		    position: absolute;
		    top: 180px;
		    left: 0;
		    z-index: -1;
		    display: block;
		    width: 42px;
		    height: 42px;
		    border-top-left-radius: 15%;
		    border-bottom-left-radius: 15%;
		    background: rgba(227, 93, 93, 1);
		    color: #fff !important;
		    text-align: center;
		    font-size: 18px !important;
		    line-height: 42px;
		    opacity: 1;
		    -webkit-transition: all 0.1s linear 0.2s;
		    -o-transition: all 0.1s linear 0.2s;
		    transition: all 0.1s linear 0.2s;
		    -webkit-transform: translateX(-62px);
		    -ms-transform: translateX(-62px);
		    transform: translateX(-62px);
		    cursor: pointer;
		}
		
		#todoopenModal::before {
		    content: "";
		    width: 22px;
		    height: 22px;
		    display: block;
		    background-size: 100% 100%;
		    position: absolute;
		    margin: 10px;
		}
		
		#todoListModal {
		    position: fixed;
		    top: 170px;
		    right: 50px;
		    bottom: 0;
		    left: auto;
		    z-index: 2000;
		}
		
		#template-customizer {
		    position: fixed;
		    top: 0;
		    right: 0;
		    height: 100%;
		    z-index: 99999999;
		    display: -ms-flexbox;
		    -ms-flex-direction: column;
		    width: 400px;
		    background: #fff;
		    -webkit-box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2);
		    box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2);
		    -o-transition: all 0.2s ease-in;
		    -webkit-transform: translateX(420px);
		    -ms-transform: translateX(420px);
		}
		
		#template-customizer{
			font-family:pretendard;
		}
		
</style>

<body>
	<div id="template-customizer" class="invert-bg-white" style="visibility: visible">
		<a id="todoopenModal" ><i class='bx bxs-book-heart' style="font-size:1.625rem;"></i></a>
	</div>
	<div id="todoListModal"></div>
</body>

<script>
	$('#todoopenModal').click(function (e) {
		$.get("/todoList.go", function(data) {
			$("#todoListModal").html(data);
		});
	});
</script>
