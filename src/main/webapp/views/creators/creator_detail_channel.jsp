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
    <link rel="stylesheet" href="../../assets/vendor/libs/sweetalert2/sweetalert2.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/select2/select2.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/@form-validation/umd/styles/index.min.css" />
	<link rel="stylesheet" href="../../assets/vendor/libs/apex-charts/apex-charts.css" />

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
    .d-flex.justify-content-center.pt-3{
    	padding-top: 0rem !important;
    	margin-right: -7rem;
    }
    
    </style>
    
    
  </head>

  <body>
	<!-- Line Area Chart -->
	<div class="tab-pane fade" id="form-tabs-second" role="tabpanel">
   <div class="col-12 mb-4" >
     <div class="card">
       <div class="card-header d-flex justify-content-between">
         <div>
           <h5 class="card-title mb-0">일별 구독자 수</h5>
           <small class="text-muted">구독자 성장세 확인</small>
         </div>
         <!-- 쓸 수도 있을 것 같아서 일단 남겨둠
         <div class="dropdown">
           <button
             type="button"
             class="btn dropdown-toggle px-0"
             data-bs-toggle="dropdown"
             aria-expanded="false">
             <i class="bx bx-calendar"></i>
           </button>
           <ul class="dropdown-menu dropdown-menu-end">
             <li>
               <a href="javascript:void(0);" class="dropdown-item d-flex align-items-center">Today</a>
             </li>
             <li>
               <a href="javascript:void(0);" class="dropdown-item d-flex align-items-center">Yesterday</a>
             </li>
             <li>
               <a href="javascript:void(0);" class="dropdown-item d-flex align-items-center"
                 >Last 7 Days</a
               >
             </li>
             <li>
               <a href="javascript:void(0);" class="dropdown-item d-flex align-items-center"
                 >Last 30 Days</a
               >
             </li>
             <li>
               <hr class="dropdown-divider" />
             </li>
             <li>
               <a href="javascript:void(0);" class="dropdown-item d-flex align-items-center"
                 >Current Month</a
               >
             </li>
             <li>
               <a href="javascript:void(0);" class="dropdown-item d-flex align-items-center">Last Month</a>
             </li>
           </ul>
         </div>
          달력 드롭다운 영역--> 
       </div>
       <div class="card-body">
         <div id="lineAreaChart"></div>
       </div>
     </div>
   </div>
   <!-- /Line Area Chart -->

