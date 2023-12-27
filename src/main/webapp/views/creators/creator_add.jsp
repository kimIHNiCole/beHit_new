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
    <link rel="stylesheet" href="../../assets/vendor/libs/bs-stepper/bs-stepper.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/bootstrap-select/bootstrap-select.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/select2/select2.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/@form-validation/umd/styles/index.min.css" />
    <!-- 캘린더css -->
    <link rel="stylesheet" href="../../assets/vendor/libs/flatpickr/flatpickr.css" />
    <!-- 사진드롭다운 -->
    <link rel="stylesheet" href="assets/vendor/libs/dropzone/dropzone.css" />

    <!-- Page CSS -->
    <!-- 생성추가 -->
    <link rel="stylesheet" href="../../assets/vendor/css/pages/app-invoice.css" />

    <!-- Helpers -->
    <script src="../../assets/vendor/js/helpers.js"></script>
    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Template customizer: To hide customizer set displayCustomizer value false in config.js.  -->
    <script src="../../assets/vendor/js/template-customizer.js"></script>
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="../../assets/js/config.js"></script>
  </head>

  <body>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
        <!-- Menu -->

        <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
          <div class="app-brand demo">
            <a href="index.go" class="app-brand-link">
              <span class="app-brand-logo demo">
                <svg
                  width="25"
                  viewBox="0 0 25 42"
                  version="1.1"
                  xmlns="http://www.w3.org/2000/svg"
                  xmlns:xlink="http://www.w3.org/1999/xlink">
                  <defs>
                    <path
                      d="M13.7918663,0.358365126 L3.39788168,7.44174259 C0.566865006,9.69408886 -0.379795268,12.4788597 0.557900856,15.7960551 C0.68998853,16.2305145 1.09562888,17.7872135 3.12357076,19.2293357 C3.8146334,19.7207684 5.32369333,20.3834223 7.65075054,21.2172976 L7.59773219,21.2525164 L2.63468769,24.5493413 C0.445452254,26.3002124 0.0884951797,28.5083815 1.56381646,31.1738486 C2.83770406,32.8170431 5.20850219,33.2640127 7.09180128,32.5391577 C8.347334,32.0559211 11.4559176,30.0011079 16.4175519,26.3747182 C18.0338572,24.4997857 18.6973423,22.4544883 18.4080071,20.2388261 C17.963753,17.5346866 16.1776345,15.5799961 13.0496516,14.3747546 L10.9194936,13.4715819 L18.6192054,7.984237 L13.7918663,0.358365126 Z"
                      id="path-1"></path>
                    <path
                      d="M5.47320593,6.00457225 C4.05321814,8.216144 4.36334763,10.0722806 6.40359441,11.5729822 C8.61520715,12.571656 10.0999176,13.2171421 10.8577257,13.5094407 L15.5088241,14.433041 L18.6192054,7.984237 C15.5364148,3.11535317 13.9273018,0.573395879 13.7918663,0.358365126 C13.5790555,0.511491653 10.8061687,2.3935607 5.47320593,6.00457225 Z"
                      id="path-3"></path>
                    <path
                      d="M7.50063644,21.2294429 L12.3234468,23.3159332 C14.1688022,24.7579751 14.397098,26.4880487 13.008334,28.506154 C11.6195701,30.5242593 10.3099883,31.790241 9.07958868,32.3040991 C5.78142938,33.4346997 4.13234973,34 4.13234973,34 C4.13234973,34 2.75489982,33.0538207 2.37032616e-14,31.1614621 C-0.55822714,27.8186216 -0.55822714,26.0572515 -4.05231404e-15,25.8773518 C0.83734071,25.6075023 2.77988457,22.8248993 3.3049379,22.52991 C3.65497346,22.3332504 5.05353963,21.8997614 7.50063644,21.2294429 Z"
                      id="path-4"></path>
                    <path
                      d="M20.6,7.13333333 L25.6,13.8 C26.2627417,14.6836556 26.0836556,15.9372583 25.2,16.6 C24.8538077,16.8596443 24.4327404,17 24,17 L14,17 C12.8954305,17 12,16.1045695 12,15 C12,14.5672596 12.1403557,14.1461923 12.4,13.8 L17.4,7.13333333 C18.0627417,6.24967773 19.3163444,6.07059163 20.2,6.73333333 C20.3516113,6.84704183 20.4862915,6.981722 20.6,7.13333333 Z"
                      id="path-5"></path>
                  </defs>
                  <g id="g-app-brand" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                    <g id="Brand-Logo" transform="translate(-27.000000, -15.000000)">
                      <g id="Icon" transform="translate(27.000000, 15.000000)">
                        <g id="Mask" transform="translate(0.000000, 8.000000)">
                          <mask id="mask-2" fill="white">
                            <use xlink:href="#path-1"></use>
                          </mask>
                          <use fill="#C20000" xlink:href="#path-1"></use>
                          <g id="Path-3" mask="url(#mask-2)">
                            <use fill="#C20000" xlink:href="#path-3"></use>
                            <use fill-opacity="0.2" fill="#FFFFFF" xlink:href="#path-3"></use>
                          </g>
                          <g id="Path-4" mask="url(#mask-2)">
                            <use fill="#C20000" xlink:href="#path-4"></use>
                            <use fill-opacity="0.2" fill="#FFFFFF" xlink:href="#path-4"></use>
                          </g>
                        </g>
                        <g
                          id="Triangle"
                          transform="translate(19.000000, 11.000000) rotate(-300.000000) translate(-19.000000, -11.000000) ">
                          <use fill="#C20000" xlink:href="#path-5"></use>
                          <use fill-opacity="0.2" fill="#FFFFFF" xlink:href="#path-5"></use>
                        </g>
                      </g>
                    </g>
                  </g>
                </svg>
              </span>
              <span class="app-brand-text demo menu-text fw-bold ms-2">Sneat</span>
            </a>

            <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto">
              <i class="bx bx-chevron-left bx-sm align-middle"></i>
            </a>
          </div>

          <div class="menu-inner-shadow"></div>

          <ul class="menu-inner py-1">
            <!-- Dashboards -->
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-home-circle"></i>
                <div class="text-truncate" data-i18n="Dashboards">Dashboards</div>
                <span class="badge badge-center rounded-pill bg-danger ms-auto">5</span>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="dashboards-analytics.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Analytics">Analytics</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="dashboards-crm.go" class="menu-link">
                    <div class="text-truncate" data-i18n="CRM">CRM</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="app-ecommerce-dashboard.go" class="menu-link">
                    <div class="text-truncate" data-i18n="eCommerce">eCommerce</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="app-logistics-dashboard.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Logistics">Logistics</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="app-academy-dashboard.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Academy">Academy</div>
                  </a>
                </li>
              </ul>
            </li>

            <!-- Layouts -->
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-layout"></i>
                <div class="text-truncate" data-i18n="Layouts">Layouts</div>
              </a>

              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="layouts-collapsed-menu.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Collapsed menu">Collapsed menu</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="layouts-content-navbar.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Content navbar">Content navbar</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="layouts-content-navbar-with-sidebar.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Content nav + Sidebar">Content nav + Sidebar</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="../horizontal-menu-template" class="menu-link" target="_blank">
                    <div class="text-truncate" data-i18n="Horizontal">Horizontal</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="layouts-without-menu.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Without menu">Without menu</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="layouts-without-navbar.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Without navbar">Without navbar</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="layouts-fluid.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Fluid">Fluid</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="layouts-container.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Container">Container</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="layouts-blank.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Blank">Blank</div>
                  </a>
                </li>
              </ul>
            </li>

            <!-- Front Pages -->
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-store"></i>
                <div class="text-truncate" data-i18n="Front Pages">Front Pages</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="../front-pages/landing-page.go" class="menu-link" target="_blank">
                    <div class="text-truncate" data-i18n="Landing">Landing</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="../front-pages/pricing-page.go" class="menu-link" target="_blank">
                    <div class="text-truncate" data-i18n="Pricing">Pricing</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="../front-pages/payment-page.go" class="menu-link" target="_blank">
                    <div class="text-truncate" data-i18n="Payment">Payment</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="../front-pages/checkout-page.go" class="menu-link" target="_blank">
                    <div class="text-truncate" data-i18n="Checkout">Checkout</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="../front-pages/help-center-landing.go" class="menu-link" target="_blank">
                    <div class="text-truncate" data-i18n="Help Center">Help Center</div>
                  </a>
                </li>
              </ul>
            </li>

            <!-- Apps & Pages -->
            <li class="menu-header small text-uppercase">
              <span class="menu-header-text" data-i18n="Apps & Pages">Apps &amp; Pages</span>
            </li>
            <li class="menu-item">
              <a href="app-email.go" class="menu-link">
                <i class="menu-icon tf-icons bx bx-envelope"></i>
                <div class="text-truncate" data-i18n="Email">Email</div>
              </a>
            </li>
            <li class="menu-item">
              <a href="app-chat.go" class="menu-link">
                <i class="menu-icon tf-icons bx bx-chat"></i>
                <div class="text-truncate" data-i18n="Chat">Chat</div>
              </a>
            </li>
            <li class="menu-item">
              <a href="app-calendar.go" class="menu-link">
                <i class="menu-icon tf-icons bx bx-calendar"></i>
                <div class="text-truncate" data-i18n="Calendar">Calendar</div>
              </a>
            </li>
            <li class="menu-item">
              <a href="app-kanban.go" class="menu-link">
                <i class="menu-icon tf-icons bx bx-grid"></i>
                <div class="text-truncate" data-i18n="Kanban">Kanban</div>
              </a>
            </li>
            <!-- e-commerce-app menu start -->
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-cart-alt"></i>
                <div class="text-truncate" data-i18n="eCommerce">eCommerce</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="app-ecommerce-dashboard.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Dashboard">Dashboard</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="javascript:void(0);" class="menu-link menu-toggle">
                    <div class="text-truncate" data-i18n="Products">Products</div>
                  </a>
                  <ul class="menu-sub">
                    <li class="menu-item">
                      <a href="app-ecommerce-product-list.go" class="menu-link">
                        <div class="text-truncate" data-i18n="Product List">Product List</div>
                      </a>
                    </li>
                    <li class="menu-item">
                      <a href="app-ecommerce-product-add.go" class="menu-link">
                        <div class="text-truncate" data-i18n="Add Product">Add Product</div>
                      </a>
                    </li>
                    <li class="menu-item">
                      <a href="app-ecommerce-category-list.go" class="menu-link">
                        <div class="text-truncate" data-i18n="Category List">Category List</div>
                      </a>
                    </li>
                  </ul>
                </li>
                <li class="menu-item">
                  <a href="javascript:void(0);" class="menu-link menu-toggle">
                    <div class="text-truncate" data-i18n="Order">Order</div>
                  </a>
                  <ul class="menu-sub">
                    <li class="menu-item">
                      <a href="app-ecommerce-order-list.go" class="menu-link">
                        <div class="text-truncate" data-i18n="Order List">Order List</div>
                      </a>
                    </li>
                    <li class="menu-item">
                      <a href="app-ecommerce-order-details.go" class="menu-link">
                        <div class="text-truncate" data-i18n="Order Details">Order Details</div>
                      </a>
                    </li>
                  </ul>
                </li>
                <li class="menu-item">
                  <a href="javascript:void(0);" class="menu-link menu-toggle">
                    <div class="text-truncate" data-i18n="Customer">Customer</div>
                  </a>
                  <ul class="menu-sub">
                    <li class="menu-item">
                      <a href="app-ecommerce-customer-all.go" class="menu-link">
                        <div class="text-truncate" data-i18n="All Customers">All Customers</div>
                      </a>
                    </li>
                    <li class="menu-item">
                      <a href="javascript:void(0);" class="menu-link menu-toggle">
                        <div class="text-truncate" data-i18n="Customer Details">Customer Details</div>
                      </a>
                      <ul class="menu-sub">
                        <li class="menu-item">
                          <a href="app-ecommerce-customer-details-overview.go" class="menu-link">
                            <div class="text-truncate" data-i18n="Overview">Overview</div>
                          </a>
                        </li>
                        <li class="menu-item">
                          <a href="app-ecommerce-customer-details-security.go" class="menu-link">
                            <div class="text-truncate" data-i18n="Security">Security</div>
                          </a>
                        </li>
                        <li class="menu-item">
                          <a href="app-ecommerce-customer-details-billing.go" class="menu-link">
                            <div class="text-truncate" data-i18n="Address & Billing">Address & Billing</div>
                          </a>
                        </li>
                        <li class="menu-item">
                          <a href="app-ecommerce-customer-details-notifications.go" class="menu-link">
                            <div class="text-truncate" data-i18n="Notifications">Notifications</div>
                          </a>
                        </li>
                      </ul>
                    </li>
                  </ul>
                </li>
                <li class="menu-item">
                  <a href="app-ecommerce-manage-reviews.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Manage Reviews">Manage Reviews</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="app-ecommerce-referral.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Referrals">Referrals</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="javascript:void(0);" class="menu-link menu-toggle">
                    <div class="text-truncate" data-i18n="Settings">Settings</div>
                  </a>
                  <ul class="menu-sub">
                    <li class="menu-item">
                      <a href="app-ecommerce-settings-detail.go" class="menu-link">
                        <div class="text-truncate" data-i18n="Store Details">Store Details</div>
                      </a>
                    </li>
                    <li class="menu-item">
                      <a href="app-ecommerce-settings-payments.go" class="menu-link">
                        <div class="text-truncate" data-i18n="Payments">Payments</div>
                      </a>
                    </li>
                    <li class="menu-item">
                      <a href="app-ecommerce-settings-checkout.go" class="menu-link">
                        <div class="text-truncate" data-i18n="Checkout">Checkout</div>
                      </a>
                    </li>
                    <li class="menu-item">
                      <a href="app-ecommerce-settings-shipping.go" class="menu-link">
                        <div class="text-truncate" data-i18n="Shipping & Delivery">Shipping & Delivery</div>
                      </a>
                    </li>
                    <li class="menu-item">
                      <a href="app-ecommerce-settings-locations.go" class="menu-link">
                        <div class="text-truncate" data-i18n="Locations">Locations</div>
                      </a>
                    </li>
                    <li class="menu-item">
                      <a href="app-ecommerce-settings-notifications.go" class="menu-link">
                        <div class="text-truncate" data-i18n="Notifications">Notifications</div>
                      </a>
                    </li>
                  </ul>
                </li>
              </ul>
            </li>
            <!-- e-commerce-app menu end -->
            <!-- Academy menu start -->
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-book-open"></i>
                <div class="text-truncate" data-i18n="Academy">Academy</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="app-academy-dashboard.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Dashboard">Dashboard</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="app-academy-course.go" class="menu-link">
                    <div class="text-truncate" data-i18n="My Course">My Course</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="app-academy-course-details.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Course Details">Course Details</div>
                  </a>
                </li>
              </ul>
            </li>
            <!-- Academy menu end -->
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-car"></i>
                <div class="text-truncate" data-i18n="Logistics">Logistics</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="app-logistics-dashboard.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Dashboard">Dashboard</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="app-logistics-fleet.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Fleet">Fleet</div>
                  </a>
                </li>
              </ul>
            </li>
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-food-menu"></i>
                <div class="text-truncate" data-i18n="Invoice">Invoice</div>
                <span class="badge badge-center rounded-pill bg-success ms-auto">4</span>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="app-invoice-list.go" class="menu-link">
                    <div class="text-truncate" data-i18n="List">List</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="app-invoice-preview.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Preview">Preview</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="app-invoice-edit.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Edit">Edit</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="app-invoice-add.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Add">Add</div>
                  </a>
                </li>
              </ul>
            </li>
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-user"></i>
                <div class="text-truncate" data-i18n="Users">Users</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="app-user-list.go" class="menu-link">
                    <div class="text-truncate" data-i18n="List">List</div>
                  </a>
                </li>

                <li class="menu-item">
                  <a href="javascript:void(0);" class="menu-link menu-toggle">
                    <div class="text-truncate" data-i18n="View">View</div>
                  </a>
                  <ul class="menu-sub">
                    <li class="menu-item">
                      <a href="app-user-view-account.go" class="menu-link">
                        <div class="text-truncate" data-i18n="Account">Account</div>
                      </a>
                    </li>
                    <li class="menu-item">
                      <a href="app-user-view-security.go" class="menu-link">
                        <div class="text-truncate" data-i18n="Security">Security</div>
                      </a>
                    </li>
                    <li class="menu-item">
                      <a href="app-user-view-billing.go" class="menu-link">
                        <div class="text-truncate" data-i18n="Billing & Plans">Billing & Plans</div>
                      </a>
                    </li>
                    <li class="menu-item">
                      <a href="app-user-view-notifications.go" class="menu-link">
                        <div class="text-truncate" data-i18n="Notifications">Notifications</div>
                      </a>
                    </li>
                    <li class="menu-item">
                      <a href="app-user-view-connections.go" class="menu-link">
                        <div class="text-truncate" data-i18n="Connections">Connections</div>
                      </a>
                    </li>
                  </ul>
                </li>
              </ul>
            </li>
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-check-shield"></i>
                <div class="text-truncate" data-i18n="Roles & Permissions">Roles & Permissions</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="app-access-roles.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Roles">Roles</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="app-access-permission.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Permission">Permission</div>
                  </a>
                </li>
              </ul>
            </li>
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-dock-top"></i>
                <div class="text-truncate" data-i18n="Pages">Pages</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="javascript:void(0);" class="menu-link menu-toggle">
                    <div class="text-truncate" data-i18n="User Profile">User Profile</div>
                  </a>
                  <ul class="menu-sub">
                    <li class="menu-item">
                      <a href="pages-profile-user.go" class="menu-link">
                        <div class="text-truncate" data-i18n="Profile">Profile</div>
                      </a>
                    </li>
                    <li class="menu-item">
                      <a href="pages-profile-teams.go" class="menu-link">
                        <div class="text-truncate" data-i18n="Teams">Teams</div>
                      </a>
                    </li>
                    <li class="menu-item">
                      <a href="pages-profile-projects.go" class="menu-link">
                        <div class="text-truncate" data-i18n="Projects">Projects</div>
                      </a>
                    </li>
                    <li class="menu-item">
                      <a href="pages-profile-connections.go" class="menu-link">
                        <div class="text-truncate" data-i18n="Connections">Connections</div>
                      </a>
                    </li>
                  </ul>
                </li>
                <li class="menu-item">
                  <a href="javascript:void(0);" class="menu-link menu-toggle">
                    <div class="text-truncate" data-i18n="Account Settings">Account Settings</div>
                  </a>
                  <ul class="menu-sub">
                    <li class="menu-item">
                      <a href="pages-account-settings-account.go" class="menu-link">
                        <div class="text-truncate" data-i18n="Account">Account</div>
                      </a>
                    </li>
                    <li class="menu-item">
                      <a href="pages-account-settings-security.go" class="menu-link">
                        <div class="text-truncate" data-i18n="Security">Security</div>
                      </a>
                    </li>
                    <li class="menu-item">
                      <a href="pages-account-settings-billing.go" class="menu-link">
                        <div class="text-truncate" data-i18n="Billing & Plans">Billing & Plans</div>
                      </a>
                    </li>
                    <li class="menu-item">
                      <a href="pages-account-settings-notifications.go" class="menu-link">
                        <div class="text-truncate" data-i18n="Notifications">Notifications</div>
                      </a>
                    </li>
                    <li class="menu-item">
                      <a href="pages-account-settings-connections.go" class="menu-link">
                        <div class="text-truncate" data-i18n="Connections">Connections</div>
                      </a>
                    </li>
                  </ul>
                </li>
                <li class="menu-item">
                  <a href="pages-faq.go" class="menu-link">
                    <div class="text-truncate" data-i18n="FAQ">FAQ</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="pages-pricing.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Pricing">Pricing</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="javascript:void(0);" class="menu-link menu-toggle">
                    <div class="text-truncate" data-i18n="Misc">Misc</div>
                  </a>
                  <ul class="menu-sub">
                    <li class="menu-item">
                      <a href="pages-misc-error.go" class="menu-link" target="_blank">
                        <div class="text-truncate" data-i18n="Error">Error</div>
                      </a>
                    </li>
                    <li class="menu-item">
                      <a href="pages-misc-under-maintenance.go" class="menu-link" target="_blank">
                        <div class="text-truncate" data-i18n="Under Maintenance">Under Maintenance</div>
                      </a>
                    </li>
                    <li class="menu-item">
                      <a href="pages-misc-comingsoon.go" class="menu-link" target="_blank">
                        <div class="text-truncate" data-i18n="Coming Soon">Coming Soon</div>
                      </a>
                    </li>
                    <li class="menu-item">
                      <a href="pages-misc-not-authorized.go" class="menu-link" target="_blank">
                        <div class="text-truncate" data-i18n="Not Authorized">Not Authorized</div>
                      </a>
                    </li>
                  </ul>
                </li>
              </ul>
            </li>
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-lock-open-alt"></i>
                <div class="text-truncate" data-i18n="Authentications">Authentications</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="javascript:void(0);" class="menu-link menu-toggle">
                    <div class="text-truncate" data-i18n="Login">Login</div>
                  </a>
                  <ul class="menu-sub">
                    <li class="menu-item">
                      <a href="auth-login-basic.go" class="menu-link" target="_blank">
                        <div class="text-truncate" data-i18n="Basic">Basic</div>
                      </a>
                    </li>
                    <li class="menu-item">
                      <a href="auth-login-cover.go" class="menu-link" target="_blank">
                        <div class="text-truncate" data-i18n="Cover">Cover</div>
                      </a>
                    </li>
                  </ul>
                </li>
                <li class="menu-item">
                  <a href="javascript:void(0);" class="menu-link menu-toggle">
                    <div class="text-truncate" data-i18n="Register">Register</div>
                  </a>
                  <ul class="menu-sub">
                    <li class="menu-item">
                      <a href="auth-register-basic.go" class="menu-link" target="_blank">
                        <div class="text-truncate" data-i18n="Basic">Basic</div>
                      </a>
                    </li>
                    <li class="menu-item">
                      <a href="auth-register-cover.go" class="menu-link" target="_blank">
                        <div class="text-truncate" data-i18n="Cover">Cover</div>
                      </a>
                    </li>
                    <li class="menu-item">
                      <a href="auth-register-multisteps.go" class="menu-link" target="_blank">
                        <div class="text-truncate" data-i18n="Multi-steps">Multi-steps</div>
                      </a>
                    </li>
                  </ul>
                </li>
                <li class="menu-item">
                  <a href="javascript:void(0);" class="menu-link menu-toggle">
                    <div class="text-truncate" data-i18n="Verify Email">Verify Email</div>
                  </a>
                  <ul class="menu-sub">
                    <li class="menu-item">
                      <a href="auth-verify-email-basic.go" class="menu-link" target="_blank">
                        <div class="text-truncate" data-i18n="Basic">Basic</div>
                      </a>
                    </li>
                    <li class="menu-item">
                      <a href="auth-verify-email-cover.go" class="menu-link" target="_blank">
                        <div class="text-truncate" data-i18n="Cover">Cover</div>
                      </a>
                    </li>
                  </ul>
                </li>
                <li class="menu-item">
                  <a href="javascript:void(0);" class="menu-link menu-toggle">
                    <div class="text-truncate" data-i18n="Reset Password">Reset Password</div>
                  </a>
                  <ul class="menu-sub">
                    <li class="menu-item">
                      <a href="auth-reset-password-basic.go" class="menu-link" target="_blank">
                        <div class="text-truncate" data-i18n="Basic">Basic</div>
                      </a>
                    </li>
                    <li class="menu-item">
                      <a href="auth-reset-password-cover.go" class="menu-link" target="_blank">
                        <div class="text-truncate" data-i18n="Cover">Cover</div>
                      </a>
                    </li>
                  </ul>
                </li>
                <li class="menu-item">
                  <a href="javascript:void(0);" class="menu-link menu-toggle">
                    <div class="text-truncate" data-i18n="Forgot Password">Forgot Password</div>
                  </a>
                  <ul class="menu-sub">
                    <li class="menu-item">
                      <a href="auth-forgot-password-basic.go" class="menu-link" target="_blank">
                        <div class="text-truncate" data-i18n="Basic">Basic</div>
                      </a>
                    </li>
                    <li class="menu-item">
                      <a href="auth-forgot-password-cover.go" class="menu-link" target="_blank">
                        <div class="text-truncate" data-i18n="Cover">Cover</div>
                      </a>
                    </li>
                  </ul>
                </li>
                <li class="menu-item">
                  <a href="javascript:void(0);" class="menu-link menu-toggle">
                    <div class="text-truncate" data-i18n="Two Steps">Two Steps</div>
                  </a>
                  <ul class="menu-sub">
                    <li class="menu-item">
                      <a href="auth-two-steps-basic.go" class="menu-link" target="_blank">
                        <div class="text-truncate" data-i18n="Basic">Basic</div>
                      </a>
                    </li>
                    <li class="menu-item">
                      <a href="auth-two-steps-cover.go" class="menu-link" target="_blank">
                        <div class="text-truncate" data-i18n="Cover">Cover</div>
                      </a>
                    </li>
                  </ul>
                </li>
              </ul>
            </li>
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-spreadsheet"></i>
                <div class="text-truncate" data-i18n="Wizard Examples">Wizard Examples</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="wizard-ex-checkout.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Checkout">Checkout</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="wizard-ex-property-listing.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Property Listing">Property Listing</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="wizard-ex-create-deal.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Create Deal">Create Deal</div>
                  </a>
                </li>
              </ul>
            </li>
            <li class="menu-item">
              <a href="modal-examples.go" class="menu-link">
                <i class="menu-icon tf-icons bx bx-window-open"></i>
                <div class="text-truncate" data-i18n="Modal Examples">Modal Examples</div>
              </a>
            </li>

            <!-- Components -->
            <li class="menu-header small text-uppercase">
              <span class="menu-header-text" data-i18n="Components">Components</span>
            </li>
            <!-- Cards -->
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-collection"></i>
                <div class="text-truncate" data-i18n="Cards">Cards</div>
                <span class="badge badge-center rounded-pill bg-danger ms-auto">6</span>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="cards-basic.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Basic">Basic</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="cards-advance.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Advance">Advance</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="cards-statistics.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Statistics">Statistics</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="cards-analytics.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Analytics">Analytics</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="cards-gamifications.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Gamifications">Gamifications</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="cards-actions.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Actions">Actions</div>
                  </a>
                </li>
              </ul>
            </li>
            <!-- User interface -->
            <li class="menu-item">
              <a href="javascript:void(0)" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-box"></i>
                <div class="text-truncate" data-i18n="User interface">User interface</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="ui-accordion.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Accordion">Accordion</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="ui-alerts.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Alerts">Alerts</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="ui-badges.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Badges">Badges</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="ui-buttons.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Buttons">Buttons</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="ui-carousel.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Carousel">Carousel</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="ui-collapse.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Collapse">Collapse</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="ui-dropdowns.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Dropdowns">Dropdowns</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="ui-footer.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Footer">Footer</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="ui-list-groups.go" class="menu-link">
                    <div class="text-truncate" data-i18n="List Groups">List groups</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="ui-modals.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Modals">Modals</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="ui-navbar.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Navbar">Navbar</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="ui-offcanvas.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Offcanvas">Offcanvas</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="ui-pagination-breadcrumbs.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Pagination & Breadcrumbs">Pagination &amp; Breadcrumbs</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="ui-progress.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Progress">Progress</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="ui-spinners.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Spinners">Spinners</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="ui-tabs-pills.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Tabs & Pills">Tabs &amp; Pills</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="ui-toasts.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Toasts">Toasts</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="ui-tooltips-popovers.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Tooltips & Popovers">Tooltips &amp; Popovers</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="ui-typography.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Typography">Typography</div>
                  </a>
                </li>
              </ul>
            </li>

            <!-- Extended components -->
            <li class="menu-item">
              <a href="javascript:void(0)" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-copy"></i>
                <div class="text-truncate" data-i18n="Extended UI">Extended UI</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="extended-ui-avatar.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Avatar">Avatar</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="extended-ui-blockui.go" class="menu-link">
                    <div class="text-truncate" data-i18n="BlockUI">BlockUI</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="extended-ui-drag-and-drop.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Drag & Drop">Drag &amp; Drop</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="extended-ui-media-player.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Media Player">Media Player</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="extended-ui-perfect-scrollbar.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Perfect Scrollbar">Perfect Scrollbar</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="extended-ui-star-ratings.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Star Ratings">Star Ratings</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="extended-ui-sweetalert2.go" class="menu-link">
                    <div class="text-truncate" data-i18n="SweetAlert2">SweetAlert2</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="extended-ui-text-divider.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Text Divider">Text Divider</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="javascript:void(0);" class="menu-link menu-toggle">
                    <div class="text-truncate" data-i18n="Timeline">Timeline</div>
                  </a>
                  <ul class="menu-sub">
                    <li class="menu-item">
                      <a href="extended-ui-timeline-basic.go" class="menu-link">
                        <div class="text-truncate" data-i18n="Basic">Basic</div>
                      </a>
                    </li>
                    <li class="menu-item">
                      <a href="extended-ui-timeline-fullscreen.go" class="menu-link">
                        <div class="text-truncate" data-i18n="Fullscreen">Fullscreen</div>
                      </a>
                    </li>
                  </ul>
                </li>
                <li class="menu-item">
                  <a href="extended-ui-tour.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Tour">Tour</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="extended-ui-treeview.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Treeview">Treeview</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="extended-ui-misc.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Miscellaneous">Miscellaneous</div>
                  </a>
                </li>
              </ul>
            </li>

            <!-- Icons -->
            <li class="menu-item">
              <a href="javascript:void(0)" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-crown"></i>
                <div class="text-truncate" data-i18n="Icons">Icons</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="icons-boxicons.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Boxicons">Boxicons</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="icons-font-awesome.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Fontawesome">Fontawesome</div>
                  </a>
                </li>
              </ul>
            </li>

            <!-- Forms & Tables -->
            <li class="menu-header small text-uppercase">
              <span class="menu-header-text" data-i18n="Forms & Tables">Forms &amp; Tables</span>
            </li>
            <!-- Forms -->
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-detail"></i>
                <div class="text-truncate" data-i18n="Form Elements">Form Elements</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="forms-basic-inputs.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Basic Inputs">Basic Inputs</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="forms-input-groups.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Input groups">Input groups</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="forms-custom-options.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Custom Options">Custom Options</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="forms-editors.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Editors">Editors</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="forms-file-upload.go" class="menu-link">
                    <div class="text-truncate" data-i18n="File Upload">File Upload</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="forms-pickers.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Pickers">Pickers</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="forms-selects.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Select & Tags">Select &amp; Tags</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="forms-sliders.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Sliders">Sliders</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="forms-switches.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Switches">Switches</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="forms-extras.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Extras">Extras</div>
                  </a>
                </li>
              </ul>
            </li>
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-detail"></i>
                <div class="text-truncate" data-i18n="Form Layouts">Form Layouts</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="form-layouts-vertical.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Vertical Form">Vertical Form</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="form-layouts-horizontal.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Horizontal Form">Horizontal Form</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="form-layouts-sticky.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Sticky Actions">Sticky Actions</div>
                  </a>
                </li>
              </ul>
            </li>
            <li class="menu-item active open">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-carousel"></i>
                <div class="text-truncate" data-i18n="Form Wizard">Form Wizard</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item active">
                  <a href="form-wizard-numbered.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Numbered">Numbered</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="form-wizard-icons.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Icons">Icons</div>
                  </a>
                </li>
              </ul>
            </li>
            <li class="menu-item">
              <a href="form-validation.go" class="menu-link">
                <i class="menu-icon tf-icons bx bx-list-check"></i>
                <div class="text-truncate" data-i18n="Form Validation">Form Validation</div>
              </a>
            </li>
            <!-- Tables -->
            <li class="menu-item">
              <a href="tables-basic.go" class="menu-link">
                <i class="menu-icon tf-icons bx bx-table"></i>
                <div class="text-truncate" data-i18n="Tables">Tables</div>
              </a>
            </li>
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-grid"></i>
                <div class="text-truncate" data-i18n="Datatables">Datatables</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="tables-datatables-basic.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Basic">Basic</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="tables-datatables-advanced.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Advanced">Advanced</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="tables-datatables-extensions.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Extensions">Extensions</div>
                  </a>
                </li>
              </ul>
            </li>

            <!-- Charts & Maps -->
            <li class="menu-header small text-uppercase">
              <span class="menu-header-text" data-i18n="Charts & Maps">Charts &amp; Maps</span>
            </li>
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-chart"></i>
                <div class="text-truncate" data-i18n="Charts">Charts</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="charts-apex.go" class="menu-link">
                    <div class="text-truncate" data-i18n="Apex Charts">Apex Charts</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="charts-chartjs.go" class="menu-link">
                    <div class="text-truncate" data-i18n="ChartJS">ChartJS</div>
                  </a>
                </li>
              </ul>
            </li>
            <li class="menu-item">
              <a href="maps-leaflet.go" class="menu-link">
                <i class="menu-icon tf-icons bx bx-map-alt"></i>
                <div class="text-truncate" data-i18n="Leaflet Maps">Leaflet Maps</div>
              </a>
            </li>

            <!-- Misc -->
            <li class="menu-header small text-uppercase">
              <span class="menu-header-text" data-i18n="Misc">Misc</span>
            </li>
            <li class="menu-item">
              <a href="https://themeselection.com/support/" target="_blank" class="menu-link">
                <i class="menu-icon tf-icons bx bx-support"></i>
                <div class="text-truncate" data-i18n="Support">Support</div>
              </a>
            </li>
            <li class="menu-item">
              <a
                href="https://demos.themeselection.com/sneat-bootstrap-html-admin-template/documentation/"
                target="_blank"
                class="menu-link">
                <i class="menu-icon tf-icons bx bx-file"></i>
                <div class="text-truncate" data-i18n="Documentation">Documentation</div>
              </a>
            </li>
          </ul>
        </aside>
        <!-- / Menu -->

        <!-- Layout container -->
        <div class="layout-page">
          <!-- Navbar -->

          <nav
            class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme"
            id="layout-navbar">
            <div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
              <a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)">
                <i class="bx bx-menu bx-sm"></i>
              </a>
            </div>

            <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">
              <!-- Search -->
              <div class="navbar-nav align-items-center">
                <div class="nav-item navbar-search-wrapper mb-0">
                  <a class="nav-item nav-link search-toggler px-0" href="javascript:void(0);">
                    <i class="bx bx-search bx-sm"></i>
                    <span class="d-none d-md-inline-block text-muted">Search (Ctrl+/)</span>
                  </a>
                </div>
              </div>
              <!-- /Search -->

              <ul class="navbar-nav flex-row align-items-center ms-auto">
                <!-- Language -->
                <li class="nav-item dropdown-language dropdown me-2 me-xl-0">
                  <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
                    <i class="bx bx-globe bx-sm"></i>
                  </a>
                  <ul class="dropdown-menu dropdown-menu-end">
                    <li>
                      <a class="dropdown-item" href="javascript:void(0);" data-language="en" data-text-direction="ltr">
                        <span class="align-middle">English</span>
                      </a>
                    </li>
                    <li>
                      <a class="dropdown-item" href="javascript:void(0);" data-language="fr" data-text-direction="ltr">
                        <span class="align-middle">French</span>
                      </a>
                    </li>
                    <li>
                      <a class="dropdown-item" href="javascript:void(0);" data-language="ar" data-text-direction="rtl">
                        <span class="align-middle">Arabic</span>
                      </a>
                    </li>
                    <li>
                      <a class="dropdown-item" href="javascript:void(0);" data-language="de" data-text-direction="ltr">
                        <span class="align-middle">German</span>
                      </a>
                    </li>
                  </ul>
                </li>
                <!-- /Language -->

                <!-- Quick links  -->
                <li class="nav-item dropdown-shortcuts navbar-dropdown dropdown me-2 me-xl-0">
                  <a
                    class="nav-link dropdown-toggle hide-arrow"
                    href="javascript:void(0);"
                    data-bs-toggle="dropdown"
                    data-bs-auto-close="outside"
                    aria-expanded="false">
                    <i class="bx bx-grid-alt bx-sm"></i>
                  </a>
                  <div class="dropdown-menu dropdown-menu-end py-0">
                    <div class="dropdown-menu-header border-bottom">
                      <div class="dropdown-header d-flex align-items-center py-3">
                        <h5 class="text-body mb-0 me-auto">Shortcuts</h5>
                        <a
                          href="javascript:void(0)"
                          class="dropdown-shortcuts-add text-body"
                          data-bs-toggle="tooltip"
                          data-bs-placement="top"
                          title="Add shortcuts"
                          ><i class="bx bx-sm bx-plus-circle"></i
                        ></a>
                      </div>
                    </div>
                    <div class="dropdown-shortcuts-list scrollable-container">
                      <div class="row row-bordered overflow-visible g-0">
                        <div class="dropdown-shortcuts-item col">
                          <span class="dropdown-shortcuts-icon bg-label-secondary rounded-circle mb-2">
                            <i class="bx bx-calendar fs-4"></i>
                          </span>
                          <a href="app-calendar.go" class="stretched-link">Calendar</a>
                          <small class="text-muted mb-0">Appointments</small>
                        </div>
                        <div class="dropdown-shortcuts-item col">
                          <span class="dropdown-shortcuts-icon bg-label-secondary rounded-circle mb-2">
                            <i class="bx bx-food-menu fs-4"></i>
                          </span>
                          <a href="app-invoice-list.go" class="stretched-link">Invoice App</a>
                          <small class="text-muted mb-0">Manage Accounts</small>
                        </div>
                      </div>
                      <div class="row row-bordered overflow-visible g-0">
                        <div class="dropdown-shortcuts-item col">
                          <span class="dropdown-shortcuts-icon bg-label-secondary rounded-circle mb-2">
                            <i class="bx bx-user fs-4"></i>
                          </span>
                          <a href="app-user-list.go" class="stretched-link">User App</a>
                          <small class="text-muted mb-0">Manage Users</small>
                        </div>
                        <div class="dropdown-shortcuts-item col">
                          <span class="dropdown-shortcuts-icon bg-label-secondary rounded-circle mb-2">
                            <i class="bx bx-check-shield fs-4"></i>
                          </span>
                          <a href="app-access-roles.go" class="stretched-link">Role Management</a>
                          <small class="text-muted mb-0">Permission</small>
                        </div>
                      </div>
                      <div class="row row-bordered overflow-visible g-0">
                        <div class="dropdown-shortcuts-item col">
                          <span class="dropdown-shortcuts-icon bg-label-secondary rounded-circle mb-2">
                            <i class="bx bx-pie-chart-alt-2 fs-4"></i>
                          </span>
                          <a href="index.go" class="stretched-link">Dashboard</a>
                          <small class="text-muted mb-0">User Profile</small>
                        </div>
                        <div class="dropdown-shortcuts-item col">
                          <span class="dropdown-shortcuts-icon bg-label-secondary rounded-circle mb-2">
                            <i class="bx bx-cog fs-4"></i>
                          </span>
                          <a href="pages-account-settings-account.go" class="stretched-link">Setting</a>
                          <small class="text-muted mb-0">Account Settings</small>
                        </div>
                      </div>
                      <div class="row row-bordered overflow-visible g-0">
                        <div class="dropdown-shortcuts-item col">
                          <span class="dropdown-shortcuts-icon bg-label-secondary rounded-circle mb-2">
                            <i class="bx bx-help-circle fs-4"></i>
                          </span>
                          <a href="pages-faq.go" class="stretched-link">FAQs</a>
                          <small class="text-muted mb-0">FAQs & Articles</small>
                        </div>
                        <div class="dropdown-shortcuts-item col">
                          <span class="dropdown-shortcuts-icon bg-label-secondary rounded-circle mb-2">
                            <i class="bx bx-window-open fs-4"></i>
                          </span>
                          <a href="modal-examples.go" class="stretched-link">Modals</a>
                          <small class="text-muted mb-0">Useful Popups</small>
                        </div>
                      </div>
                    </div>
                  </div>
                </li>
                <!-- Quick links -->

                <!-- Style Switcher -->
                <li class="nav-item dropdown-style-switcher dropdown me-2 me-xl-0">
                  <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
                    <i class="bx bx-sm"></i>
                  </a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-styles">
                    <li>
                      <a class="dropdown-item" href="javascript:void(0);" data-theme="light">
                        <span class="align-middle"><i class="bx bx-sun me-2"></i>Light</span>
                      </a>
                    </li>
                    <li>
                      <a class="dropdown-item" href="javascript:void(0);" data-theme="dark">
                        <span class="align-middle"><i class="bx bx-moon me-2"></i>Dark</span>
                      </a>
                    </li>
                    <li>
                      <a class="dropdown-item" href="javascript:void(0);" data-theme="system">
                        <span class="align-middle"><i class="bx bx-desktop me-2"></i>System</span>
                      </a>
                    </li>
                  </ul>
                </li>
                <!-- / Style Switcher-->

                <!-- Notification -->
                <li class="nav-item dropdown-notifications navbar-dropdown dropdown me-3 me-xl-1">
                  <a
                    class="nav-link dropdown-toggle hide-arrow"
                    href="javascript:void(0);"
                    data-bs-toggle="dropdown"
                    data-bs-auto-close="outside"
                    aria-expanded="false">
                    <i class="bx bx-bell bx-sm"></i>
                    <span class="badge bg-danger rounded-pill badge-notifications">5</span>
                  </a>
                  <ul class="dropdown-menu dropdown-menu-end py-0">
                    <li class="dropdown-menu-header border-bottom">
                      <div class="dropdown-header d-flex align-items-center py-3">
                        <h5 class="text-body mb-0 me-auto">Notification</h5>
                        <a
                          href="javascript:void(0)"
                          class="dropdown-notifications-all text-body"
                          data-bs-toggle="tooltip"
                          data-bs-placement="top"
                          title="Mark all as read"
                          ><i class="bx fs-4 bx-envelope-open"></i
                        ></a>
                      </div>
                    </li>
                    <li class="dropdown-notifications-list scrollable-container">
                      <ul class="list-group list-group-flush">
                        <li class="list-group-item list-group-item-action dropdown-notifications-item">
                          <div class="d-flex">
                            <div class="flex-shrink-0 me-3">
                              <div class="avatar">
                                <img src="../../assets/img/avatars/1.png" alt class="w-px-40 h-auto rounded-circle" />
                              </div>
                            </div>
                            <div class="flex-grow-1">
                              <h6 class="mb-1">Congratulation Lettie ð</h6>
                              <p class="mb-0">Won the monthly best seller gold badge</p>
                              <small class="text-muted">1h ago</small>
                            </div>
                            <div class="flex-shrink-0 dropdown-notifications-actions">
                              <a href="javascript:void(0)" class="dropdown-notifications-read"
                                ><span class="badge badge-dot"></span
                              ></a>
                              <a href="javascript:void(0)" class="dropdown-notifications-archive"
                                ><span class="bx bx-x"></span
                              ></a>
                            </div>
                          </div>
                        </li>
                        <li class="list-group-item list-group-item-action dropdown-notifications-item">
                          <div class="d-flex">
                            <div class="flex-shrink-0 me-3">
                              <div class="avatar">
                                <span class="avatar-initial rounded-circle bg-label-danger">CF</span>
                              </div>
                            </div>
                            <div class="flex-grow-1">
                              <h6 class="mb-1">Charles Franklin</h6>
                              <p class="mb-0">Accepted your connection</p>
                              <small class="text-muted">12hr ago</small>
                            </div>
                            <div class="flex-shrink-0 dropdown-notifications-actions">
                              <a href="javascript:void(0)" class="dropdown-notifications-read"
                                ><span class="badge badge-dot"></span
                              ></a>
                              <a href="javascript:void(0)" class="dropdown-notifications-archive"
                                ><span class="bx bx-x"></span
                              ></a>
                            </div>
                          </div>
                        </li>
                        <li class="list-group-item list-group-item-action dropdown-notifications-item marked-as-read">
                          <div class="d-flex">
                            <div class="flex-shrink-0 me-3">
                              <div class="avatar">
                                <img src="../../assets/img/avatars/2.png" alt class="w-px-40 h-auto rounded-circle" />
                              </div>
                            </div>
                            <div class="flex-grow-1">
                              <h6 class="mb-1">New Message âï¸</h6>
                              <p class="mb-0">You have new message from Natalie</p>
                              <small class="text-muted">1h ago</small>
                            </div>
                            <div class="flex-shrink-0 dropdown-notifications-actions">
                              <a href="javascript:void(0)" class="dropdown-notifications-read"
                                ><span class="badge badge-dot"></span
                              ></a>
                              <a href="javascript:void(0)" class="dropdown-notifications-archive"
                                ><span class="bx bx-x"></span
                              ></a>
                            </div>
                          </div>
                        </li>
                        <li class="list-group-item list-group-item-action dropdown-notifications-item">
                          <div class="d-flex">
                            <div class="flex-shrink-0 me-3">
                              <div class="avatar">
                                <span class="avatar-initial rounded-circle bg-label-success"
                                  ><i class="bx bx-cart"></i
                                ></span>
                              </div>
                            </div>
                            <div class="flex-grow-1">
                              <h6 class="mb-1">Whoo! You have new order ð</h6>
                              <p class="mb-0">ACME Inc. made new order $1,154</p>
                              <small class="text-muted">1 day ago</small>
                            </div>
                            <div class="flex-shrink-0 dropdown-notifications-actions">
                              <a href="javascript:void(0)" class="dropdown-notifications-read"
                                ><span class="badge badge-dot"></span
                              ></a>
                              <a href="javascript:void(0)" class="dropdown-notifications-archive"
                                ><span class="bx bx-x"></span
                              ></a>
                            </div>
                          </div>
                        </li>
                        <li class="list-group-item list-group-item-action dropdown-notifications-item marked-as-read">
                          <div class="d-flex">
                            <div class="flex-shrink-0 me-3">
                              <div class="avatar">
                                <img src="../../assets/img/avatars/9.png" alt class="w-px-40 h-auto rounded-circle" />
                              </div>
                            </div>
                            <div class="flex-grow-1">
                              <h6 class="mb-1">Application has been approved ð</h6>
                              <p class="mb-0">Your ABC project application has been approved.</p>
                              <small class="text-muted">2 days ago</small>
                            </div>
                            <div class="flex-shrink-0 dropdown-notifications-actions">
                              <a href="javascript:void(0)" class="dropdown-notifications-read"
                                ><span class="badge badge-dot"></span
                              ></a>
                              <a href="javascript:void(0)" class="dropdown-notifications-archive"
                                ><span class="bx bx-x"></span
                              ></a>
                            </div>
                          </div>
                        </li>
                        <li class="list-group-item list-group-item-action dropdown-notifications-item marked-as-read">
                          <div class="d-flex">
                            <div class="flex-shrink-0 me-3">
                              <div class="avatar">
                                <span class="avatar-initial rounded-circle bg-label-success"
                                  ><i class="bx bx-pie-chart-alt"></i
                                ></span>
                              </div>
                            </div>
                            <div class="flex-grow-1">
                              <h6 class="mb-1">Monthly report is generated</h6>
                              <p class="mb-0">July monthly financial report is generated</p>
                              <small class="text-muted">3 days ago</small>
                            </div>
                            <div class="flex-shrink-0 dropdown-notifications-actions">
                              <a href="javascript:void(0)" class="dropdown-notifications-read"
                                ><span class="badge badge-dot"></span
                              ></a>
                              <a href="javascript:void(0)" class="dropdown-notifications-archive"
                                ><span class="bx bx-x"></span
                              ></a>
                            </div>
                          </div>
                        </li>
                        <li class="list-group-item list-group-item-action dropdown-notifications-item marked-as-read">
                          <div class="d-flex">
                            <div class="flex-shrink-0 me-3">
                              <div class="avatar">
                                <img src="../../assets/img/avatars/5.png" alt class="w-px-40 h-auto rounded-circle" />
                              </div>
                            </div>
                            <div class="flex-grow-1">
                              <h6 class="mb-1">Send connection request</h6>
                              <p class="mb-0">Peter sent you connection request</p>
                              <small class="text-muted">4 days ago</small>
                            </div>
                            <div class="flex-shrink-0 dropdown-notifications-actions">
                              <a href="javascript:void(0)" class="dropdown-notifications-read"
                                ><span class="badge badge-dot"></span
                              ></a>
                              <a href="javascript:void(0)" class="dropdown-notifications-archive"
                                ><span class="bx bx-x"></span
                              ></a>
                            </div>
                          </div>
                        </li>
                        <li class="list-group-item list-group-item-action dropdown-notifications-item">
                          <div class="d-flex">
                            <div class="flex-shrink-0 me-3">
                              <div class="avatar">
                                <img src="../../assets/img/avatars/6.png" alt class="w-px-40 h-auto rounded-circle" />
                              </div>
                            </div>
                            <div class="flex-grow-1">
                              <h6 class="mb-1">New message from Jane</h6>
                              <p class="mb-0">Your have new message from Jane</p>
                              <small class="text-muted">5 days ago</small>
                            </div>
                            <div class="flex-shrink-0 dropdown-notifications-actions">
                              <a href="javascript:void(0)" class="dropdown-notifications-read"
                                ><span class="badge badge-dot"></span
                              ></a>
                              <a href="javascript:void(0)" class="dropdown-notifications-archive"
                                ><span class="bx bx-x"></span
                              ></a>
                            </div>
                          </div>
                        </li>
                        <li class="list-group-item list-group-item-action dropdown-notifications-item marked-as-read">
                          <div class="d-flex">
                            <div class="flex-shrink-0 me-3">
                              <div class="avatar">
                                <span class="avatar-initial rounded-circle bg-label-warning"
                                  ><i class="bx bx-error"></i
                                ></span>
                              </div>
                            </div>
                            <div class="flex-grow-1">
                              <h6 class="mb-1">CPU is running high</h6>
                              <p class="mb-0">CPU Utilization Percent is currently at 88.63%,</p>
                              <small class="text-muted">5 days ago</small>
                            </div>
                            <div class="flex-shrink-0 dropdown-notifications-actions">
                              <a href="javascript:void(0)" class="dropdown-notifications-read"
                                ><span class="badge badge-dot"></span
                              ></a>
                              <a href="javascript:void(0)" class="dropdown-notifications-archive"
                                ><span class="bx bx-x"></span
                              ></a>
                            </div>
                          </div>
                        </li>
                      </ul>
                    </li>
                    <li class="dropdown-menu-footer border-top p-3">
                      <button class="btn btn-primary text-uppercase w-100">view all notifications</button>
                    </li>
                  </ul>
                </li>
                <!--/ Notification -->
                <!-- User -->
                <li class="nav-item navbar-dropdown dropdown-user dropdown">
                  <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
                    <div class="avatar avatar-online">
                      <img src="../../assets/img/avatars/1.png" alt class="w-px-40 h-auto rounded-circle" />
                    </div>
                  </a>
                  <ul class="dropdown-menu dropdown-menu-end">
                    <li>
                      <a class="dropdown-item" href="pages-account-settings-account.go">
                        <div class="d-flex">
                          <div class="flex-shrink-0 me-3">
                            <div class="avatar avatar-online">
                              <img src="../../assets/img/avatars/1.png" alt class="w-px-40 h-auto rounded-circle" />
                            </div>
                          </div>
                          <div class="flex-grow-1">
                            <span class="fw-medium d-block">John Doe</span>
                            <small class="text-muted">Admin</small>
                          </div>
                        </div>
                      </a>
                    </li>
                    <li>
                      <div class="dropdown-divider"></div>
                    </li>
                    <li>
                      <a class="dropdown-item" href="pages-profile-user.go">
                        <i class="bx bx-user me-2"></i>
                        <span class="align-middle">My Profile</span>
                      </a>
                    </li>
                    <li>
                      <a class="dropdown-item" href="pages-account-settings-account.go">
                        <i class="bx bx-cog me-2"></i>
                        <span class="align-middle">Settings</span>
                      </a>
                    </li>
                    <li>
                      <a class="dropdown-item" href="pages-account-settings-billing.go">
                        <span class="d-flex align-items-center align-middle">
                          <i class="flex-shrink-0 bx bx-credit-card me-2"></i>
                          <span class="flex-grow-1 align-middle">Billing</span>
                          <span class="flex-shrink-0 badge badge-center rounded-pill bg-danger w-px-20 h-px-20">4</span>
                        </span>
                      </a>
                    </li>
                    <li>
                      <div class="dropdown-divider"></div>
                    </li>
                    <li>
                      <a class="dropdown-item" href="pages-faq.go">
                        <i class="bx bx-help-circle me-2"></i>
                        <span class="align-middle">FAQ</span>
                      </a>
                    </li>
                    <li>
                      <a class="dropdown-item" href="pages-pricing.go">
                        <i class="bx bx-dollar me-2"></i>
                        <span class="align-middle">Pricing</span>
                      </a>
                    </li>
                    <li>
                      <div class="dropdown-divider"></div>
                    </li>
                    <li>
                      <a class="dropdown-item" href="auth-login-cover.go" target="_blank">
                        <i class="bx bx-power-off me-2"></i>
                        <span class="align-middle">Log Out</span>
                      </a>
                    </li>
                  </ul>
                </li>
                <!--/ User -->
              </ul>
            </div>

            <!-- Search Small Screens -->
            <div class="navbar-search-wrapper search-input-wrapper d-none">
              <input
                type="text"
                class="form-control search-input container-xxl border-0"
                placeholder="Search..."
                aria-label="Search..." />
              <i class="bx bx-x bx-sm search-toggler cursor-pointer"></i>
            </div>
          </nav>

          <!-- / Navbar -->

          <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
              <h4 class="py-3 mb-4">크리에이터 등록</h4>

              <!-- Default -->
              <div class="row">

                <!-- Default Wizard -->
                <div class="col-12 mb-4">
                  <div class="bs-stepper wizard-numbered mt-2">
                    <div class="bs-stepper-header">
                      <div class="step" data-target="#account-details">
                        <button type="button" class="step-trigger">
                          <span class="bs-stepper-circle">1</span>
                          <span class="bs-stepper-label mt-1">
                            <span class="bs-stepper-title">기본정보</span>
                            <span class="bs-stepper-subtitle">인적사항을 입력합니다</span>
                          </span>
                        </button>
                      </div>
                      <div class="line">
                        <i class="bx bx-chevron-right"></i>
                      </div>
                      <div class="step" data-target="#personal-info">
                        <button type="button" class="step-trigger">
                          <span class="bs-stepper-circle">2</span>
                          <span class="bs-stepper-label mt-1">
                            <span class="bs-stepper-title">채널 및 SNS 정보</span>
                            <span class="bs-stepper-subtitle">유튜브 채널 및 SNS 정보를 입력합니다</span>
                          </span>
                        </button>
                      </div>
                      <div class="line">
                        <i class="bx bx-chevron-right"></i>
                      </div>
                      <div class="step" data-target="#social-links">
                        <button type="button" class="step-trigger">
                          <span class="bs-stepper-circle">3</span>
                          <span class="bs-stepper-label mt-1">
                            <span class="bs-stepper-title">부가정보</span>
                            <span class="bs-stepper-subtitle">이력과 특이사항 정보를 입력합니다</span>
                          </span>
                        </button>
                      </div>
                    </div>
                    <div class="bs-stepper-content">
                      <form onSubmit="return false">
                        <!-- Account Details -->
                        <div id="account-details" class="content">
                          <div class="row g-3">
                    
                  <div class="col-sm-4">
                    <h5 class="card-header">Basic</h5>
                    <div class="card-body">
						<form action="/upload" class="dropzone needsclick" id="dropphoto">
						  <div class="dz-message needsclick">
						    Drop files here or click to upload
						    <span class="note needsclick">(This is just a demo dropzone. Selected files are <span class="fw-medium">not</span> actually uploaded.)</span>
						  </div>
						  <div class="fallback">
						    <input name="file" type="file" />
						  </div>
						</form>
                    </div>
                    <div>
                       	<label class="form-label">성별</label>
                           <div style="display: flex; gap: 20px;">
                            	<div class="form-check custom mb-2">
                           			<input
	                                type="radio"
	                                id="formValidationGender"
	                                name="formValidationGender"
	                                class="form-check-input"
	                                checked />
                            		<label class="form-check-label" for="formValidationGender">남자</label>
                            	 </div>
                           		 <div class="form-check custom">
	                            	<input
	                              	type="radio"
	                              	id="formValidationGender2"
	                              	name="formValidationGender"
	                              	class="form-check-input" />
	                            	<label class="form-check-label" for="formValidationGender2">여자</label>
                            	</div>
                            </div>
                       </div>
                  </div>
                  <div class="col-sm-4">
                            <div>
                              <label class="form-label" for="username">이름</label>
                              <input type="text" id="username" class="form-control" placeholder="실명 또는 활동명" />
                            </div>
                            <div>
                              <label class="form-label" for="email">이메일</label>
 							  <input type="text" id="email" class="form-control"/>
                            </div>
							<div>
                            	<label class="form-label" for="formValidationDob">생년월일</label>
	                       		<input
	                            	type="text"
	                            	class="form-control flatpickr-validation"
	                            	name="formValidationDob"
	                            	id="formValidationDob"
	                            	placeholder="YYYY-MM-DD"
	                            	required />
                      		</div>
                      		<div>
                              <label class="form-label" for="phone">주소</label>
 							  <input type="text" id="phone" class="form-control"/>
                            </div>
                            <div>
                              <label class="form-label" for="phone">상세주소</label>
 							  <input type="text" id="phone" class="form-control"/>
                            </div>
                      	</div>
                      	<div class="col-sm-4">
                      	    <div>
                              <label class="form-label" for="nickname">활동명</label>
                              <input type="text" id="nickname" class="form-control" placeholder="활동명" />
                            </div>
                            <div>
                              <label class="form-label" for="phone">연락처</label>
 							  <input type="text" id="phone" class="form-control"/>
                            </div>
                      		<div>
                         		<label class="form-label" for="formValidationSelect2">국적</label>
	                          	<select
		                            id="formValidationSelect2"
		                            name="formValidationSelect2"
		                            class="form-select select2"
		                            data-allow-clear="true">
		                            <option value="">국적 선택</option>
		                            <option value="Australia">Australia</option>
		                            <option value="Bangladesh">Bangladesh</option>
		                            <option value="Belarus">Belarus</option>
		                            <option value="Brazil">Brazil</option>
		                            <option value="Canada">Canada</option>
		                            <option value="China">China</option>
		                            <option value="France">France</option>
		                            <option value="Germany">Germany</option>
		                            <option value="India">India</option>
		                            <option value="Indonesia">Indonesia</option>
		                            <option value="Israel">Israel</option>
		                            <option value="Italy">Italy</option>
		                            <option value="Japan">Japan</option>
		                            <option value="Korea">Korea, Republic of</option>
		                            <option value="Mexico">Mexico</option>
		                            <option value="Philippines">Philippines</option>
		                            <option value="Russia">Russian Federation</option>
		                            <option value="South Africa">South Africa</option>
		                            <option value="Thailand">Thailand</option>
		                            <option value="Turkey">Turkey</option>
		                            <option value="Ukraine">Ukraine</option>
		                            <option value="United Arab Emirates">United Arab Emirates</option>
		                            <option value="United Kingdom">United Kingdom</option>
		                            <option value="United States">United States</option>
	                        	</select>
                      		</div>
                      		
                            <div>
                            	<label class="form-label" for="formValidationDob">계약시작일</label>
	                       		<input
	                            	type="text"
	                            	class="form-control flatpickr-validation"
	                            	name="formValidationDob"
	                            	id="startcontract"
	                            	placeholder="YYYY-MM-DD"
	                            	required />
                      		</div>

                      		<div>
                            	<label class="form-label" for="formValidationDob">계약만료일</label>
	                       		<input
	                            	type="text"
	                            	class="form-control flatpickr-validation"
	                            	name="formValidationDob"
	                            	id="endcontract"
	                            	placeholder="YYYY-MM-DD"
	                            	required />
                      		</div>
                            </div>

                            <div class="col-12 d-flex justify-content-between">
                              <button class="btn btn-label-secondary btn-prev" disabled>
                                <i class="bx bx-chevron-left bx-sm ms-sm-n2"></i>
                                <span class="align-middle d-sm-inline-block d-none">이전</span>
                              </button>
                              <button class="btn btn-primary btn-next">
                                <span class="align-middle d-sm-inline-block d-none me-sm-1">다음</span>
                                <i class="bx bx-chevron-right bx-sm me-sm-n2"></i>
                              </button>
                            </div>
                          </div>
                        </div>
                        <!-- Personal Info --> <!-- 두번째 -->
                        <div id="personal-info" class="content">
                          <div class="row g-3">
                          
                       <div class="col-6">
                          <div style="display: flex; justify-content: space-between; align-items: center;">
                          	<span>유튜브 링크 (대표채널을 선택해 주세요)</span>
                            <button type="button" class="btn btn-sm rounded-pill btn-icon btn-outline-primary mb-1">
                            <span class="tf-icons bx bx-plus"></span>
                          </button>                    	
                          </div>
                        <div class="mb-5" data-repeater-list="group-a">
                        <!-- 채널명, 가입일, 카테고리, 채널링크 div-->
                          <div class="repeater-wrapper pt-0 pt-md-4" data-repeater-item>
                            <div class="d-flex position-relative pe-0">
				            <div style="width:30px;" class="d-flex position-relative pe-0 align-items-center justify-content-center">
				                <!-- 여기에 라디오 버튼 추가 -->
				                <label class="form-check-label">
				                    <input type="radio" name="radioGroup" class="form-check-input" />
				                </label>
				            </div>
                              <div class="row w-100">
                                
                          	 	<div>
                          		    <input type="text" id="snslink" class="form-control" placeholder="채널명" />
                           		</div>
                                <div class="col-sm-3">
	                       		<input
	                            	type="text"
	                            	class="form-control flatpickr-validation"
	                            	name="formValidationDob"
	                            	id="startch"
	                            	placeholder="채널가입일"
	                            	required />
                      			</div>
                                
		                        <div class="col-sm-9" style="padding-left:0px">
		                          <input
		                            id="TagifyCustomInlineSuggestion"
		                            name="TagifyCustomInlineSuggestion"
		                            class="form-control"
		                            placeholder="select technologies"
		                            value="css, html, javascript" />
		                        </div>
		                        
		                        <div>
                          		    <input type="text" id="snslink" class="form-control" placeholder="채널 링크를 입력하세요" />
                           		</div>


                              </div>
						  <button type="button" class="btn btn-sm rounded-pill btn-icon btn-outline-primary mb-1">
							   <span class="tf-icons bx bx-minus"></span>
                          </button>
                            </div>
                          </div>
                          
                          <!-- 위에꺼랑 같은거 -->
                          <div class="repeater-wrapper pt-0 pt-md-4" data-repeater-item="">
                            <div class="d-flex position-relative pe-0">
				            <div style="width:30px;" class="d-flex position-relative pe-0 align-items-center justify-content-center">
				                <!-- 여기에 라디오 버튼 추가 -->
				                <label class="form-check-label">
				                    <input type="radio" name="radioGroup" class="form-check-input">
				                </label>
				            </div>
                              <div class="row w-100">
                                
                          	 	<div>
                          		    <input type="text" id="snslink" class="form-control" placeholder="채널명">
                           		</div>
                                <div class="col-sm-3">
	                       		<input type="text" class="form-control flatpickr-validation flatpickr-input" name="formValidationDob" id="startch1" placeholder="채널가입일" required="" readonly="readonly">
                      			</div>
                                
		                        <div class="col-sm-9" style="padding-left:0px">
		                          <input id="TagifyCustomInlineSuggestion" name="TagifyCustomInlineSuggestion" class="form-control" placeholder="select technologies" value="css, html, javascript">
		                        </div>
		                        
		                        <div>
                          		    <input type="text" id="snslink" class="form-control" placeholder="채널 링크를 입력하세요">
                           		</div>


                              </div>
						  <button type="button" class="btn btn-sm rounded-pill btn-icon btn-outline-primary mb-1">
							   <span class="tf-icons bx bx-minus"></span>
                          </button>
                            </div>
                          </div>
                          <!-- 위에꺼랑 같은거 -->
                          
                     	 </div>

                      </div>
                      <div class="col-6">
                          <div style="display: flex; justify-content: space-between; align-items: center;">
                          	<span>기타 SNS 링크(인스타그램, 페이스북)</span>
                            <button type="button" class="btn btn-sm rounded-pill btn-icon btn-outline-primary mb-1">
                            <span class="tf-icons bx bx-plus"></span>
                          </button>                    	
                          </div>
                        <div class="mb-5" data-repeater-list="group-a">
                          <div class="repeater-wrapper pt-0 pt-md-4" data-repeater-item>
                            <div class="d-flex position-relative pe-0">
                              <div class="row w-100">
                                
                            <div>
                              <input type="text" id="snslink" class="form-control" placeholder="SNS 링크 입력" />
                            </div>


                              </div>
 								<button type="button" class="btn btn-sm rounded-pill btn-icon btn-outline-primary mb-1">
							   <span class="tf-icons bx bx-minus"></span>
                     	     </button>
                            </div>
                          </div>
                        </div>

                      </div>	
                            
                            <div class="col-12 d-flex justify-content-between">
                              <button class="btn btn-primary btn-prev">
                                <i class="bx bx-chevron-left bx-sm ms-sm-n2"></i>
                                <span class="align-middle d-sm-inline-block d-none">이전</span>
                              </button>
                              <button class="btn btn-primary btn-next">
                                <span class="align-middle d-sm-inline-block d-none me-sm-1">다음</span>
                                <i class="bx bx-chevron-right bx-sm me-sm-n2"></i>
                              </button>
                            </div>
                          </div>
                        </div>
                        <!-- Social Links --> <!-- 세번째 -->
                        <div id="social-links" class="content">
                          <div class="row g-3">
                          	
                          	<!-- 내용 -->
                          	<div class="col-6">
                          <div style="width: 630px; display: flex; justify-content: space-between; align-items: center;">
                          	<span>활동 이력</span>
                            <button type="button" class="btn btn-sm rounded-pill btn-icon btn-outline-primary mb-1">
                            <span class="tf-icons bx bx-plus"></span>
                          </button>                    	
                          </div>
                        <div class="mb-5" data-repeater-list="group-a"
	                        style="width: 662px;
						    height: 281.625px;
						    overflow-y: auto;">
                        <!-- 채널명, 가입일, 카테고리, 채널링크 div-->
                          <div class="repeater-wrapper pt-0 pt-md-4" data-repeater-item>
                            <div class="d-flex position-relative pe-0">
                              <div class="row w-100">
                                
                                <div class="col-sm-3">
	                       		<input
	                            	type="text"
	                            	class="form-control flatpickr-validation"
	                            	name="formValidationDob"
	                            	id="elday"
	                            	placeholder="이력일자"
	                            	value="2023-06-08"
	                            	required />
                      			</div>
                      			
                      			<div class="col-sm-6"></div>
                                
		                        <div class="col-sm-3" style="padding-left:0px">
			                        <select id="defaultSelect" class="form-select">
			                          <option>분류</option>
			                          <option value="1">구독자</option>
			                          <option value="2">조회수</option>
			                          <option value="3">버튼달성</option>
			                          <option value="4">수상</option>
			                        </select>
		                        </div>
                          	 	<div>
                          		    <input type="text" id="snslink" class="form-control" placeholder="채널명 또는 크리에이터명" />
                           		</div>
		                        
		                        <div>
                          		    <input type="text" id="snslink" class="form-control" placeholder="구독자 10만 달성" />
                           		</div>


                              </div>
                            </div>
                          </div>
                          
                          <!-- 위에꺼랑 같은거 -->
                          <div class="repeater-wrapper pt-0 pt-md-4" data-repeater-item="">
                            <div class="d-flex position-relative pe-0">
                              <div class="row w-100">
                                
                                <div class="col-sm-3">
	                       		<input
	                            	type="text"
	                            	class="form-control flatpickr-validation"
	                            	name="formValidationDob"
	                            	id="elday1"
	                            	placeholder="이력일자"
	                            	value="2023-12-08"
	                            	required />
                      			</div>
                      			
                      			<div class="col-sm-6"></div>
                                
		                        <div class="col-sm-3" style="padding-left:0px">
			                        <select id="defaultSelect" class="form-select">
			                          <option>분류</option>
			                          <option value="1">구독자</option>
			                          <option value="2">조회수</option>
			                          <option value="3">버튼달성</option>
			                          <option value="4">수상</option>
			                        </select>
		                        </div>
                          	 	<div>
                          		    <input type="text" id="snslink" class="form-control" placeholder="채널명 또는 크리에이터명" />
                           		</div>
		                        
		                        <div>
                          		    <input type="text" id="snslink" class="form-control" placeholder="유튜브 크리에이터 어워즈 대상" />
                           		</div>
                           		
                              </div>
                            </div>
                          </div>
                          <!-- 위에꺼랑 같은거 -->
                                                    <!-- 위에꺼랑 같은거 -->
                          <div class="repeater-wrapper pt-0 pt-md-4" data-repeater-item="">
                            <div class="d-flex position-relative pe-0">
                              <div class="row w-100">
                                
                                <div class="col-sm-3">
	                       		<input
	                            	type="text"
	                            	class="form-control flatpickr-validation"
	                            	name="formValidationDob"
	                            	id="elday2"
	                            	placeholder="이력일자"
	                            	value="2023-12-08"
	                            	required />
                      			</div>
                      			
                      			<div class="col-sm-6"></div>
                                
		                        <div class="col-sm-3" style="padding-left:0px">
			                        <select id="defaultSelect" class="form-select">
			                          <option>분류</option>
			                          <option value="1">구독자</option>
			                          <option value="2">조회수</option>
			                          <option value="3">버튼달성</option>
			                          <option value="4">수상</option>
			                        </select>
		                        </div>
                          	 	<div>
                          		    <input type="text" id="snslink" class="form-control" placeholder="채널명 또는 크리에이터명" />
                           		</div>
		                        
		                        <div>
                          		    <input type="text" id="snslink" class="form-control" placeholder="유튜브 크리에이터 어워즈 대상" />
                           		</div>
                           		
                              </div>
                            </div>
                          </div>
                          <!-- 위에꺼랑 같은거 -->
                          
                     	 </div>

                      </div>
                      <div class="col-6">
                          <div style="display: flex; justify-content: space-between; align-items: center;">
                          	<span>특이사항</span>               	
                          </div>
                        <div class="mb-5" data-repeater-list="group-a">
                          <div class="repeater-wrapper pt-0 pt-md-4" data-repeater-item>
                            <div class="d-flex position-relative pe-0">
                              <div class="row w-100">
                                
                                <div>
			                       <textarea class="form-control" 
			                       id="exampleFormControlTextarea1" rows="3" 
			                       placeholder="특이사항 및 참고사항을 입력해주세요"
			                       style="height:264px"></textarea>
			                    </div>

                              </div>
                            </div>
                          </div>
                        </div>

                      </div>	
                            
                            <div style="width:250px">
                              <input type="text" id="manegername" class="form-control" placeholder="매니저 선택" />
                            </div>
                            
                            <div class="col-12 d-flex justify-content-between">
                              <button class="btn btn-primary btn-prev">
                                <i class="bx bx-chevron-left bx-sm ms-sm-n2"></i>
                                <span class="align-middle d-sm-inline-block d-none">이전</span>
                              </button>
                              <button class="btn btn-success btn-submit">완료</button>
                            </div>
							
                          </div>
                        </div>
                 		<!-- 세번쨰 -->
                      </form>
                      <!-- 1~3 폼제출 -->
                    </div>
                  </div>
                </div>
                <!-- /Default Wizard -->
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
    <script src="../../assets/vendor/libs/bs-stepper/bs-stepper.js"></script>
    <script src="../../assets/vendor/libs/bootstrap-select/bootstrap-select.js"></script>
    <script src="../../assets/vendor/libs/select2/select2.js"></script>
    <script src="../../assets/vendor/libs/@form-validation/umd/bundle/popular.min.js"></script>
    <script src="../../assets/vendor/libs/@form-validation/umd/plugin-bootstrap5/index.min.js"></script>
    <script src="../../assets/vendor/libs/@form-validation/umd/plugin-auto-focus/index.min.js"></script>
    <script src="../../assets/vendor/libs/flatpickr/flatpickr.js"></script> <!-- 캘린더데이터들어있는 js -->
    <script src="../../assets/vendor/libs/dropzone/dropzone.js"></script>
    
    <script src="../../assets/vendor/libs/cleavejs/cleave.js"></script> <!-- 추가 -->
    <script src="../../assets/vendor/libs/cleavejs/cleave-phone.js"></script>
    <script src="../../assets/vendor/libs/jquery-repeater/jquery-repeater.js"></script>
    
    <script>
       var flatpickrDate = document.querySelector("#formValidationDob"); // 캘린더
   
       flatpickrDate.flatpickr({
         monthSelectorType: "static"
       });
    </script>
    <script>
       var flatpickrDate = document.querySelector("#startcontract"); // 캘린더
   
       flatpickrDate.flatpickr({
         monthSelectorType: "static"
       });
    </script>
    <script>
       var flatpickrDate = document.querySelector("#endcontract"); // 캘린더
   
       flatpickrDate.flatpickr({
         monthSelectorType: "static"
       });
    </script>
    <script>
       var flatpickrDate = document.querySelector("#startch"); // 캘린더
   
       flatpickrDate.flatpickr({
         monthSelectorType: "static"
       });
    </script>
    <script>
       var flatpickrDate = document.querySelector("#startch1"); // 캘린더
   
       flatpickrDate.flatpickr({
         monthSelectorType: "static"
       });
    </script>
    <script>
       var flatpickrDate = document.querySelector("#elday"); // 캘린더
   
       flatpickrDate.flatpickr({
         monthSelectorType: "static"
       });
    </script>
    <script>
       var flatpickrDate = document.querySelector("#elday1"); // 캘린더
   
       flatpickrDate.flatpickr({
         monthSelectorType: "static"
       });
    </script>
    <script>
       var flatpickrDate = document.querySelector("#elday2"); // 캘린더
   
       flatpickrDate.flatpickr({
         monthSelectorType: "static"
       });
    </script>
    <script>
    const myDropzone = new Dropzone('#dropphoto', {
    	  previewTemplate: previewTemplate,
    	  parallelUploads: 1,
    	  maxFilesize: 5,
    	  addRemoveLinks: true,
    	  maxFiles: 1
    	});
    </script>
    <script>
    eval("// jquery.repeater version 1.2.1\n// https://github.com/DubFriend/jquery.repeater\n// (MIT) 09-10-2016\n// Brian Detering <BDeterin@gmail.com> (http://www.briandetering.net/)\n(function ($) {\n'use strict';\n\nvar identity = function (x) {\n    return x;\n};\n\nvar isArray = function (value) {\n    return $.isArray(value);\n};\n\nvar isObject = function (value) {\n    return !isArray(value) && (value instanceof Object);\n};\n\nvar isNumber = function (value) {\n    return value instanceof Number;\n};\n\nvar isFunction = function (value) {\n    return value instanceof Function;\n};\n\nvar indexOf = function (object, value) {\n    return $.inArray(value, object);\n};\n\nvar inArray = function (array, value) {\n    return indexOf(array, value) !== -1;\n};\n\nvar foreach = function (collection, callback) {\n    for(var i in collection) {\n        if(collection.hasOwnProperty(i)) {\n            callback(collection[i], i, collection);\n        }\n    }\n};\n\n\nvar last = function (array) {\n    return array[array.length - 1];\n};\n\nvar argumentsToArray = function (args) {\n    return Array.prototype.slice.call(args);\n};\n\nvar extend = function () {\n    var extended = {};\n    foreach(argumentsToArray(arguments), function (o) {\n        foreach(o, function (val, key) {\n            extended[key] = val;\n        });\n    });\n    return extended;\n};\n\nvar mapToArray = function (collection, callback) {\n    var mapped = [];\n    foreach(collection, function (value, key, coll) {\n        mapped.push(callback(value, key, coll));\n    });\n    return mapped;\n};\n\nvar mapToObject = function (collection, callback, keyCallback) {\n    var mapped = {};\n    foreach(collection, function (value, key, coll) {\n        key = keyCallback ? keyCallback(key, value) : key;\n        mapped[key] = callback(value, key, coll);\n    });\n    return mapped;\n};\n\nvar map = function (collection, callback, keyCallback) {\n    return isArray(collection) ?\n        mapToArray(collection, callback) :\n        mapToObject(collection, callback, keyCallback);\n};\n\nvar pluck = function (arrayOfObjects, key) {\n    return map(arrayOfObjects, function (val) {\n        return val[key];\n    });\n};\n\nvar filter = function (collection, callback) {\n    var filtered;\n\n    if(isArray(collection)) {\n        filtered = [];\n        foreach(collection, function (val, key, coll) {\n            if(callback(val, key, coll)) {\n                filtered.push(val);\n            }\n        });\n    }\n    else {\n        filtered = {};\n        foreach(collection, function (val, key, coll) {\n            if(callback(val, key, coll)) {\n                filtered[key] = val;\n            }\n        });\n    }\n\n    return filtered;\n};\n\nvar call = function (collection, functionName, args) {\n    return map(collection, function (object, name) {\n        return object[functionName].apply(object, args || []);\n    });\n};\n\n//execute callback immediately and at most one time on the minimumInterval,\n//ignore block attempts\nvar throttle = function (minimumInterval, callback) {\n    var timeout = null;\n    return function () {\n        var that = this, args = arguments;\n        if(timeout === null) {\n            timeout = setTimeout(function () {\n                timeout = null;\n            }, minimumInterval);\n            callback.apply(that, args);\n        }\n    };\n};\n\n\nvar mixinPubSub = function (object) {\n    object = object || {};\n    var topics = {};\n\n    object.publish = function (topic, data) {\n        foreach(topics[topic], function (callback) {\n            callback(data);\n        });\n    };\n\n    object.subscribe = function (topic, callback) {\n        topics[topic] = topics[topic] || [];\n        topics[topic].push(callback);\n    };\n\n    object.unsubscribe = function (callback) {\n        foreach(topics, function (subscribers) {\n            var index = indexOf(subscribers, callback);\n            if(index !== -1) {\n                subscribers.splice(index, 1);\n            }\n        });\n    };\n\n    return object;\n};\n\n// jquery.input version 0.0.0\n// https://github.com/DubFriend/jquery.input\n// (MIT) 09-04-2014\n// Brian Detering <BDeterin@gmail.com> (http://www.briandetering.net/)\n(function ($) {\n'use strict';\n\nvar createBaseInput = function (fig, my) {\n    var self = mixinPubSub(),\n        $self = fig.$;\n\n    self.getType = function () {\n        throw 'implement me (return type. \"text\", \"radio\", etc.)';\n    };\n\n    self.$ = function (selector) {\n        return selector ? $self.find(selector) : $self;\n    };\n\n    self.disable = function () {\n        self.$().prop('disabled', true);\n        self.publish('isEnabled', false);\n    };\n\n    self.enable = function () {\n        self.$().prop('disabled', false);\n        self.publish('isEnabled', true);\n    };\n\n    my.equalTo = function (a, b) {\n        return a === b;\n    };\n\n    my.publishChange = (function () {\n        var oldValue;\n        return function (e, domElement) {\n            var newValue = self.get();\n            if(!my.equalTo(newValue, oldValue)) {\n                self.publish('change', { e: e, domElement: domElement });\n            }\n            oldValue = newValue;\n        };\n    }());\n\n    return self;\n};\n\n\nvar createInput = function (fig, my) {\n    var self = createBaseInput(fig, my);\n\n    self.get = function () {\n        return self.$().val();\n    };\n\n    self.set = function (newValue) {\n        self.$().val(newValue);\n    };\n\n    self.clear = function () {\n        self.set('');\n    };\n\n    my.buildSetter = function (callback) {\n        return function (newValue) {\n            callback.call(self, newValue);\n        };\n    };\n\n    return self;\n};\n\nvar inputEqualToArray = function (a, b) {\n    a = isArray(a) ? a : [a];\n    b = isArray(b) ? b : [b];\n\n    var isEqual = true;\n    if(a.length !== b.length) {\n        isEqual = false;\n    }\n    else {\n        foreach(a, function (value) {\n            if(!inArray(b, value)) {\n                isEqual = false;\n            }\n        });\n    }\n\n    return isEqual;\n};\n\nvar createInputButton = function (fig) {\n    var my = {},\n        self = createInput(fig, my);\n\n    self.getType = function () {\n        return 'button';\n    };\n\n    self.$().on('change', function (e) {\n        my.publishChange(e, this);\n    });\n\n    return self;\n};\n\nvar createInputCheckbox = function (fig) {\n    var my = {},\n        self = createInput(fig, my);\n\n    self.getType = function () {\n        return 'checkbox';\n    };\n\n    self.get = function () {\n        var values = [];\n        self.$().filter(':checked').each(function () {\n            values.push($(this).val());\n        });\n        return values;\n    };\n\n    self.set = function (newValues) {\n        newValues = isArray(newValues) ? newValues : [newValues];\n\n        self.$().each(function () {\n            $(this).prop('checked', false);\n        });\n\n        foreach(newValues, function (value) {\n            self.$().filter('[value=\"' + value + '\"]')\n                .prop('checked', true);\n        });\n    };\n\n    my.equalTo = inputEqualToArray;\n\n    self.$().change(function (e) {\n        my.publishChange(e, this);\n    });\n\n    return self;\n};\n\nvar createInputEmail = function (fig) {\n    var my = {},\n        self = createInputText(fig, my);\n\n    self.getType = function () {\n        return 'email';\n    };\n\n    return self;\n};\n\nvar createInputFile = function (fig) {\n    var my = {},\n        self = createBaseInput(fig, my);\n\n    self.getType = function () {\n        return 'file';\n    };\n\n    self.get = function () {\n        return last(self.$().val().split('\\\\'));\n    };\n\n    self.clear = function () {\n        // http://stackoverflow.com/questions/1043957/clearing-input-type-file-using-jquery\n        this.$().each(function () {\n            $(this).wrap('<form>').closest('form').get(0).reset();\n            $(this).unwrap();\n        });\n    };\n\n    self.$().change(function (e) {\n        my.publishChange(e, this);\n        // self.publish('change', self);\n    });\n\n    return self;\n};\n\nvar createInputHidden = function (fig) {\n    var my = {},\n        self = createInput(fig, my);\n\n    self.getType = function () {\n        return 'hidden';\n    };\n\n    self.$().change(function (e) {\n        my.publishChange(e, this);\n    });\n\n    return self;\n};\nvar createInputMultipleFile = function (fig) {\n    var my = {},\n        self = createBaseInput(fig, my);\n\n    self.getType = function () {\n        return 'file[multiple]';\n    };\n\n    self.get = function () {\n        // http://stackoverflow.com/questions/14035530/how-to-get-value-of-html-5-multiple-file-upload-variable-using-jquery\n        var fileListObject = self.$().get(0).files || [],\n            names = [], i;\n\n        for(i = 0; i < (fileListObject.length || 0); i += 1) {\n            names.push(fileListObject[i].name);\n        }\n\n        return names;\n    };\n\n    self.clear = function () {\n        // http://stackoverflow.com/questions/1043957/clearing-input-type-file-using-jquery\n        this.$().each(function () {\n            $(this).wrap('<form>').closest('form').get(0).reset();\n            $(this).unwrap();\n        });\n    };\n\n    self.$().change(function (e) {\n        my.publishChange(e, this);\n    });\n\n    return self;\n};\n\nvar createInputMultipleSelect = function (fig) {\n    var my = {},\n        self = createInput(fig, my);\n\n    self.getType = function () {\n        return 'select[multiple]';\n    };\n\n    self.get = function () {\n        return self.$().val() || [];\n    };\n\n    self.set = function (newValues) {\n        self.$().val(\n            newValues === '' ? [] : isArray(newValues) ? newValues : [newValues]\n        );\n    };\n\n    my.equalTo = inputEqualToArray;\n\n    self.$().change(function (e) {\n        my.publishChange(e, this);\n    });\n\n    return self;\n};\n\nvar createInputPassword = function (fig) {\n    var my = {},\n        self = createInputText(fig, my);\n\n    self.getType = function () {\n        return 'password';\n    };\n\n    return self;\n};\n\nvar createInputRadio = function (fig) {\n    var my = {},\n        self = createInput(fig, my);\n\n    self.getType = function () {\n        return 'radio';\n    };\n\n    self.get = function () {\n        return self.$().filter(':checked').val() || null;\n    };\n\n    self.set = function (newValue) {\n        if(!newValue) {\n            self.$().each(function () {\n                $(this).prop('checked', false);\n            });\n        }\n        else {\n            self.$().filter('[value=\"' + newValue + '\"]').prop('checked', true);\n        }\n    };\n\n    self.$().change(function (e) {\n        my.publishChange(e, this);\n    });\n\n    return self;\n};\n\nvar createInputRange = function (fig) {\n    var my = {},\n        self = createInput(fig, my);\n\n    self.getType = function () {\n        return 'range';\n    };\n\n    self.$().change(function (e) {\n        my.publishChange(e, this);\n    });\n\n    return self;\n};\n\nvar createInputSelect = function (fig) {\n    var my = {},\n        self = createInput(fig, my);\n\n    self.getType = function () {\n        return 'select';\n    };\n\n    self.$().change(function (e) {\n        my.publishChange(e, this);\n    });\n\n    return self;\n};\n\nvar createInputText = function (fig) {\n    var my = {},\n        self = createInput(fig, my);\n\n    self.getType = function () {\n        return 'text';\n    };\n\n    self.$().on('change keyup keydown', function (e) {\n        my.publishChange(e, this);\n    });\n\n    return self;\n};\n\nvar createInputTextarea = function (fig) {\n    var my = {},\n        self = createInput(fig, my);\n\n    self.getType = function () {\n        return 'textarea';\n    };\n\n    self.$().on('change keyup keydown', function (e) {\n        my.publishChange(e, this);\n    });\n\n    return self;\n};\n\nvar createInputURL = function (fig) {\n    var my = {},\n        self = createInputText(fig, my);\n\n    self.getType = function () {\n        return 'url';\n    };\n\n    return self;\n};\n\nvar buildFormInputs = function (fig) {\n    var inputs = {},\n        $self = fig.$;\n\n    var constructor = fig.constructorOverride || {\n        button: createInputButton,\n        text: createInputText,\n        url: createInputURL,\n        email: createInputEmail,\n        password: createInputPassword,\n        range: createInputRange,\n        textarea: createInputTextarea,\n        select: createInputSelect,\n        'select[multiple]': createInputMultipleSelect,\n        radio: createInputRadio,\n        checkbox: createInputCheckbox,\n        file: createInputFile,\n        'file[multiple]': createInputMultipleFile,\n        hidden: createInputHidden\n    };\n\n    var addInputsBasic = function (type, selector) {\n        var $input = isObject(selector) ? selector : $self.find(selector);\n\n        $input.each(function () {\n            var name = $(this).attr('name');\n            inputs[name] = constructor[type]({\n                $: $(this)\n            });\n        });\n    };\n\n    var addInputsGroup = function (type, selector) {\n        var names = [],\n            $input = isObject(selector) ? selector : $self.find(selector);\n\n        if(isObject(selector)) {\n            inputs[$input.attr('name')] = constructor[type]({\n                $: $input\n            });\n        }\n        else {\n            // group by name attribute\n            $input.each(function () {\n                if(indexOf(names, $(this).attr('name')) === -1) {\n                    names.push($(this).attr('name'));\n                }\n            });\n\n            foreach(names, function (name) {\n                inputs[name] = constructor[type]({\n                    $: $self.find('input[name=\"' + name + '\"]')\n                });\n            });\n        }\n    };\n\n\n    if($self.is('input, select, textarea')) {\n        if($self.is('input[type=\"button\"], button, input[type=\"submit\"]')) {\n            addInputsBasic('button', $self);\n        }\n        else if($self.is('textarea')) {\n            addInputsBasic('textarea', $self);\n        }\n        else if(\n            $self.is('input[type=\"text\"]') ||\n            $self.is('input') && !$self.attr('type')\n        ) {\n            addInputsBasic('text', $self);\n        }\n        else if($self.is('input[type=\"password\"]')) {\n            addInputsBasic('password', $self);\n        }\n        else if($self.is('input[type=\"email\"]')) {\n            addInputsBasic('email', $self);\n        }\n        else if($self.is('input[type=\"url\"]')) {\n            addInputsBasic('url', $self);\n        }\n        else if($self.is('input[type=\"range\"]')) {\n            addInputsBasic('range', $self);\n        }\n        else if($self.is('select')) {\n            if($self.is('[multiple]')) {\n                addInputsBasic('select[multiple]', $self);\n            }\n            else {\n                addInputsBasic('select', $self);\n            }\n        }\n        else if($self.is('input[type=\"file\"]')) {\n            if($self.is('[multiple]')) {\n                addInputsBasic('file[multiple]', $self);\n            }\n            else {\n                addInputsBasic('file', $self);\n            }\n        }\n        else if($self.is('input[type=\"hidden\"]')) {\n            addInputsBasic('hidden', $self);\n        }\n        else if($self.is('input[type=\"radio\"]')) {\n            addInputsGroup('radio', $self);\n        }\n        else if($self.is('input[type=\"checkbox\"]')) {\n            addInputsGroup('checkbox', $self);\n        }\n        else {\n            //in all other cases default to a \"text\" input interface.\n            addInputsBasic('text', $self);\n        }\n    }\n    else {\n        addInputsBasic('button', 'input[type=\"button\"], button, input[type=\"submit\"]');\n        addInputsBasic('text', 'input[type=\"text\"]');\n        addInputsBasic('password', 'input[type=\"password\"]');\n        addInputsBasic('email', 'input[type=\"email\"]');\n        addInputsBasic('url', 'input[type=\"url\"]');\n        addInputsBasic('range', 'input[type=\"range\"]');\n        addInputsBasic('textarea', 'textarea');\n        addInputsBasic('select', 'select:not([multiple])');\n        addInputsBasic('select[multiple]', 'select[multiple]');\n        addInputsBasic('file', 'input[type=\"file\"]:not([multiple])');\n        addInputsBasic('file[multiple]', 'input[type=\"file\"][multiple]');\n        addInputsBasic('hidden', 'input[type=\"hidden\"]');\n        addInputsGroup('radio', 'input[type=\"radio\"]');\n        addInputsGroup('checkbox', 'input[type=\"checkbox\"]');\n    }\n\n    return inputs;\n};\n\n$.fn.inputVal = function (newValue) {\n    var $self = $(this);\n\n    var inputs = buildFormInputs({ $: $self });\n\n    if($self.is('input, textarea, select')) {\n        if(typeof newValue === 'undefined') {\n            return inputs[$self.attr('name')].get();\n        }\n        else {\n            inputs[$self.attr('name')].set(newValue);\n            return $self;\n        }\n    }\n    else {\n        if(typeof newValue === 'undefined') {\n            return call(inputs, 'get');\n        }\n        else {\n            foreach(newValue, function (value, inputName) {\n                inputs[inputName].set(value);\n            });\n            return $self;\n        }\n    }\n};\n\n$.fn.inputOnChange = function (callback) {\n    var $self = $(this);\n    var inputs = buildFormInputs({ $: $self });\n    foreach(inputs, function (input) {\n        input.subscribe('change', function (data) {\n            callback.call(data.domElement, data.e);\n        });\n    });\n    return $self;\n};\n\n$.fn.inputDisable = function () {\n    var $self = $(this);\n    call(buildFormInputs({ $: $self }), 'disable');\n    return $self;\n};\n\n$.fn.inputEnable = function () {\n    var $self = $(this);\n    call(buildFormInputs({ $: $self }), 'enable');\n    return $self;\n};\n\n$.fn.inputClear = function () {\n    var $self = $(this);\n    call(buildFormInputs({ $: $self }), 'clear');\n    return $self;\n};\n\n}(jQuery));\n\n$.fn.repeaterVal = function () {\n    var parse = function (raw) {\n        var parsed = [];\n\n        foreach(raw, function (val, key) {\n            var parsedKey = [];\n            if(key !== \"undefined\") {\n                parsedKey.push(key.match(/^[^\\[]*/)[0]);\n                parsedKey = parsedKey.concat(map(\n                    key.match(/\\[[^\\]]*\\]/g),\n                    function (bracketed) {\n                        return bracketed.replace(/[\\[\\]]/g, '');\n                    }\n                ));\n\n                parsed.push({\n                    val: val,\n                    key: parsedKey\n                });\n            }\n        });\n\n        return parsed;\n    };\n\n    var build = function (parsed) {\n        if(\n            parsed.length === 1 &&\n            (parsed[0].key.length === 0 || parsed[0].key.length === 1 && !parsed[0].key[0])\n        ) {\n            return parsed[0].val;\n        }\n\n        foreach(parsed, function (p) {\n            p.head = p.key.shift();\n        });\n\n        var grouped = (function () {\n            var grouped = {};\n\n            foreach(parsed, function (p) {\n                if(!grouped[p.head]) {\n                    grouped[p.head] = [];\n                }\n                grouped[p.head].push(p);\n            });\n\n            return grouped;\n        }());\n\n        var built;\n\n        if(/^[0-9]+$/.test(parsed[0].head)) {\n            built = [];\n            foreach(grouped, function (group) {\n                built.push(build(group));\n            });\n        }\n        else {\n            built = {};\n            foreach(grouped, function (group, key) {\n                built[key] = build(group);\n            });\n        }\n\n        return built;\n    };\n\n    return build(parse($(this).inputVal()));\n};\n\n$.fn.repeater = function (fig) {\n    fig = fig || {};\n\n    var setList;\n\n    $(this).each(function () {\n\n        var $self = $(this);\n\n        var show = fig.show || function () {\n            $(this).show();\n        };\n\n        var hide = fig.hide || function (removeElement) {\n            removeElement();\n        };\n\n        var $list = $self.find('[data-repeater-list]').first();\n\n        var $filterNested = function ($items, repeaters) {\n            return $items.filter(function () {\n                return repeaters ?\n                    $(this).closest(\n                        pluck(repeaters, 'selector').join(',')\n                    ).length === 0 : true;\n            });\n        };\n\n        var $items = function () {\n            return $filterNested($list.find('[data-repeater-item]'), fig.repeaters);\n        };\n\n        var $itemTemplate = $list.find('[data-repeater-item]')\n                                 .first().clone().hide();\n\n        var $firstDeleteButton = $filterNested(\n            $filterNested($(this).find('[data-repeater-item]'), fig.repeaters)\n            .first().find('[data-repeater-delete]'),\n            fig.repeaters\n        );\n\n        if(fig.isFirstItemUndeletable && $firstDeleteButton) {\n            $firstDeleteButton.remove();\n        }\n\n        var getGroupName = function () {\n            var groupName = $list.data('repeater-list');\n            return fig.$parent ?\n                fig.$parent.data('item-name') + '[' + groupName + ']' :\n                groupName;\n        };\n\n        var initNested = function ($listItems) {\n            if(fig.repeaters) {\n                $listItems.each(function () {\n                    var $item = $(this);\n                    foreach(fig.repeaters, function (nestedFig) {\n                        $item.find(nestedFig.selector).repeater(extend(\n                            nestedFig, { $parent: $item }\n                        ));\n                    });\n                });\n            }\n        };\n\n        var $foreachRepeaterInItem = function (repeaters, $item, cb) {\n            if(repeaters) {\n                foreach(repeaters, function (nestedFig) {\n                    cb.call($item.find(nestedFig.selector)[0], nestedFig);\n                });\n            }\n        };\n\n        var setIndexes = function ($items, groupName, repeaters) {\n            $items.each(function (index) {\n                var $item = $(this);\n                $item.data('item-name', groupName + '[' + index + ']');\n                $filterNested($item.find('[name]'), repeaters)\n                .each(function () {\n                    var $input = $(this);\n                    // match non empty brackets (ex: \"[foo]\")\n                    var matches = $input.attr('name').match(/\\[[^\\]]+\\]/g);\n\n                    var name = matches ?\n                        // strip \"[\" and \"]\" characters\n                        last(matches).replace(/\\[|\\]/g, '') :\n                        $input.attr('name');\n\n\n                    var newName = groupName + '[' + index + '][' + name + ']' +\n                        ($input.is(':checkbox') || $input.attr('multiple') ? '[]' : '');\n\n                    $input.attr('name', newName);\n\n                    $foreachRepeaterInItem(repeaters, $item, function (nestedFig) {\n                        var $repeater = $(this);\n                        setIndexes(\n                            $filterNested($repeater.find('[data-repeater-item]'), nestedFig.repeaters || []),\n                            groupName + '[' + index + ']' +\n                                        '[' + $repeater.find('[data-repeater-list]').first().data('repeater-list') + ']',\n                            nestedFig.repeaters\n                        );\n                    });\n                });\n            });\n\n            $list.find('input[name][checked]')\n                .removeAttr('checked')\n                .prop('checked', true);\n        };\n\n        setIndexes($items(), getGroupName(), fig.repeaters);\n        initNested($items());\n        if(fig.initEmpty) {\n            $items().remove();\n        }\n\n        if(fig.ready) {\n            fig.ready(function () {\n                setIndexes($items(), getGroupName(), fig.repeaters);\n            });\n        }\n\n        var appendItem = (function () {\n            var setItemsValues = function ($item, data, repeaters) {\n                if(data || fig.defaultValues) {\n                    var inputNames = {};\n                    $filterNested($item.find('[name]'), repeaters).each(function () {\n                        var key = $(this).attr('name').match(/\\[([^\\]]*)(\\]|\\]\\[\\])$/)[1];\n                        inputNames[key] = $(this).attr('name');\n                    });\n\n                    $item.inputVal(map(\n                        filter(data || fig.defaultValues, function (val, name) {\n                            return inputNames[name];\n                        }),\n                        identity,\n                        function (name) {\n                            return inputNames[name];\n                        }\n                    ));\n                }\n\n\n                $foreachRepeaterInItem(repeaters, $item, function (nestedFig) {\n                    var $repeater = $(this);\n                    $filterNested(\n                        $repeater.find('[data-repeater-item]'),\n                        nestedFig.repeaters\n                    )\n                    .each(function () {\n                        var fieldName = $repeater.find('[data-repeater-list]').data('repeater-list');\n                        if(data && data[fieldName]) {\n                            var $template = $(this).clone();\n                            $repeater.find('[data-repeater-item]').remove();\n                            foreach(data[fieldName], function (data) {\n                                var $item = $template.clone();\n                                setItemsValues(\n                                    $item,\n                                    data,\n                                    nestedFig.repeaters || []\n                                );\n                                $repeater.find('[data-repeater-list]').append($item);\n                            });\n                        }\n                        else {\n                            setItemsValues(\n                                $(this),\n                                nestedFig.defaultValues,\n                                nestedFig.repeaters || []\n                            );\n                        }\n                    });\n                });\n\n            };\n\n            return function ($item, data) {\n                $list.append($item);\n                setIndexes($items(), getGroupName(), fig.repeaters);\n                $item.find('[name]').each(function () {\n                    $(this).inputClear();\n                });\n                setItemsValues($item, data || fig.defaultValues, fig.repeaters);\n            };\n        }());\n\n        var addItem = function (data) {\n            var $item = $itemTemplate.clone();\n            appendItem($item, data);\n            if(fig.repeaters) {\n                initNested($item);\n            }\n            show.call($item.get(0));\n        };\n\n        setList = function (rows) {\n            $items().remove();\n            foreach(rows, addItem);\n        };\n\n        $filterNested($self.find('[data-repeater-create]'), fig.repeaters).click(function () {\n            addItem();\n        });\n\n        $list.on('click', '[data-repeater-delete]', function () {\n            var self = $(this).closest('[data-repeater-item]').get(0);\n            hide.call(self, function () {\n                $(self).remove();\n                setIndexes($items(), getGroupName(), fig.repeaters);\n            });\n        });\n    });\n\n    this.setList = setList;\n\n    return this;\n};\n\n}(jQuery));\n\n//# sourceURL=webpack://Sneat/./node_modules/jquery.repeater/jquery.repeater.js?");
    </script>
  

    <!-- Main JS -->
    <script src="../../assets/js/main.js"></script>

    <!-- Page JS -->
	
    <script src="../../assets/js/form-wizard-numbered.js"></script>
    <script src="../../assets/js/form-wizard-validation.js"></script>
  </body>
</html>
