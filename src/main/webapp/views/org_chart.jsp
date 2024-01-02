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
    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Template customizer: To hide customizer set displayCustomizer value false in config.js.  -->
    <!-- <script src="../../assets/vendor/js/template-customizer.js"></script> -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="../../assets/js/config.js"></script>
  </head>

  <body>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
       

          <!-- Content wrapper -->
          <div class="content-wrapper">
          
          
            <!-- Content -->
            <div class="container-xxl flex-grow-1 container-p-y">

              <!-- JSTree -->
              <div class="row">
                <!-- Checkbox -->
                <div class="col-md-4 col-12">
                  <div class="card mb-md-0 mb-4">
                    <h5 class="card-header">조직도</h5>
                    <div class="card-body">
                      <div id="jstree-checkbox"></div>
                    </div>
                  </div>
                </div>
                <!-- /Checkbox -->
              </div>
              <!-- /JSTree -->
              
            </div>
            <!-- / Content -->


            <!-- <div class="content-backdrop fade"></div> -->
          </div>
          <!-- Content wrapper -->
        </div>
        <!-- / Layout page -->
      </div>

      <!-- Overlay -->
      <div class="layout-overlay layout-menu-toggle"></div>

      <!-- Drag Target Area To SlideIn Menu On Small Screens -->
      <div class="drag-target"></div>
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
    <script src="../../assets/vendor/libs/jstree/jstree.js"></script>

    <!-- Main JS -->
    <!-- <script src="../../assets/js/main.js"></script> -->

    <script>
    	
    	$.ajax({
    		type: 'get',
        	url: 'getOrgList',
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
	  
    </script>
  </body>
</html>