<!-- Line Chart -->
   <div class="col-12 mb-4">
     <div class="card">
       <div class="card-header d-flex justify-content-between">
         <div>
           <h5 class="card-title mb-0">일일 조회수 추이</h5>
           <small class="text-muted">조회수 변동값 체크를 통해 알고리즘 상태와 채널 성장도 체크</small>
         </div>
         <!-- 
         <div class="d-sm-flex d-none align-items-center">
           <h5 class="mb-0 me-3">$ 100,000</h5>
           <span class="badge bg-label-secondary">
             <i class="bx bx-down-arrow-alt bx-xs text-danger"></i>
             <span class="align-middle">20%</span>
           </span>
         </div>
          -->
       </div>
       <div class="card-body">
         <div id="lineChart"></div>
       </div>
     </div>
   </div>
   <!-- /Line Chart -->
	</div>
               



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
    <script src="../../assets/vendor/libs/sweetalert2/sweetalert2.js"></script>
    <script src="../../assets/vendor/libs/cleavejs/cleave.js"></script>
    <script src="../../assets/vendor/libs/cleavejs/cleave-phone.js"></script>
    <script src="../../assets/vendor/libs/select2/select2.js"></script>
    <script src="../../assets/vendor/libs/@form-validation/umd/bundle/popular.min.js"></script>
    <script src="../../assets/vendor/libs/@form-validation/umd/plugin-bootstrap5/index.min.js"></script>
    <script src="../../assets/vendor/libs/@form-validation/umd/plugin-auto-focus/index.min.js"></script>

    <!-- Main JS -->
    <script src="../../assets/js/main.js"></script>

    <!-- Page JS -->
    <script src="../../assets/js/modal-edit-user.js"></script>
    <script src="../../assets/js/app-user-view.js"></script>
     <script src="../../assets/vendor/libs/apex-charts/apexcharts.js"></script>
     <!-- <script src="../../assets/js/charts-apex.js"></script> -->
     <script>
     
     /**
      * Charts Apex
      */

     'use strict';

     (function () {
       let cardColor, headingColor, labelColor, borderColor, legendColor;

       if (isDarkStyle) {
         cardColor = config.colors_dark.cardColor;
         headingColor = config.colors_dark.headingColor;
         labelColor = config.colors_dark.textMuted;
         legendColor = config.colors_dark.bodyColor;
         borderColor = config.colors_dark.borderColor;
       } else {
         cardColor = config.colors.cardColor;
         headingColor = config.colors.headingColor;
         labelColor = config.colors.textMuted;
         legendColor = config.colors.bodyColor;
         borderColor = config.colors.borderColor;
       }

       // Color constant
       const chartColors = {
         column: {
           series1: '#826af9',
           series2: '#d2b0ff',
           bg: '#f8d3ff'
         },
         donut: {
           series1: '#fee802',
           series2: '#3fd0bd',
           series3: '#826bf8',
           series4: '#2b9bf4'
         },
         area: {
           series1: '#29dac7',
           series2: '#60f2ca',
           series3: '#a5f8cd'
         }
       };

       // Heat chart data generator
       function generateDataHeat(count, yrange) {
         let i = 0;
         let series = [];
         while (i < count) {
           let x = 'w' + (i + 1).toString();
           let y = Math.floor(Math.random() * (yrange.max - yrange.min + 1)) + yrange.min;

           series.push({
             x: x,
             y: y
           });
           i++;
         }
         return series;
       }

       // Line Area Chart
       // --------------------------------------------------------------------
       const areaChartEl = document.querySelector('#lineAreaChart'),
         areaChartConfig = {
           chart: {
             height: 400,
             type: 'area',
             parentHeightOffset: 0,
             toolbar: {
               show: false
             }
           },
           dataLabels: {
             enabled: false
           },
           stroke: {
             show: false,
             curve: 'straight'
           },
           legend: {
             show: true,
             position: 'top',
             horizontalAlign: 'start',
             labels: {
               colors: legendColor,
               useSeriesColors: false
             }
           },
           grid: {
             borderColor: borderColor,
             xaxis: {
               lines: {
                 show: true
               }
             }
           },
           colors: [chartColors.area.series3, chartColors.area.series2, chartColors.area.series1],
           series: [
             {
               name: '구독자 수',
               data: [100, 120, 90, 170, 130, 160, 140, 240, 220, 180, 270, 280, 375]
             },
             {
               name: '컨텐츠 수',
               data: [60, 80, 70, 110, 80, 100, 90, 180, 160, 140, 200, 220, 275]
             },
             {
               name: '총 조회수',
               data: [20, 40, 30, 70, 40, 60, 50, 140, 120, 100, 140, 180, 220]
             }
           ],
           xaxis: {
             categories: [
               '7/12',
               '8/12',
               '9/12',
               '10/12',
               '11/12',
               '12/12',
               '13/12',
               '14/12',
               '15/12',
               '16/12',
               '17/12',
               '18/12',
               '19/12',
               '20/12'
             ],
             axisBorder: {
               show: false
             },
             axisTicks: {
               show: false
             },
             labels: {
               style: {
                 colors: labelColor,
                 fontSize: '13px'
               }
             }
           },
           yaxis: {
             labels: {
               style: {
                 colors: labelColor,
                 fontSize: '13px'
               }
             }
           },
           fill: {
             opacity: 1,
             type: 'solid'
           },
           tooltip: {
             shared: false
           }
         };
       if (typeof areaChartEl !== undefined && areaChartEl !== null) {
         const areaChart = new ApexCharts(areaChartEl, areaChartConfig);
         areaChart.render();
       }

       // Bar Chart
       // --------------------------------------------------------------------
       const barChartEl = document.querySelector('#barChart'),
         barChartConfig = {
           chart: {
             height: 400,
             type: 'bar',
             stacked: true,
             parentHeightOffset: 0,
             toolbar: {
               show: false
             }
           },
           plotOptions: {
             bar: {
               columnWidth: '15%',
               colors: {
                 backgroundBarColors: [
                   chartColors.column.bg,
                   chartColors.column.bg,
                   chartColors.column.bg,
                   chartColors.column.bg,
                   chartColors.column.bg
                 ],
                 backgroundBarRadius: 10
               }
             }
           },
           dataLabels: {
             enabled: false
           },
           legend: {
             show: true,
             position: 'top',
             horizontalAlign: 'start',
             labels: {
               colors: legendColor,
               useSeriesColors: false
             }
           },
           colors: [chartColors.column.series1, chartColors.column.series2],
           stroke: {
             show: true,
             colors: ['transparent']
           },
           grid: {
             borderColor: borderColor,
             xaxis: {
               lines: {
                 show: true
               }
             }
           },
           series: [
             {
               name: 'Apple',
               data: [90, 120, 55, 100, 80, 125, 175, 70, 88, 180]
             },
             {
               name: 'Samsung',
               data: [85, 100, 30, 40, 95, 90, 30, 110, 62, 20]
             }
           ],
           xaxis: {
             categories: ['7/12', '8/12', '9/12', '10/12', '11/12', '12/12', '13/12', '14/12', '15/12', '16/12'],
             axisBorder: {
               show: false
             },
             axisTicks: {
               show: false
             },
             labels: {
               style: {
                 colors: labelColor,
                 fontSize: '13px'
               }
             }
           },
           yaxis: {
             labels: {
               style: {
                 colors: labelColor,
                 fontSize: '13px'
               }
             }
           },
           fill: {
             opacity: 1
           }
         };
       if (typeof barChartEl !== undefined && barChartEl !== null) {
         const barChart = new ApexCharts(barChartEl, barChartConfig);
         barChart.render();
       }

     

       // Line Chart
       // --------------------------------------------------------------------
       const lineChartEl = document.querySelector('#lineChart'),
         lineChartConfig = {
           chart: {
             height: 400,
             type: 'line',
             parentHeightOffset: 0,
             zoom: {
               enabled: false
             },
             toolbar: {
               show: false
             }
           },
           series: [
             {
               data: [280, 200, 220, 180, 270, 250, 70, 90, 200, 150, 160, 100, 150, 100, 50]
             }
           ],
           markers: {
             strokeWidth: 7,
             strokeOpacity: 1,
             strokeColors: [cardColor],
             colors: [config.colors.warning]
           },
           dataLabels: {
             enabled: false
           },
           stroke: {
             curve: 'straight'
           },
           colors: [config.colors.warning],
           grid: {
             borderColor: borderColor,
             xaxis: {
               lines: {
                 show: true
               }
             },
             padding: {
               top: -20
             }
           },
           tooltip: {
             custom: function ({ series, seriesIndex, dataPointIndex, w }) {
               return '<div class="px-3 py-2">' + '<span>' + series[seriesIndex][dataPointIndex] + '%</span>' + '</div>';
             }
           },
           xaxis: {
             categories: [
               '7/12',
               '8/12',
               '9/12',
               '10/12',
               '11/12',
               '12/12',
               '13/12',
               '14/12',
               '15/12',
               '16/12',
               '17/12',
               '18/12',
               '19/12',
               '20/12',
               '21/12'
             ],
             axisBorder: {
               show: false
             },
             axisTicks: {
               show: false
             },
             labels: {
               style: {
                 colors: labelColor,
                 fontSize: '13px'
               }
             }
           },
           yaxis: {
             labels: {
               style: {
                 colors: labelColor,
                 fontSize: '13px'
               }
             }
           }
         };
       if (typeof lineChartEl !== undefined && lineChartEl !== null) {
         const lineChart = new ApexCharts(lineChartEl, lineChartConfig);
         lineChart.render();
       }

     })();
     </script>
     
  </body>
</html>
