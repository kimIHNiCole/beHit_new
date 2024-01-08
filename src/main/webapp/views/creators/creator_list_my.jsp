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
    
    <!-- 커스텀 -->
    <style>
    /* 선택 탭과 셀렉트 박스 */
    .form-select.create{
    	width: 15rem;
    }
    .top-tap-select{
    	margin-bottom: 0.5rem;
    }
    .top-tap-only{
    	margin-top: 0.7rem;
    	font-size: 18px;
    }
    /* 중간 버튼 */
	.d-flex.justify-content-end.pt-3{
		margin-top: -1.3rem;
	}
	.btn.btn-label-danger.suspend-user{
		margin-right: 0.7rem;
	}
	
	.btn.btn-primary.me-3{
		margin-right: 0rem !important;
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
          <!-- Content wrapper --> <!-- 여기서부터~~~~~ -->
          <div class="content-wrapper">
            <!-- Content -->
            <div class="container-xxl flex-grow-1 container-p-y">
            <div class ="top-tap-select" style="display: flex; justify-content: space-between;">
			    <h5><a href="../creators/creator_list_all.go">전체리스트</a> | <a href="../creators/creator_list_my.go">나의 크리에이터</a></h5>
			    <select class="form-select create">
                     <option value="name">이도훈(본인)</option>
                     <option value="id">한가인</option>
                     <option value="department">정우성</option>
                     <option value="position">황정민</option>
                     <option value="title">정성화</option>
                </select>
			</div>
              <div class="row g-4 mb-4">
                <div class="col-sm-6 col-xl-3">
                  <div class="card">
                    <div class="card-body">
                      <div class="d-flex align-items-start justify-content-between">
                        <div class="content-left">
                          <span>관리 크리에이터</span>
                          <div class="d-flex align-items-end mt-2">
                            <h4 class="mb-0 me-2">${creatorAllList.total_creators} 명</h4>
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
                          <span>관리채널</span>
                          <div class="d-flex align-items-end mt-2">
                            <h4 class="mb-0 me-2">${creatorAllList.total_channels} 개</h4>
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
                          <span>구독자 합계</span>
                          <div class="d-flex align-items-end mt-2">
                            <h4 class="mb-0 me-2">${creatorAllList.total_subscribers} 명</h4>
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
                          <span>컨텐츠 합계</span>
                          <div class="d-flex align-items-end mt-2">
                            <h4 class="mb-0 me-2">${creatorAllList.total_contents} 개</h4>
                          </div>
                          <p class="mb-0">전일 대비 <small class="text-danger">-3.5%</small></p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- 버튼들 -->
              <div class="d-flex justify-content-end pt-3">
			    <a href="javascript:;" class="btn btn-label-danger suspend-user" data-bs-target="#editUser" data-bs-toggle="modal">열람 권한</a>
			    <a href="/creatorAdd.go" class="btn btn-primary me-3"><i class="bx bx-user-check me-1"></i>크리에이터 추가</a>
			  </div>
                     
              
              <!-- 크리에이터 카드들 -->
              <c:forEach var="creator" items="${creatorAllList}">
	              <div class="row">
				    <div class="col-md-6 col-lg-4">
	                  <h6 class="mt-2 text-muted"></h6>
	                  <div class="card">
	                    <img class="card-img-top" src="../../assets/img/elements/7.jpg" alt="Creator_image" />
	                    <div class="card-body">
	                      <h5 class="card-title">혜안</h5>
	                      <br/>
	                      <p class="card-text">대표 채널 | <a href="javascript:void(0)" class="card-link"> 혜안</a></p>
	                      <p class="card-text">구독자 수 | 3,319,001</p>
	                      <p class="card-text">컨텐츠 수 | 319,001</p>
	                      <p class="card-text">| 게임, FUN |</p>
	                    </div>
	                  </div>
	                </div>
				</div>
              </c:forEach>
              
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
    <script src="../../assets/vendor/libs/datatables-bs5/datatables-bootstrap5.js"></script> <!-- 페이징들어있는거 -->
    <script src="../../assets/vendor/libs/select2/select2.js"></script>
    <script src="../../assets/vendor/libs/@form-validation/umd/bundle/popular.min.js"></script>
    <script src="../../assets/vendor/libs/@form-validation/umd/plugin-bootstrap5/index.min.js"></script>
    <script src="../../assets/vendor/libs/@form-validation/umd/plugin-auto-focus/index.min.js"></script>
    <script src="../../assets/vendor/libs/cleavejs/cleave.js"></script>
    <script src="../../assets/vendor/libs/cleavejs/cleave-phone.js"></script>

    <!-- Main JS -->
    <script src="../../assets/js/main.js"></script>

    <!-- Page JS -->
    <!-- 
    <script src="../../assets/js/app-user-list.js"></script>
     --> 
    <script>
    'use strict';

    $(function () {
    	
      /* var dataTablePermissions = $('.datatables-permissions'),
        dt_permission,
        userList = 
  		"data": [
			{
				"id": 1,
				"full_name": "Galen Slixby",
				"role": "Editor",
				"username": "gslixby0",
				"email": "gslixby0@abc.net.au",
				"current_plan": "Enterprise",
				"billing": "Manual - Credit Card",
				"status": 3,
				"avatar": ""
			},
			{
				"id": 2,
				"full_name": "Halsey Redmore",
				"role": "Author",
				"username": "hredmore1",
				"email": "hredmore1@imgur.com",
				"current_plan": "Team",
				"billing": "Manual - Paypal",
				"status": 1,
				"avatar": "10.png"
			}
		] */

/*       // Users List datatable
      if (dataTablePermissions.length) {
        dt_permission = dataTablePermissions.DataTable({
          ajax: assetsPath + 'json/permissions-list.json', // JSON file to add data
          columns: [
            // columns according to JSON
            { data: '' },
            { data: 'id' },
            { data: 'name' },
            { data: 'assigned_to' },
            { data: 'created_date' },
            { data: '' }
          ],
          columnDefs: [
            {
              // For Responsive
              className: 'control',
              orderable: false,
              searchable: false,
              responsivePriority: 2,
              targets: 0,
              render: function (data, type, full, meta) {
                return '';
              }
            },
            {
              targets: 1,
              searchable: false,
              visible: false
            },
            {
              // Name
              targets: 2,
              render: function (data, type, full, meta) {
                var $name = full['name'];
                return '<span class="text-nowrap">' + $name + '</span>';
              }
            },
            {
              // User Role
              targets: 3,
              orderable: false,
              render: function (data, type, full, meta) {
                var $assignedTo = full['assigned_to'],
                  $output = '';
                var roleBadgeObj = {
                  Admin: '<a href="' + userList + '"><span class="badge  bg-label-primary m-1">Administrator</span></a>',
                  Manager: '<a href="' + userList + '"><span class="badge  bg-label-warning m-1">Manager</span></a>',
                  Users: '<a href="' + userList + '"><span class="badge  bg-label-success m-1">Users</span></a>',
                  Support: '<a href="' + userList + '"><span class="badge  bg-label-info m-1">Support</span></a>',
                  Restricted:
                    '<a href="' + userList + '"><span class="badge  bg-label-danger m-1">Restricted User</span></a>'
                };
                for (var i = 0; i < $assignedTo.length; i++) {
                  var val = $assignedTo[i];
                  $output += roleBadgeObj[val];
                }
                return '<span class="text-nowrap">' + $output + '</span>';
              }
            },
            {
              // remove ordering from Name
              targets: 4,
              orderable: false,
              render: function (data, type, full, meta) {
                var $date = full['created_date'];
                return '<span class="text-nowrap">' + $date + '</span>';
              }
            },
            {
              // Actions
              targets: -1,
              searchable: false,
              title: 'Actions',
              orderable: false,
              render: function (data, type, full, meta) {
                return (
                  '<span class="text-nowrap"><button class="btn btn-sm btn-icon me-2" data-bs-target="#editPermissionModal" data-bs-toggle="modal" data-bs-dismiss="modal"><i class="bx bx-edit"></i></button>' +
                  '<button class="btn btn-sm btn-icon delete-record"><i class="bx bx-trash"></i></button></span>'
                );
              }
            }
          ],
          order: [[1, 'asc']],
          dom:
            '<"row mx-1"' +
            '<"col-sm-12 col-md-3" l>' +
            '<"col-sm-12 col-md-9"<"dt-action-buttons text-xl-end text-lg-start text-md-end text-start d-flex align-items-center justify-content-md-end justify-content-center flex-wrap me-1"<"me-3"f>B>>' +
            '>t' +
            '<"row mx-2"' +
            '<"col-sm-12 col-md-6"i>' +
            '<"col-sm-12 col-md-6"p>' +
            '>',
          language: {
            sLengthMenu: '_MENU_',
            search: 'Search',
            searchPlaceholder: 'Search..'
          },
          // Buttons with Dropdown
          buttons: [
            {
              text: 'Add Permission',
              className: 'add-new btn btn-primary mb-3 mb-md-0',
              attr: {
                'data-bs-toggle': 'modal',
                'data-bs-target': '#addPermissionModal'
              },
              init: function (api, node, config) {
                $(node).removeClass('btn-secondary');
              }
            }
          ],
          // For responsive popup
          responsive: {
            details: {
              display: $.fn.dataTable.Responsive.display.modal({
                header: function (row) {
                  var data = row.data();
                  return 'Details of ' + data['name'];
                }
              }),
              type: 'column',
              renderer: function (api, rowIdx, columns) {
                var data = $.map(columns, function (col, i) {
                  return col.title !== '' // ? Do not show row in modal popup if title is blank (for check box)
                    ? '<tr data-dt-row="' +
                        col.rowIndex +
                        '" data-dt-column="' +
                        col.columnIndex +
                        '">' +
                        '<td>' +
                        col.title +
                        ':' +
                        '</td> ' +
                        '<td>' +
                        col.data +
                        '</td>' +
                        '</tr>'
                    : '';
                }).join('');

                return data ? $('<table class="table"/><tbody />').append(data) : false;
              }
            }
          },
          initComplete: function () {
            // Adding role filter once table initialized
            this.api()
              .columns(3)
              .every(function () {
                var column = this;
                var select = $(
                  '<select id="UserRole" class="form-select text-capitalize"><option value=""> Select Role </option></select>'
                )
                  .appendTo('.user_role')
                  .on('change', function () {
                    var val = $.fn.dataTable.util.escapeRegex($(this).val());
                    column.search(val ? '^' + val + '$' : '', true, false).draw();
                  });

                column
                  .data()
                  .unique()
                  .sort()
                  .each(function (d, j) {
                    select.append('<option value="' + d + '" class="text-capitalize">' + d + '</option>');
                  });
              });
          }
        });
      }
 */
      // Delete Record
   /*    $('.datatables-permissions tbody').on('click', '.delete-record', function () {
        dt_permission.row($(this).parents('tr')).remove().draw();
      }); */

      // Filter form control to default size
      // ? setTimeout used for multilingual table initialization
     /*  setTimeout(() => {
        $('.dataTables_filter .form-control').removeClass('form-control-sm');
        $('.dataTables_length .form-select').removeClass('form-select-sm');
      }, 300); */
    });
    </script>
    
  </body>
</html>
