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

    <title>Checkout - Wizard Examples | Sneat - Bootstrap 5 HTML Admin Template - Pro</title>

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
    <link rel="stylesheet" href="../../assets/vendor/libs/select2/select2.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/bs-stepper/bs-stepper.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/rateyo/rateyo.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/@form-validation/umd/styles/index.min.css" />

    <!-- Page CSS -->

    <link rel="stylesheet" href="../../assets/vendor/css/pages/wizard-ex-checkout.css" />

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
                          <use fill="#696cff" xlink:href="#path-1"></use>
                          <g id="Path-3" mask="url(#mask-2)">
                            <use fill="#696cff" xlink:href="#path-3"></use>
                            <use fill-opacity="0.2" fill="#FFFFFF" xlink:href="#path-3"></use>
                          </g>
                          <g id="Path-4" mask="url(#mask-2)">
                            <use fill="#696cff" xlink:href="#path-4"></use>
                            <use fill-opacity="0.2" fill="#FFFFFF" xlink:href="#path-4"></use>
                          </g>
                        </g>
                        <g
                          id="Triangle"
                          transform="translate(19.000000, 11.000000) rotate(-300.000000) translate(-19.000000, -11.000000) ">
                          <use fill="#696cff" xlink:href="#path-5"></use>
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
            <li class="menu-item active open">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-spreadsheet"></i>
                <div class="text-truncate" data-i18n="Wizard Examples">Wizard Examples</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item active">
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
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-carousel"></i>
                <div class="text-truncate" data-i18n="Form Wizard">Form Wizard</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
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
              <h4 class="py-3 mb-4"><span class="text-muted fw-light">Wizard examples /</span> Checkout</h4>

              <!-- Checkout Wizard -->
              <div id="wizard-checkout" class="bs-stepper wizard-icons wizard-icons-example mb-5">
                <div class="bs-stepper-header m-auto border-0 py-4">
                  <div class="step" data-target="#checkout-cart">
                    <button type="button" class="step-trigger">
                      <span class="bs-stepper-icon">
                        <svg viewBox="0 0 58 54">
                          <use xlink:href="../../assets/svg/icons/wizard-checkout-cart.svg#wizardCart"></use>
                        </svg>
                      </span>
                      <span class="bs-stepper-label">Cart</span>
                    </button>
                  </div>
                  <div class="line">
                    <i class="bx bx-chevron-right"></i>
                  </div>
                  <div class="step" data-target="#checkout-address">
                    <button type="button" class="step-trigger">
                      <span class="bs-stepper-icon">
                        <svg viewBox="0 0 54 54">
                          <use
                            xlink:href="../../assets/svg/icons/wizard-checkout-address.svg#wizardCheckoutAddress"></use>
                        </svg>
                      </span>
                      <span class="bs-stepper-label">Address</span>
                    </button>
                  </div>
                  <div class="line">
                    <i class="bx bx-chevron-right"></i>
                  </div>
                  <div class="step" data-target="#checkout-payment">
                    <button type="button" class="step-trigger">
                      <span class="bs-stepper-icon">
                        <svg viewBox="0 0 58 54">
                          <use xlink:href="../../assets/svg/icons/wizard-checkout-payment.svg#wizardPayment"></use>
                        </svg>
                      </span>
                      <span class="bs-stepper-label">Payment</span>
                    </button>
                  </div>
                  <div class="line">
                    <i class="bx bx-chevron-right"></i>
                  </div>
                  <div class="step" data-target="#checkout-confirmation">
                    <button type="button" class="step-trigger">
                      <span class="bs-stepper-icon">
                        <svg viewBox="0 0 58 54">
                          <use xlink:href="../../assets/svg/icons/wizard-checkout-confirmation.svg#wizardConfirm"></use>
                        </svg>
                      </span>
                      <span class="bs-stepper-label">Confirmation</span>
                    </button>
                  </div>
                </div>
                <div class="bs-stepper-content border-top">
                  <form id="wizard-checkout-form" onSubmit="return false">
                    <!-- Cart -->
                    <div id="checkout-cart" class="content">
                      <div class="row">
                        <!-- Cart left -->
                        <div class="col-xl-8 mb-3 mb-xl-0">
                          <!-- Offer alert -->
                          <div class="alert alert-success mb-3" role="alert">
                            <div class="d-flex">
                              <span class="badge badge-center rounded-pill bg-success border-label-success p-3 me-2"
                                ><i class="bx bx-bookmarks fs-4"></i
                              ></span>
                              <div class="flex-grow-1 ps-1">
                                <div class="fw-medium fs-5 mb-2">Available Offers</div>
                                <ul class="list-unstyled mb-0">
                                  <li>- 10% Instant Discount on Bank of America Corp Bank Debit and Credit cards</li>
                                  <li>- 25% Cashback Voucher of up to $60 on first ever PayPal transaction. TCA</li>
                                </ul>
                              </div>
                            </div>
                            <button
                              type="button"
                              class="btn-close btn-pinned"
                              data-bs-dismiss="alert"
                              aria-label="Close"></button>
                          </div>

                          <!-- Shopping bag -->
                          <h5>My Shopping Bag (2 Items)</h5>
                          <ul class="list-group mb-3">
                            <li class="list-group-item p-4">
                              <div class="d-flex gap-3">
                                <div class="flex-shrink-0 d-flex align-items-center">
                                  <img src="../../assets/img/products/1.png" alt="google home" class="w-px-100" />
                                </div>
                                <div class="flex-grow-1">
                                  <div class="row">
                                    <div class="col-md-8">
                                      <p class="me-3">
                                        <a href="javascript:void(0)" class="text-body">Google - Google Home - White</a>
                                      </p>
                                      <div class="text-muted mb-2 d-flex flex-wrap">
                                        <span class="me-1">Sold by:</span>
                                        <a href="javascript:void(0)" class="me-3">Apple</a>
                                        <span class="badge bg-label-success">In Stock</span>
                                      </div>
                                      <div class="read-only-ratings mb-3" data-rateyo-read-only="true"></div>
                                      <input
                                        type="number"
                                        class="form-control form-control-sm w-px-100 mt-2"
                                        value="1"
                                        min="1"
                                        max="5" />
                                    </div>
                                    <div class="col-md-4">
                                      <div class="text-md-end">
                                        <button type="button" class="btn-close btn-pinned" aria-label="Close"></button>
                                        <div class="my-2 my-md-4 mb-md-5">
                                          <span class="text-primary">$299/</span><s class="text-muted">$359</s>
                                        </div>
                                        <button type="button" class="btn btn-sm btn-label-primary mt-md-3">
                                          Move to wishlist
                                        </button>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </li>
                            <li class="list-group-item p-4">
                              <div class="d-flex gap-3">
                                <div class="flex-shrink-0 d-flex align-items-center">
                                  <img src="../../assets/img/products/2.png" alt="google home" class="w-px-100" />
                                </div>
                                <div class="flex-grow-1">
                                  <div class="row">
                                    <div class="col-md-8">
                                      <p class="me-3">
                                        <a href="javascript:void(0)" class="text-body">Apple iPhone 11 (64GB, Black)</a>
                                      </p>
                                      <div class="text-muted mb-2 d-flex flex-wrap">
                                        <span class="me-1">Sold by:</span>
                                        <a href="javascript:void(0)" class="me-3">Apple</a>
                                        <span class="badge bg-label-success">In Stock</span>
                                      </div>
                                      <div class="read-only-ratings mb-3" data-rateyo-read-only="true"></div>
                                      <input
                                        type="number"
                                        class="form-control form-control-sm w-px-100 mt-2"
                                        value="1"
                                        min="1"
                                        max="5" />
                                    </div>
                                    <div class="col-md-4">
                                      <div class="text-md-end">
                                        <button type="button" class="btn-close btn-pinned" aria-label="Close"></button>
                                        <div class="my-2 my-md-4 mb-md-5">
                                          <span class="text-primary">$299/</span><s class="text-muted">$359</s>
                                        </div>
                                        <button type="button" class="btn btn-sm btn-label-primary mt-md-3">
                                          Move to wishlist
                                        </button>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </li>
                          </ul>

                          <!-- Wishlist -->
                          <div class="list-group">
                            <a href="javascript:void(0)" class="list-group-item d-flex justify-content-between">
                              <span>Add more products from wishlist</span>
                              <i class="bx bx-sm bx-chevron-right scaleX-n1-rtl"></i>
                            </a>
                          </div>
                        </div>

                        <!-- Cart right -->
                        <div class="col-xl-4">
                          <div class="border rounded p-4 mb-3 pb-3">
                            <!-- Offer -->
                            <h6>Offer</h6>
                            <div class="row g-3 mb-3">
                              <div class="col-8 col-xxl-8 col-xl-12">
                                <input
                                  type="text"
                                  class="form-control"
                                  placeholder="Enter Promo Code"
                                  aria-label="Enter Promo Code" />
                              </div>
                              <div class="col-4 col-xxl-4 col-xl-12">
                                <div class="d-grid">
                                  <button type="button" class="btn btn-label-primary">Apply</button>
                                </div>
                              </div>
                            </div>

                            <!-- Gift wrap -->
                            <div class="bg-lighter rounded p-3">
                              <p class="fw-medium mb-2">Buying gift for a loved one?</p>
                              <p class="mb-2">Gift wrap and personalized message on card, Only for $2.</p>
                              <a href="javascript:void(0)" class="fw-medium">Add a gift wrap</a>
                            </div>
                            <hr class="mx-n4" />

                            <!-- Price Details -->
                            <h6>Price Details</h6>
                            <dl class="row mb-0">
                              <dt class="col-6 fw-normal">Bag Total</dt>
                              <dd class="col-6 text-end">$1198.00</dd>

                              <dt class="col-sm-6 fw-normal">Coupon Discount</dt>
                              <dd class="col-sm-6 text-end"><a href="javascript:void(0)">Apply Coupon</a></dd>

                              <dt class="col-6 fw-normal">Order Total</dt>
                              <dd class="col-6 text-end">$1198.00</dd>

                              <dt class="col-6 fw-normal">Delivery Charges</dt>
                              <dd class="col-6 text-end">
                                <s class="text-muted">$5.00</s> <span class="badge bg-label-success ms-1">Free</span>
                              </dd>
                            </dl>

                            <hr class="mx-n4" />
                            <dl class="row mb-0">
                              <dt class="col-6">Total</dt>
                              <dd class="col-6 fw-medium text-end mb-0">$1198.00</dd>
                            </dl>
                          </div>
                          <div class="d-grid">
                            <button class="btn btn-primary btn-next">Place Order</button>
                          </div>
                        </div>
                      </div>
                    </div>

                    <!-- Address -->
                    <div id="checkout-address" class="content">
                      <div class="row">
                        <!-- Address left -->
                        <div class="col-xl-8 col-xxl-9 mb-3 mb-xl-0">
                          <!-- Select address -->
                          <p>Select your preferable address</p>
                          <div class="row mb-3">
                            <div class="col-md mb-md-0 mb-2">
                              <div class="form-check custom-option custom-option-basic checked">
                                <label class="form-check-label custom-option-content" for="customRadioAddress1">
                                  <input
                                    name="customRadioTemp"
                                    class="form-check-input"
                                    type="radio"
                                    value=""
                                    id="customRadioAddress1"
                                    checked="" />
                                  <span class="custom-option-header mb-2">
                                    <span class="fw-medium mb-0">John Doe (Default)</span>
                                    <span class="badge bg-label-primary">Home</span>
                                  </span>
                                  <span class="custom-option-body">
                                    <small
                                      >4135 Parkway Street, Los Angeles, CA, 90017.<br />
                                      Mobile : 1234567890 Card / Cash on delivery available</small
                                    >
                                    <span class="my-2 border-bottom d-block"></span>
                                    <span class="d-flex">
                                      <a class="me-2" href="javascript:void(0)">Edit</a>
                                      <a href="javascript:void(0)">Remove</a>
                                    </span>
                                  </span>
                                </label>
                              </div>
                            </div>
                            <div class="col-md">
                              <div class="form-check custom-option custom-option-basic">
                                <label class="form-check-label custom-option-content" for="customRadioAddress2">
                                  <input
                                    name="customRadioTemp"
                                    class="form-check-input"
                                    type="radio"
                                    value=""
                                    id="customRadioAddress2" />
                                  <span class="custom-option-header mb-2">
                                    <span class="fw-medium mb-0">ACME Inc.</span>
                                    <span class="badge bg-label-success">Office</span>
                                  </span>
                                  <span class="custom-option-body">
                                    <small
                                      >87 Hoffman Avenue, New York, NY, 10016.<br />Mobile : 1234567890 Card / Cash on
                                      delivery available</small
                                    >
                                    <span class="my-2 border-bottom d-block"></span>
                                    <span class="d-flex">
                                      <a class="me-2" href="javascript:void(0)">Edit</a>
                                      <a href="javascript:void(0)">Remove</a>
                                    </span>
                                  </span>
                                </label>
                              </div>
                            </div>
                          </div>
                          <button
                            type="button"
                            class="btn btn-label-primary mb-4"
                            data-bs-toggle="modal"
                            data-bs-target="#addNewAddress">
                            Add new address
                          </button>

                          <!-- Choose Delivery -->
                          <p>Choose Delivery Speed</p>
                          <div class="row mt-2">
                            <div class="col-md mb-md-0 mb-2">
                              <div class="form-check custom-option custom-option-icon position-relative checked">
                                <label class="form-check-label custom-option-content" for="customRadioDelivery1">
                                  <span class="custom-option-body">
                                    <i class="bx bx-user bx-lg"></i>
                                    <span class="custom-option-title mb-1">Standard</span>
                                    <span class="badge bg-label-success btn-pinned">FREE</span>
                                    <small>Get your product in 1 Week.</small>
                                  </span>
                                  <input
                                    name="customRadioIcon"
                                    class="form-check-input"
                                    type="radio"
                                    value=""
                                    id="customRadioDelivery1"
                                    checked="" />
                                </label>
                              </div>
                            </div>
                            <div class="col-md mb-md-0 mb-2">
                              <div class="form-check custom-option custom-option-icon position-relative">
                                <label class="form-check-label custom-option-content" for="customRadioDelivery2">
                                  <span class="custom-option-body">
                                    <i class="bx bx-crown bx-lg"></i>
                                    <span class="custom-option-title mb-1">Express</span>
                                    <span class="badge bg-label-secondary btn-pinned">$10</span>
                                    <small>Get your product in 3-4 days.</small>
                                  </span>
                                  <input
                                    name="customRadioIcon"
                                    class="form-check-input"
                                    type="radio"
                                    value=""
                                    id="customRadioDelivery2" />
                                </label>
                              </div>
                            </div>
                            <div class="col-md">
                              <div class="form-check custom-option custom-option-icon position-relative">
                                <label class="form-check-label custom-option-content" for="customRadioDelivery3">
                                  <span class="custom-option-body">
                                    <i class="bx bxl-telegram bx-lg"></i>
                                    <span class="custom-option-title mb-1">Overnight</span>
                                    <span class="badge bg-label-secondary btn-pinned">$15</span>
                                    <small>Get your product in 0-1 days.</small>
                                  </span>
                                  <input
                                    name="customRadioIcon"
                                    class="form-check-input"
                                    type="radio"
                                    value=""
                                    id="customRadioDelivery3" />
                                </label>
                              </div>
                            </div>
                          </div>
                        </div>

                        <!-- Address right -->
                        <div class="col-xl-4 col-xxl-3">
                          <div class="border rounded p-4 pb-3 mb-3">
                            <!-- Estimated Delivery -->
                            <h6>Estimated Delivery Date</h6>
                            <ul class="list-unstyled">
                              <li class="d-flex gap-3 align-items-center">
                                <div class="flex-shrink-0">
                                  <img src="../../assets/img/products/1.png" alt="google home" class="w-px-50" />
                                </div>
                                <div class="flex-grow-1">
                                  <p class="mb-0">
                                    <a class="text-body" href="javascript:void(0)">Google - Google Home - White</a>
                                  </p>
                                  <p class="fw-medium">18th Nov 2021</p>
                                </div>
                              </li>
                              <li class="d-flex gap-3 align-items-center">
                                <div class="flex-shrink-0">
                                  <img src="../../assets/img/products/2.png" alt="google home" class="w-px-50" />
                                </div>
                                <div class="flex-grow-1">
                                  <p class="mb-0">
                                    <a class="text-body" href="javascript:void(0)">Apple iPhone 11 (64GB, Black)</a>
                                  </p>
                                  <p class="fw-medium">20th Nov 2021</p>
                                </div>
                              </li>
                            </ul>

                            <hr class="mx-n4" />

                            <!-- Price Details -->
                            <h6>Price Details</h6>
                            <dl class="row mb-0">
                              <dt class="col-6 fw-normal">Order Total</dt>
                              <dd class="col-6 text-end">$1198.00</dd>

                              <dt class="col-6 fw-normal">Delivery Charges</dt>
                              <dd class="col-6 text-end">
                                <s class="text-muted">$5.00</s> <span class="badge bg-label-success ms-1">Free</span>
                              </dd>
                            </dl>
                            <hr class="mx-n4" />
                            <dl class="row mb-0">
                              <dt class="col-6">Total</dt>
                              <dd class="col-6 fw-medium text-end mb-0">$1198.00</dd>
                            </dl>
                          </div>
                          <div class="d-grid">
                            <button class="btn btn-primary btn-next">Place Order</button>
                          </div>
                        </div>
                      </div>
                    </div>

                    <!-- Payment -->
                    <div id="checkout-payment" class="content">
                      <div class="row">
                        <!-- Payment left -->
                        <div class="col-xl-8 col-xxl-9 mb-3 mb-xl-0">
                          <!-- Offer alert -->
                          <div class="alert alert-success" role="alert">
                            <div class="d-flex">
                              <span class="badge badge-center rounded-pill bg-success border-label-success p-3 me-2"
                                ><i class="bx bx-bookmarks fs-4"></i
                              ></span>
                              <div class="flex-grow-1 ps-1">
                                <div class="fw-medium fs-5 mb-2">Bank Offers</div>
                                <ul class="list-unstyled mb-0">
                                  <li>- 0% Instant Discount on Bank of America Corp Bank Debit and Credit cards</li>
                                </ul>
                              </div>
                            </div>
                            <button
                              type="button"
                              class="btn-close btn-pinned"
                              data-bs-dismiss="alert"
                              aria-label="Close"></button>
                          </div>

                          <!-- Payment Tabs -->
                          <div class="col-xxl-6 col-lg-8">
                            <ul class="nav nav-pills mb-3" id="paymentTabs" role="tablist">
                              <li class="nav-item" role="presentation">
                                <button
                                  class="nav-link active"
                                  id="pills-cc-tab"
                                  data-bs-toggle="pill"
                                  data-bs-target="#pills-cc"
                                  type="button"
                                  role="tab"
                                  aria-controls="pills-cc"
                                  aria-selected="true">
                                  Card
                                </button>
                              </li>
                              <li class="nav-item" role="presentation">
                                <button
                                  class="nav-link"
                                  id="pills-cod-tab"
                                  data-bs-toggle="pill"
                                  data-bs-target="#pills-cod"
                                  type="button"
                                  role="tab"
                                  aria-controls="pills-cod"
                                  aria-selected="false">
                                  Cash On Delivery
                                </button>
                              </li>
                              <li class="nav-item" role="presentation">
                                <button
                                  class="nav-link"
                                  id="pills-gift-card-tab"
                                  data-bs-toggle="pill"
                                  data-bs-target="#pills-gift-card"
                                  type="button"
                                  role="tab"
                                  aria-controls="pills-gift-card"
                                  aria-selected="false">
                                  Gift Card
                                </button>
                              </li>
                            </ul>
                            <div class="tab-content px-0 border-0" id="paymentTabsContent">
                              <!-- Credit card -->
                              <div
                                class="tab-pane fade show active"
                                id="pills-cc"
                                role="tabpanel"
                                aria-labelledby="pills-cc-tab">
                                <div class="row g-3">
                                  <div class="col-12">
                                    <label class="form-label w-100" for="paymentCard">Card Number</label>
                                    <div class="input-group input-group-merge">
                                      <input
                                        id="paymentCard"
                                        name="paymentCard"
                                        class="form-control credit-card-mask"
                                        type="text"
                                        placeholder="1356 3215 6548 7898"
                                        aria-describedby="paymentCard2" />
                                      <span class="input-group-text cursor-pointer p-1" id="paymentCard2"
                                        ><span class="card-type"></span
                                      ></span>
                                    </div>
                                  </div>
                                  <div class="col-12 col-md-6">
                                    <label class="form-label" for="paymentCardName">Name</label>
                                    <input
                                      type="text"
                                      id="paymentCardName"
                                      class="form-control"
                                      placeholder="John Doe" />
                                  </div>
                                  <div class="col-6 col-md-3">
                                    <label class="form-label" for="paymentCardExpiryDate">Exp. Date</label>
                                    <input
                                      type="text"
                                      id="paymentCardExpiryDate"
                                      class="form-control expiry-date-mask"
                                      placeholder="MM/YY" />
                                  </div>
                                  <div class="col-6 col-md-3">
                                    <label class="form-label" for="paymentCardCvv">CVV Code</label>
                                    <div class="input-group input-group-merge">
                                      <input
                                        type="text"
                                        id="paymentCardCvv"
                                        class="form-control cvv-code-mask"
                                        maxlength="3"
                                        placeholder="654" />
                                      <span class="input-group-text cursor-pointer" id="paymentCardCvv2"
                                        ><i
                                          class="bx bx-help-circle text-muted"
                                          data-bs-toggle="tooltip"
                                          data-bs-placement="top"
                                          title="Card Verification Value"></i
                                      ></span>
                                    </div>
                                  </div>
                                  <div class="col-12">
                                    <label class="switch">
                                      <input type="checkbox" class="switch-input" />
                                      <span class="switch-toggle-slider">
                                        <span class="switch-on"></span>
                                        <span class="switch-off"></span>
                                      </span>
                                      <span class="switch-label">Save card for future billing?</span>
                                    </label>
                                  </div>
                                  <div class="col-12">
                                    <button type="button" class="btn btn-primary btn-next me-sm-3 me-1">Submit</button>
                                    <button type="reset" class="btn btn-label-secondary">Cancel</button>
                                  </div>
                                </div>
                              </div>

                              <!-- COD -->
                              <div class="tab-pane fade" id="pills-cod" role="tabpanel" aria-labelledby="pills-cod-tab">
                                <p>
                                  Cash on Delivery is a type of payment method where the recipient make payment for the
                                  order at the time of delivery rather than in advance.
                                </p>
                                <button type="button" class="btn btn-primary btn-next">Pay On Delivery</button>
                              </div>

                              <!-- Gift card -->
                              <div
                                class="tab-pane fade"
                                id="pills-gift-card"
                                role="tabpanel"
                                aria-labelledby="pills-gift-card-tab">
                                <h6>Enter Gift Card Details</h6>
                                <div class="row g-3">
                                  <div class="col-12">
                                    <label for="giftCardNumber" class="form-label">Gift card number</label>
                                    <input
                                      type="number"
                                      class="form-control"
                                      id="giftCardNumber"
                                      placeholder="Gift card number" />
                                  </div>
                                  <div class="col-12">
                                    <label for="giftCardPin" class="form-label">Gift card pin</label>
                                    <input
                                      type="number"
                                      class="form-control"
                                      id="giftCardPin"
                                      placeholder="Gift card pin" />
                                  </div>
                                  <div class="col-12">
                                    <button type="button" class="btn btn-primary btn-next">Redeem Gift Card</button>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                        <!-- Address right -->
                        <div class="col-xl-4 col-xxl-3">
                          <div class="border rounded p-4">
                            <!-- Price Details -->
                            <h6>Price Details</h6>
                            <dl class="row">
                              <dt class="col-6 fw-normal">Order Total</dt>
                              <dd class="col-6 text-end">$1198.00</dd>

                              <dt class="col-6 fw-normal">Delivery Charges</dt>
                              <dd class="col-6 text-end">
                                <s class="text-muted">$5.00</s> <span class="badge bg-label-success ms-1">Free</span>
                              </dd>
                            </dl>
                            <hr class="mx-n4" />
                            <dl class="row">
                              <dt class="col-6 mb-3">Total</dt>
                              <dd class="col-6 fw-medium text-end mb-0">$1198.00</dd>

                              <dt class="col-6 fw-normal">Deliver to:</dt>
                              <dd class="col-6 fw-medium text-end mb-0">
                                <span class="badge bg-label-primary">Home</span>
                              </dd>
                            </dl>
                            <!-- Address Details -->
                            <address class="text-heading">
                              <span> John Doe (Default),</span>
                              4135 Parkway Street, Los Angeles, CA, 90017.<br />
                              Mobile : +1 906 568 2332
                            </address>
                            <a href="javascript:void(0)">Change address</a>
                          </div>
                        </div>
                      </div>
                    </div>

                    <!-- Confirmation -->
                    <div id="checkout-confirmation" class="content">
                      <div class="row mb-3">
                        <div class="col-12 col-lg-8 mx-auto text-center mb-3">
                          <h4 class="mt-2">Thank You! ð</h4>
                          <p>Your order <a href="javascript:void(0)">#1536548131</a> has been placed!</p>
                          <p>
                            We sent an email to <a href="mailto:john.doe@example.com">john.doe@example.com</a> with your
                            order confirmation and receipt. If the email hasn't arrived within two minutes, please check
                            your spam folder to see if the email was routed there.
                          </p>
                          <p>
                            <span class="fw-medium"><i class="bx bx-time-five me-1"></i> Time placed:&nbsp;</span>
                            25/05/2020 13:35pm
                          </p>
                        </div>
                        <!-- Confirmation details -->
                        <div class="col-12">
                          <ul class="list-group list-group-horizontal-md">
                            <li class="list-group-item flex-fill p-4 text-heading">
                              <h6 class="d-flex align-items-center gap-1"><i class="bx bx-map"></i> Shipping</h6>
                              <address class="mb-0">
                                John Doe <br />
                                4135 Parkway Street,<br />
                                Los Angeles, CA 90017,<br />
                                USA
                              </address>
                              <p class="mb-0 mt-3">+123456789</p>
                            </li>
                            <li class="list-group-item flex-fill p-4 text-heading">
                              <h6 class="d-flex align-items-center gap-1">
                                <i class="bx bx-credit-card"></i> Billing Address
                              </h6>
                              <address class="mb-0">
                                John Doe <br />
                                4135 Parkway Street,<br />
                                Los Angeles, CA 90017,<br />
                                USA
                              </address>
                              <p class="mb-0 mt-3">+123456789</p>
                            </li>
                            <li class="list-group-item flex-fill p-4 text-heading">
                              <h6 class="d-flex align-items-center gap-1">
                                <i class="bx bxs-ship"></i> Shipping Method
                              </h6>
                              <p class="fw-medium mb-3">Preferred Method:</p>
                              Standard Delivery<br />
                              (Normally 3-4 business days)
                            </li>
                          </ul>
                        </div>
                      </div>

                      <div class="row">
                        <!-- Confirmation items -->
                        <div class="col-xl-9 mb-3 mb-xl-0">
                          <ul class="list-group">
                            <li class="list-group-item p-4">
                              <div class="d-flex gap-3">
                                <div class="flex-shrink-0">
                                  <img src="../../assets/img/products/1.png" alt="google home" class="w-px-75" />
                                </div>
                                <div class="flex-grow-1">
                                  <div class="row">
                                    <div class="col-md-8">
                                      <a href="javascript:void(0)" class="text-body">
                                        <p>Google - Google Home - White</p>
                                      </a>
                                      <div class="text-muted mb-1 d-flex flex-wrap">
                                        <span class="me-1">Sold by:</span>
                                        <a href="javascript:void(0)" class="me-3">Apple</a>
                                        <span class="badge bg-label-success">In Stock</span>
                                      </div>
                                    </div>
                                    <div class="col-md-4">
                                      <div class="text-md-end">
                                        <div class="my-2 my-lg-4">
                                          <span class="text-primary">$299/</span><s class="text-muted">$359</s>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </li>
                            <li class="list-group-item p-4">
                              <div class="d-flex gap-3">
                                <div class="flex-shrink-0">
                                  <img src="../../assets/img/products/2.png" alt="google home" class="w-px-75" />
                                </div>
                                <div class="flex-grow-1">
                                  <div class="row">
                                    <div class="col-md-8">
                                      <a href="javascript:void(0)" class="text-body">
                                        <p>Apple iPhone 11 (64GB, Black)</p>
                                      </a>
                                      <div class="text-muted mb-1 d-flex flex-wrap">
                                        <span class="me-1">Sold by:</span>
                                        <a href="javascript:void(0)" class="me-3">Apple</a>
                                        <span class="badge bg-label-success">In Stock</span>
                                      </div>
                                    </div>
                                    <div class="col-md-4">
                                      <div class="text-md-end">
                                        <div class="my-2 my-lg-4">
                                          <span class="text-primary">$299/</span><s class="text-muted">$359</s>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </li>
                          </ul>
                        </div>
                        <!-- Confirmation total -->
                        <div class="col-xl-3">
                          <div class="border rounded p-4 pb-3">
                            <!-- Price Details -->
                            <h6>Price Details</h6>
                            <dl class="row mb-0">
                              <dt class="col-6 fw-normal">Order Total</dt>
                              <dd class="col-6 text-end">$1198.00</dd>

                              <dt class="col-sm-6 fw-normal">Delivery Charges</dt>
                              <dd class="col-sm-6 text-end">
                                <s class="text-muted">$5.00</s> <span class="badge bg-label-success ms-1">Free</span>
                              </dd>
                            </dl>
                            <hr class="mx-n4" />
                            <dl class="row mb-0">
                              <dt class="col-6">Total</dt>
                              <dd class="col-6 fw-medium text-end mb-0">$1198.00</dd>
                            </dl>
                          </div>
                        </div>
                      </div>
                    </div>
                  </form>
                </div>
              </div>
              <!--/ Checkout Wizard -->

              <!-- Add new address modal -->
              <!-- Add New Address Modal -->
              <div class="modal fade" id="addNewAddress" tabindex="-1" aria-hidden="true">
                <div class="modal-dialog modal-lg modal-simple modal-add-new-address">
                  <div class="modal-content p-3 p-md-5">
                    <div class="modal-body">
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                      <div class="text-center mb-4">
                        <h3 class="address-title">Add New Address</h3>
                        <p class="address-subtitle">Add new address for express delivery</p>
                      </div>
                      <form id="addNewAddressForm" class="row g-3" onsubmit="return false">
                        <div class="col-12">
                          <div class="row">
                            <div class="col-md mb-md-0 mb-3">
                              <div class="form-check custom-option custom-option-icon">
                                <label class="form-check-label custom-option-content" for="customRadioHome">
                                  <span class="custom-option-body">
                                    <i class="bx bx-home"></i>
                                    <span class="custom-option-title">Home</span>
                                    <small> Delivery time (9am â 9pm) </small>
                                  </span>
                                  <input
                                    name="customRadioIcon"
                                    class="form-check-input"
                                    type="radio"
                                    value=""
                                    id="customRadioHome"
                                    checked />
                                </label>
                              </div>
                            </div>
                            <div class="col-md mb-md-0 mb-3">
                              <div class="form-check custom-option custom-option-icon">
                                <label class="form-check-label custom-option-content" for="customRadioOffice">
                                  <span class="custom-option-body">
                                    <i class="bx bx-briefcase"></i>
                                    <span class="custom-option-title"> Office </span>
                                    <small> Delivery time (9am â 5pm) </small>
                                  </span>
                                  <input
                                    name="customRadioIcon"
                                    class="form-check-input"
                                    type="radio"
                                    value=""
                                    id="customRadioOffice" />
                                </label>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="col-12 col-md-6">
                          <label class="form-label" for="modalAddressFirstName">First Name</label>
                          <input
                            type="text"
                            id="modalAddressFirstName"
                            name="modalAddressFirstName"
                            class="form-control"
                            placeholder="John" />
                        </div>
                        <div class="col-12 col-md-6">
                          <label class="form-label" for="modalAddressLastName">Last Name</label>
                          <input
                            type="text"
                            id="modalAddressLastName"
                            name="modalAddressLastName"
                            class="form-control"
                            placeholder="Doe" />
                        </div>
                        <div class="col-12">
                          <label class="form-label" for="modalAddressCountry">Country</label>
                          <select
                            id="modalAddressCountry"
                            name="modalAddressCountry"
                            class="select2 form-select"
                            data-allow-clear="true">
                            <option value="">Select</option>
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
                        <div class="col-12">
                          <label class="form-label" for="modalAddressAddress1">Address Line 1</label>
                          <input
                            type="text"
                            id="modalAddressAddress1"
                            name="modalAddressAddress1"
                            class="form-control"
                            placeholder="12, Business Park" />
                        </div>
                        <div class="col-12">
                          <label class="form-label" for="modalAddressAddress2">Address Line 2</label>
                          <input
                            type="text"
                            id="modalAddressAddress2"
                            name="modalAddressAddress2"
                            class="form-control"
                            placeholder="Mall Road" />
                        </div>
                        <div class="col-12 col-md-6">
                          <label class="form-label" for="modalAddressLandmark">Landmark</label>
                          <input
                            type="text"
                            id="modalAddressLandmark"
                            name="modalAddressLandmark"
                            class="form-control"
                            placeholder="Nr. Hard Rock Cafe" />
                        </div>
                        <div class="col-12 col-md-6">
                          <label class="form-label" for="modalAddressCity">City</label>
                          <input
                            type="text"
                            id="modalAddressCity"
                            name="modalAddressCity"
                            class="form-control"
                            placeholder="Los Angeles" />
                        </div>
                        <div class="col-12 col-md-6">
                          <label class="form-label" for="modalAddressLandmark">State</label>
                          <input
                            type="text"
                            id="modalAddressState"
                            name="modalAddressState"
                            class="form-control"
                            placeholder="California" />
                        </div>
                        <div class="col-12 col-md-6">
                          <label class="form-label" for="modalAddressZipCode">Zip Code</label>
                          <input
                            type="text"
                            id="modalAddressZipCode"
                            name="modalAddressZipCode"
                            class="form-control"
                            placeholder="99950" />
                        </div>
                        <div class="col-12">
                          <label class="switch">
                            <input type="checkbox" class="switch-input" />
                            <span class="switch-toggle-slider">
                              <span class="switch-on"></span>
                              <span class="switch-off"></span>
                            </span>
                            <span class="switch-label">Use as a billing address?</span>
                          </label>
                        </div>
                        <div class="col-12 text-center">
                          <button type="submit" class="btn btn-primary me-sm-3 me-1">Submit</button>
                          <button
                            type="reset"
                            class="btn btn-label-secondary"
                            data-bs-dismiss="modal"
                            aria-label="Close">
                            Cancel
                          </button>
                        </div>
                      </form>
                    </div>
                  </div>
                </div>
              </div>
              <!--/ Add New Address Modal -->
            </div>
            <!-- / Content -->

            <!-- Footer -->
            <footer class="content-footer footer bg-footer-theme">
              <div class="container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">
                <div class="mb-2 mb-md-0">
                  Â©
                  <script>
                    document.write(new Date().getFullYear());
                  </script>
                  , made with â¤ï¸ by
                  <a href="https://themeselection.com" target="_blank" class="footer-link fw-medium">ThemeSelection</a>
                </div>
                <div class="d-none d-lg-inline-block">
                  <a href="https://themeselection.com/license/" class="footer-link me-4" target="_blank">License</a>
                  <a href="https://themeselection.com/" target="_blank" class="footer-link me-4">More Themes</a>

                  <a
                    href="https://demos.themeselection.com/sneat-bootstrap-html-admin-template/documentation/"
                    target="_blank"
                    class="footer-link"
                    >Documentation</a
                  >

                  <a
                    href="https://themeselection.com/support/"
                    target="_blank"
                    class="footer-link d-none d-sm-inline-block"
                    >Support</a
                  >
                </div>
              </div>
            </footer>
            <!-- / Footer -->

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
    <script src="../../assets/vendor/libs/select2/select2.js"></script>
    <script src="../../assets/vendor/libs/bs-stepper/bs-stepper.js"></script>
    <script src="../../assets/vendor/libs/rateyo/rateyo.js"></script>
    <script src="../../assets/vendor/libs/cleavejs/cleave.js"></script>
    <script src="../../assets/vendor/libs/cleavejs/cleave-phone.js"></script>
    <script src="../../assets/vendor/libs/@form-validation/umd/bundle/popular.min.js"></script>
    <script src="../../assets/vendor/libs/@form-validation/umd/plugin-bootstrap5/index.min.js"></script>
    <script src="../../assets/vendor/libs/@form-validation/umd/plugin-auto-focus/index.min.js"></script>

    <!-- Main JS -->
    <script src="../../assets/js/main.js"></script>

    <!-- Page JS -->

    <script src="../../assets/js/modal-add-new-address.js"></script>
    <script src="../../assets/js/wizard-ex-checkout.js"></script>
  </body>
</html>
