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

    <title>Treeview - Extended UI | Sneat - Bootstrap 5 HTML Admin Template - Pro</title>

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
    <link rel="stylesheet" href="../../assets/vendor/libs/jstree/jstree.css" />

    <!-- Page CSS -->

    <!-- Helpers -->
    <script src="../../assets/vendor/js/helpers.js"></script>
    <script src="../../assets/js/config.js"></script>
    <style>
    div#projModal {
    width: 350px;
    height: 430px;
    background-color: white;
	}
    </style>
  </head>

  <body>
	<div id="projModal">
		<h5 class="card-header">조직도
		<span style="float: right;"><button style="background: none; border: none;" onclick="closeChartModal()"><i class='bx bx-x' ></i></button></span>
		</h5>
		<div class="card-body">
		  <div id="jstree-checkbox"></div>
		</div>
	</div>

    <script src="../../assets/vendor/libs/jquery/jquery.js"></script>
    <script src="../../assets/vendor/libs/popper/popper.js"></script>
    <script src="../../assets/vendor/js/bootstrap.js"></script>
    <script src="../../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="../../assets/vendor/libs/hammer/hammer.js"></script>
    <script src="../../assets/vendor/libs/i18n/i18n.js"></script>
    <script src="../../assets/vendor/libs/typeahead-js/typeahead.js"></script>
    <script src="../../assets/vendor/js/menu.js"></script>

    <!-- Vendors JS -->
    <script src="../../assets/vendor/libs/jstree/jstree.js"></script>

    <script>
    	$.ajax({
    		type: 'get',
        	url: '/project/getOrgList',
        	data: {},
        	dataType: 'JSON',
	        success : function(data){
	          console.log(data);
              drawOrg(data.orgList, data.deptKind);
	        } ,
	        error : function(e){
	          console.log(e);
	        }
    	});
    	
    	function drawOrg(orgList, deptKind) {
    		console.log('orgList', orgList);
    		console.log('deptKind',deptKind);
    		
    		var theme = $('html').hasClass('light-style') ? 'default' : 'default-dark',
    			    checkboxTree = $('#jstree-checkbox');
         
    		if (checkboxTree.length) {
    			
    			var serverData = [];
    			
    			for (var i = 0; i < deptKind.length; i++) {
    			    var deptname = {
    			        text: deptKind[i],
    			        type: 'depart',
    			        children: []
    			    };
    			    console.log("deptKind",deptKind[i]);
    			    
    			    var empLength = function(){
    			    	var cnt=0;
   			    		for(var k=0; k < orgList.length; k++){
   			    			if(orgList[k].dept == deptKind[i]){
   			    				cnt++;
   			    				console.log("cnt", cnt);
   			    			}
   			    		}
   			    		return cnt;
    			    };
    			    var empInfo = function(index){
    			    	var info=[];
   			    		for(var k=0; k < orgList.length; k++){
   			    			if(orgList[k].dept == deptKind[i]){
   			    				console.log("emp_value : ", orgList[k].emp_name,orgList[k].grade);
   			    				info.push( orgList[k].emp_name+" | "+orgList[k].grade+"<input type='hidden' value='"+orgList[k].emp_id+"'/>");
   			    			}
   			    		}
   			    		return info[index];
    			    };
    			    
    			    for (var j = 0; j < empLength(); j++) {
    			    	console.log("empInfo("+j+")",empInfo(j));
    			        var emp = {
    			            text: empInfo(j)
    			        };
    			        deptname.children.push(emp);
    			    } 

    			    // 부모 데이터를 배열에 추가
   			    	serverData.push(deptname); 
    			}

    			console.log(serverData); 

    			  // jstree에서 사용할 데이터 구성
    			  var jstreeData = serverData.map(function (parent) {
    			    var parentNode = {
    			      text: parent.text,
    			      type: 'depart',
    			      children: parent.children.map(function (child) {
    			        return {
    			          text: child.text
    			        };
    			      })
    			    };
    			    return parentNode;
    			  });

    			  checkboxTree.jstree({
    			    core: {
    			      themes: {
    			        name: theme
    			      },
    			      data: jstreeData
    			    },
    			    plugins: ['types', 'checkbox', 'wholerow'],
    			    types: {
    			      default: {
    			        icon: 'bx bx-user'
    			      },
    			      depart: {
    			    	icon: 'bx bx-folder'
    			      }
    			    }
    			  });
    			}
    		
    	}  
	  
    	
    	function closeChartModal() { // 모달창닫기
    		document.getElementById('projModal').style.display = 'none';
    	}
    	

    	$(document).ready(function () {
    	    // 선택된 노드 정보를 담을 배열
    	    var selectedNodes = [];

    	    $('#jstree-checkbox').on('click', '.jstree-anchor', function (event) {
    	        event.preventDefault();

    	        var $clickedNode = $(this);
    	        var nodeName = $clickedNode.text().trim();
    	        var nodeHidden = $clickedNode.find('input[type="hidden"]').val();
    	        var isSelected = $clickedNode.attr('aria-selected') === 'true';

    	        setTimeout(function () {
    	            var currentSelected = $clickedNode.attr('aria-selected') === 'true';

    	            var isParentNode = !$clickedNode.parent().hasClass('jstree-leaf');
    	            if (isParentNode) {
    	                var isOpen = $clickedNode.parent().hasClass('jstree-open');
    	                if (!isOpen) {
    	                    $clickedNode.parent().find('> .jstree-icon').click();
    	                }

    	                $clickedNode.parent().find('.jstree-children li').each(function () {
    	                    var $childNode = $(this).find('> .jstree-anchor');
    	                    var childNodeName = $childNode.text().trim();
    	                    var childNodeSelected = $childNode.attr('aria-selected') === 'true';
    	                    var ChildHidden = $childNode.find('input[type="hidden"]').val();

    	                    // 배열에서 노드 정보 추가 또는 제외
    	                    if (childNodeSelected) {
    	                        if (!selectedNodes.includes(ChildHidden)) {
    	                            selectedNodes.push(ChildHidden);
    	                        }
    	                    } else {
    	                        selectedNodes = selectedNodes.filter(node => node !== ChildHidden);
    	                    }

    	                    console.log('이름:', childNodeName, ' 클릭 후 체크 여부:', childNodeSelected, ' ChildHidden:', ChildHidden);
    	                });
    	            } else {
    	                // 배열에서 노드 정보 추가 또는 제외
    	                if (currentSelected) {
    	                    if (!selectedNodes.includes(nodeHidden)) {
    	                        selectedNodes.push(nodeHidden);
    	                    }
    	                } else {
    	                    selectedNodes = selectedNodes.filter(node => node !== nodeHidden);
    	                }

    	                console.log('이름:', nodeName, ' 클릭 후 체크 여부:', currentSelected, ' nodeHidden:', nodeHidden);
    	            }

    	            // 출력 선택된 노드 배열
    	            console.log('Selected Nodes:', selectedNodes);
    	        }, 0);
    	    });

    	    // 트리 노드 열림/닫힘 이벤트 리스너를 추가합니다.
    	    $('#jstree-checkbox').on('after_open.jstree', function (event, data) {
    	        // 열린 노드의 이름을 가져옵니다.
    	        var nodeName = $(data.node).find('> a').text().trim();

    	        // 열린 노드의 이름과 열린 상태를 콘솔에 출력합니다.
    	        // console.log('이름:', nodeName, ' 상태: 열림');
    	    });

    	    $('#jstree-checkbox').on('after_close.jstree', function (event, data) {
    	        // 닫힌 노드의 이름을 가져옵니다.
    	        var nodeName = $(data.node).find('> a').text().trim();

    	        // 닫힌 노드의 이름과 닫힌 상태를 콘솔에 출력합니다.
    	        // console.log('이름:', nodeName, ' 상태: 닫힘');
    	    });
    	});

    </script>
  </body>
</html>
