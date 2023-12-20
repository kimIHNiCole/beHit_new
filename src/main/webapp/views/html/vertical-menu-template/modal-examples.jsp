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

    <title>Modals - UI elements | Sneat - Bootstrap 5 HTML Admin Template - Pro</title>

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
    <link rel="stylesheet" href="../../assets/vendor/libs/@form-validation/umd/styles/index.min.css" />
    <link rel="stylesheet" href="../../assets/vendor/libs/bs-stepper/bs-stepper.css" />

    <!-- Page CSS -->

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
            <li class="menu-item active">
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
              <h4 class="py-3 mb-4">Modal Examples</h4>

              <div class="row mb-4">
                <!--  Pricing -->
                <div class="col-12 col-sm-6 col-lg-4 mb-4">
                  <div class="card">
                    <div class="card-body text-center">
                      <i class="mb-3 bx bx-md bx-bar-chart-alt-2"></i>
                      <h5>Pricing</h5>
                      <p>Elegant pricing options modal popup example, easy to use in any page.</p>
                      <button
                        type="button"
                        class="btn btn-primary"
                        data-bs-toggle="modal"
                        data-bs-target="#pricingModal">
                        Show
                      </button>
                    </div>
                  </div>
                </div>
                <!--/  Pricing -->

                <!--  Add New Credit Card -->
                <div class="col-12 col-sm-6 col-lg-4 mb-4">
                  <div class="card">
                    <div class="card-body text-center">
                      <i class="mb-3 bx bx-md bx-credit-card"></i>
                      <h5>Add New Credit Card</h5>
                      <p>Quickly collect the credit card details, built in input mask and form validation support.</p>
                      <button
                        type="button"
                        class="btn btn-primary"
                        data-bs-toggle="modal"
                        data-bs-target="#addNewCCModal">
                        Show
                      </button>
                    </div>
                  </div>
                </div>
                <!--/  Add New Credit Card -->

                <!--  Add New Address -->
                <div class="col-12 col-sm-6 col-lg-4 mb-4">
                  <div class="card">
                    <div class="card-body text-center">
                      <i class="mb-3 bx bx-md bx-buildings"></i>
                      <h5>Add New Address</h5>
                      <p>Ready to use form to collect user address data with validation and custom input support.</p>
                      <button
                        type="button"
                        class="btn btn-primary"
                        data-bs-toggle="modal"
                        data-bs-target="#addNewAddress">
                        Show
                      </button>
                    </div>
                  </div>
                </div>
                <!--/  Add New Address -->

                <!--  Refer & Earn -->
                <div class="col-12 col-sm-6 col-lg-4 mb-4">
                  <div class="card">
                    <div class="card-body text-center">
                      <i class="mb-3 bx bx-md bx-gift"></i>
                      <h5>Refer & Earn</h5>
                      <p>Use Refer & Earn modal to encourage your exiting customers refer their friends & colleague.</p>
                      <button
                        type="button"
                        class="btn btn-primary"
                        data-bs-toggle="modal"
                        data-bs-target="#referAndEarn">
                        Show
                      </button>
                    </div>
                  </div>
                </div>
                <!--/  Refer & Earn -->

                <!--  Edit User -->
                <div class="col-12 col-sm-6 col-lg-4 mb-4">
                  <div class="card">
                    <div class="card-body text-center">
                      <i class="mb-3 bx bx-md bx-user"></i>
                      <h5>Edit User</h5>
                      <p>Easily update the user data on the go, built in form validation and custom controls.</p>
                      <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#editUser">
                        Show
                      </button>
                    </div>
                  </div>
                </div>
                <!--/  Edit User -->

                <!--  Enable OTP -->
                <div class="col-12 col-sm-6 col-lg-4 mb-md-0 mb-4">
                  <div class="card">
                    <div class="card-body text-center">
                      <i class="mb-3 bx bx-md bx-mobile-alt"></i>
                      <h5>Enable OTP</h5>
                      <p>Use this modal to enhance your application security by enabling authentication with OTP.</p>
                      <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#enableOTP">
                        Show
                      </button>
                    </div>
                  </div>
                </div>
                <!--/  Enable OTP -->

                <!--  Share Project -->
                <div class="col-12 col-sm-6 col-lg-4 mb-4">
                  <div class="card">
                    <div class="card-body text-center">
                      <i class="mb-3 bx bx-md bx-file"></i>
                      <h5>Share Project</h5>
                      <p>Elegant Share Project options modal popup example, easy to use in any page.</p>
                      <button
                        type="button"
                        class="btn btn-primary"
                        data-bs-toggle="modal"
                        data-bs-target="#shareProject">
                        Show
                      </button>
                    </div>
                  </div>
                </div>
                <!--/  Share Project -->

                <!--  Create App -->
                <div class="col-12 col-sm-6 col-lg-4 mb-4">
                  <div class="card">
                    <div class="card-body text-center">
                      <i class="mb-3 bx bx-md bx-cube"></i>
                      <h5>Create App</h5>
                      <p>Provide application data with this form to create your app, easy to use in page.</p>
                      <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#createApp">
                        Show
                      </button>
                    </div>
                  </div>
                </div>
                <!--/  Create App -->

                <!--  Two Factor Auth -->
                <div class="col-12 col-sm-6 col-lg-4 mb-4">
                  <div class="card">
                    <div class="card-body text-center">
                      <i class="mb-3 bx bx-lock bx-md"></i>
                      <h5>Two Factor Auth</h5>
                      <p>Enhance your application security by enabling two factor authentication.</p>
                      <button
                        type="button"
                        class="btn btn-primary"
                        data-bs-toggle="modal"
                        data-bs-target="#twoFactorAuth">
                        Show
                      </button>
                    </div>
                  </div>
                </div>
                <!--/  Two Factor Auth -->

                <!--  Payment providers -->
                <div class="col-12 col-sm-6 col-lg-4 mb-4 mb-sm-0">
                  <div class="card">
                    <div class="card-body text-center">
                      <i class="mb-3 bx bx-credit-card-alt bx-md"></i>
                      <h5>Payment providers</h5>
                      <p>Elegant payment options modal popup example, easy to use in any page.</p>
                      <button
                        type="button"
                        class="btn btn-primary"
                        data-bs-toggle="modal"
                        data-bs-target="#paymentProvider">
                        Show
                      </button>
                    </div>
                  </div>
                </div>
                <!--/  Payment providers -->

                <!--  Payment methods -->
                <div class="col-12 col-sm-6 col-lg-4">
                  <div class="card">
                    <div class="card-body text-center">
                      <i class="mb-3 bx bxs-credit-card bx-md"></i>
                      <h5>Add Payment Method</h5>
                      <p>Elegant payment methods modal popup example, easy to use in any page.</p>
                      <button
                        type="button"
                        class="btn btn-primary"
                        data-bs-toggle="modal"
                        data-bs-target="#paymentMethods">
                        Show
                      </button>
                    </div>
                  </div>
                </div>
                <!--/  Payment methods -->
              </div>

              <!-- All Modals -->
              <!-- Pricing Modal -->
              <div class="modal fade" id="pricingModal" tabindex="-1" aria-hidden="true">
                <div class="modal-dialog modal-xl modal-simple modal-pricing">
                  <div class="modal-content p-0 p-md-2 p-xl-5">
                    <div class="modal-body px-2 px-md-4">
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                      <!-- Pricing Plans -->
                      <div class="rounded-top">
                        <h2 class="text-center mb-2 mt-0 mt-md-4 px-2">Find the right plan for your site</h2>
                        <p class="text-center pb-3 px-2">
                          Get started with us - it's perfect for individuals and teams. Choose a subscription plan that
                          meets your needs.
                        </p>
                        <div class="d-flex align-items-center justify-content-center flex-wrap gap-2 py-5 mb-0">
                          <label class="switch switch-primary ms-sm-5 ps-sm-5 me-0">
                            <span class="switch-label">Monthly</span>
                            <input type="checkbox" class="switch-input price-duration-toggler" checked />
                            <span class="switch-toggle-slider">
                              <span class="switch-on"></span>
                              <span class="switch-off"></span>
                            </span>
                            <span class="switch-label">Annual</span>
                          </label>
                          <div class="mt-n5 ms-n5 ml-2 mb-2 d-none d-sm-inline-flex align-items-start">
                            <img
                              src="../../assets/img/pages/pricing-arrow-light.png"
                              alt="arrow img"
                              class="scaleX-n1-rtl mt-2 pt-1"
                              data-app-dark-img="pages/pricing-arrow-dark.png"
                              data-app-light-img="pages/pricing-arrow-light.png" />
                            <span class="badge badge-sm bg-label-primary">Save upto 10%</span>
                          </div>
                        </div>

                        <div class="row mx-0 gy-3">
                          <!-- Basic -->
                          <div class="col-lg mb-md-0 mb-4">
                            <div class="card border rounded shadow-none">
                              <div class="card-body position-relative">
                                <div class="my-3 pt-2 text-center">
                                  <img
                                    src="../../assets/img/icons/unicons/bookmark.png"
                                    alt="Starter Image"
                                    height="80" />
                                </div>
                                <h3 class="card-title text-center text-capitalize mb-1">Basic</h3>
                                <p class="text-center">A simple start for everyone</p>
                                <div class="text-center">
                                  <div class="d-flex justify-content-center">
                                    <sup class="h6 pricing-currency mt-3 mb-0 me-1 text-primary">$</sup>
                                    <h1 class="display-4 mb-0 text-primary">0</h1>
                                    <sub class="h6 pricing-duration mt-auto mb-2 text-muted fw-normal">/month</sub>
                                  </div>
                                  <small
                                    class="position-absolute start-0 end-0 m-auto price-yearly price-yearly-toggle text-muted"
                                    >Free</small
                                  >
                                </div>

                                <ul class="list-group my-4 list-unstyled">
                                  <li class="mb-2 d-flex align-items-center">
                                    <span class="badge badge-center w-px-20 h-px-20 rounded-pill bg-label-primary me-2"
                                      ><i class="bx bx-check bx-xs"></i
                                    ></span>
                                    <span>100 responses a month</span>
                                  </li>
                                  <li class="mb-2 d-flex align-items-center">
                                    <span class="badge badge-center w-px-20 h-px-20 rounded-pill bg-label-primary me-2"
                                      ><i class="bx bx-check bx-xs"></i
                                    ></span>
                                    <span>Unlimited forms and surveys</span>
                                  </li>
                                  <li class="mb-2 d-flex align-items-center">
                                    <span class="badge badge-center w-px-20 h-px-20 rounded-pill bg-label-primary me-2"
                                      ><i class="bx bx-check bx-xs"></i
                                    ></span>
                                    <span>Unlimited fields</span>
                                  </li>
                                  <li class="mb-2 d-flex align-items-center">
                                    <span class="badge badge-center w-px-20 h-px-20 rounded-pill bg-label-primary me-2"
                                      ><i class="bx bx-check bx-xs"></i
                                    ></span>
                                    <span>Basic form creation tools</span>
                                  </li>
                                  <li class="mb-0 d-flex align-items-center">
                                    <span class="badge badge-center w-px-20 h-px-20 rounded-pill bg-label-primary me-2"
                                      ><i class="bx bx-check bx-xs"></i
                                    ></span>
                                    <span>Up to 2 subdomains</span>
                                  </li>
                                </ul>

                                <button
                                  type="button"
                                  class="btn btn-label-success d-grid w-100"
                                  data-bs-dismiss="modal">
                                  Your Current Plan
                                </button>
                              </div>
                            </div>
                          </div>

                          <!-- Pro -->
                          <div class="col-lg mb-md-0 mb-4">
                            <div class="card border-primary border shadow-none">
                              <div class="card-body position-relative">
                                <div class="position-absolute end-0 me-4 top-0 mt-4">
                                  <span class="badge bg-label-primary">Popular</span>
                                </div>
                                <div class="my-3 pt-2 text-center">
                                  <img
                                    src="../../assets/img/icons/unicons/wallet-round.png"
                                    alt="Pro Image"
                                    height="80" />
                                </div>
                                <h3 class="card-title text-center text-capitalize mb-1">Pro</h3>
                                <p class="text-center">For small to medium businesses</p>
                                <div class="text-center">
                                  <div class="d-flex justify-content-center">
                                    <sup class="h6 pricing-currency mt-3 mb-0 me-1 text-primary">$</sup>
                                    <h1 class="price-toggle price-yearly display-4 text-primary mb-0">7</h1>
                                    <h1 class="price-toggle price-monthly display-4 text-primary mb-0 d-none">9</h1>
                                    <sub class="h6 text-muted pricing-duration mt-auto mb-2 fw-normal">/month</sub>
                                  </div>
                                  <small
                                    class="position-absolute start-0 end-0 m-auto price-yearly price-yearly-toggle text-muted"
                                    >$ 499 / year</small
                                  >
                                </div>

                                <ul class="list-group my-4 list-unstyled">
                                  <li class="mb-2 d-flex align-items-center">
                                    <span class="badge badge-center w-px-20 h-px-20 rounded-pill bg-label-primary me-2"
                                      ><i class="bx bx-check bx-xs"></i></span
                                    ><span>Up to 5 users</span>
                                  </li>
                                  <li class="mb-2 d-flex align-items-center">
                                    <span class="badge badge-center w-px-20 h-px-20 rounded-pill bg-label-primary me-2"
                                      ><i class="bx bx-check bx-xs"></i></span
                                    ><span>120+ components</span>
                                  </li>
                                  <li class="mb-2 d-flex align-items-center">
                                    <span class="badge badge-center w-px-20 h-px-20 rounded-pill bg-label-primary me-2"
                                      ><i class="bx bx-check bx-xs"></i></span
                                    ><span>Basic support on Github</span>
                                  </li>
                                  <li class="mb-2 d-flex align-items-center">
                                    <span class="badge badge-center w-px-20 h-px-20 rounded-pill bg-label-primary me-2"
                                      ><i class="bx bx-check bx-xs"></i></span
                                    ><span>Monthly updates</span>
                                  </li>
                                  <li class="mb-0 d-flex align-items-center">
                                    <span class="badge badge-center w-px-20 h-px-20 rounded-pill bg-label-primary me-2"
                                      ><i class="bx bx-check bx-xs"></i></span
                                    ><span>Integrations</span>
                                  </li>
                                </ul>

                                <button type="button" class="btn btn-primary d-grid w-100" data-bs-dismiss="modal">
                                  Upgrade
                                </button>
                              </div>
                            </div>
                          </div>

                          <!-- Enterprise -->
                          <div class="col-lg">
                            <div class="card border rounded shadow-none">
                              <div class="card-body">
                                <div class="my-3 pt-2 text-center">
                                  <img
                                    src="../../assets/img/icons/unicons/briefcase-round.png"
                                    alt="Pro Image"
                                    height="80" />
                                </div>
                                <h3 class="card-title text-center text-capitalize mb-1">Enterprise</h3>
                                <p class="text-center">Solution for big organizations</p>

                                <div class="text-center">
                                  <div class="d-flex justify-content-center">
                                    <sup class="h6 text-primary pricing-currency mt-3 mb-0 me-1">$</sup>
                                    <h1 class="price-toggle price-yearly display-4 text-primary mb-0">16</h1>
                                    <h1 class="price-toggle price-monthly display-4 text-primary mb-0 d-none">19</h1>
                                    <sub class="h6 pricing-duration mt-auto mb-2 fw-normal text-muted">/month</sub>
                                  </div>
                                  <small
                                    class="position-absolute start-0 end-0 m-auto price-yearly price-yearly-toggle text-muted"
                                    >$ 999 / year</small
                                  >
                                </div>

                                <ul class="list-group my-4 list-unstyled">
                                  <li class="mb-2 d-flex align-items-center">
                                    <span class="badge badge-center w-px-20 h-px-20 rounded-pill bg-label-primary me-2"
                                      ><i class="bx bx-check bx-xs"></i></span
                                    ><span>Up to 10 users</span>
                                  </li>
                                  <li class="mb-2 d-flex align-items-center">
                                    <span class="badge badge-center w-px-20 h-px-20 rounded-pill bg-label-primary me-2"
                                      ><i class="bx bx-check bx-xs"></i></span
                                    ><span>150+ components</span>
                                  </li>
                                  <li class="mb-2 d-flex align-items-center">
                                    <span class="badge badge-center w-px-20 h-px-20 rounded-pill bg-label-primary me-2"
                                      ><i class="bx bx-check bx-xs"></i></span
                                    ><span>Basic support on Github</span>
                                  </li>
                                  <li class="mb-2 d-flex align-items-center">
                                    <span class="badge badge-center w-px-20 h-px-20 rounded-pill bg-label-primary me-2"
                                      ><i class="bx bx-check bx-xs"></i></span
                                    ><span>Monthly updates</span>
                                  </li>
                                  <li class="mb-0 d-flex align-items-center">
                                    <span class="badge badge-center w-px-20 h-px-20 rounded-pill bg-label-primary me-2"
                                      ><i class="bx bx-check bx-xs"></i></span
                                    ><span>Speedy build tooling</span>
                                  </li>
                                </ul>

                                <button
                                  type="button"
                                  class="btn btn-label-primary d-grid w-100"
                                  data-bs-dismiss="modal">
                                  Upgrade
                                </button>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <!--/ Pricing Plans -->
                  </div>
                </div>
              </div>
              <!--/ Pricing Modal -->

              <script src="../../assets//js/pages-pricing.js"></script>

              <!-- Add New Credit Card Modal -->
              <div class="modal fade" id="addNewCCModal" tabindex="-1" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered1 modal-simple modal-add-new-cc">
                  <div class="modal-content p-3 p-md-5">
                    <div class="modal-body">
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                      <div class="text-center mb-4">
                        <h3>Add New Card</h3>
                        <p>Add new card to complete payment</p>
                      </div>
                      <form id="addNewCCForm" class="row g-3" onsubmit="return false">
                        <div class="col-12">
                          <label class="form-label w-100" for="modalAddCard">Card Number</label>
                          <div class="input-group input-group-merge">
                            <input
                              id="modalAddCard"
                              name="modalAddCard"
                              class="form-control credit-card-mask"
                              type="text"
                              placeholder="1356 3215 6548 7898"
                              aria-describedby="modalAddCard2" />
                            <span class="input-group-text cursor-pointer p-1" id="modalAddCard2"
                              ><span class="card-type"></span
                            ></span>
                          </div>
                        </div>
                        <div class="col-12 col-md-6">
                          <label class="form-label" for="modalAddCardName">Name</label>
                          <input type="text" id="modalAddCardName" class="form-control" placeholder="John Doe" />
                        </div>
                        <div class="col-6 col-md-3">
                          <label class="form-label" for="modalAddCardExpiryDate">Exp. Date</label>
                          <input
                            type="text"
                            id="modalAddCardExpiryDate"
                            class="form-control expiry-date-mask"
                            placeholder="MM/YY" />
                        </div>
                        <div class="col-6 col-md-3">
                          <label class="form-label" for="modalAddCardCvv">CVV Code</label>
                          <div class="input-group input-group-merge">
                            <input
                              type="text"
                              id="modalAddCardCvv"
                              class="form-control cvv-code-mask"
                              maxlength="3"
                              placeholder="654" />
                            <span class="input-group-text cursor-pointer" id="modalAddCardCvv2"
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
                        <div class="col-12 text-center">
                          <button type="submit" class="btn btn-primary me-sm-3 me-1 mt-3">Submit</button>
                          <button
                            type="reset"
                            class="btn btn-label-secondary btn-reset mt-3"
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
              <!--/ Add New Credit Card Modal -->

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

              <!-- Refer & Earn Modal -->
              <div class="modal fade" id="referAndEarn" tabindex="-1" aria-hidden="true">
                <div class="modal-dialog modal-lg modal-simple modal-refer-and-earn">
                  <div class="modal-content p-3 p-md-5">
                    <div class="modal-body">
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                      <div class="text-center mb-4">
                        <h3>Refer & Earn</h3>
                        <p class="text-center mb-5 w-75 m-auto">
                          Invite your friend to Sneat, if they sign up, you and your friend will get 30 days free trial.
                        </p>
                      </div>
                      <div class="row">
                        <div class="col-12 col-lg-4 px-4">
                          <div class="d-flex justify-content-center mb-4">
                            <div class="modal-refer-and-earn-step bg-label-primary">
                              <i class="bx bx-message-square-dots"></i>
                            </div>
                          </div>
                          <div class="text-center">
                            <h5>Send Invitation ð¤ð»</h5>
                            <p class="mb-lg-0">Send your referral link to your friend</p>
                          </div>
                        </div>
                        <div class="col-12 col-lg-4 px-4">
                          <div class="d-flex justify-content-center mb-4">
                            <div class="modal-refer-and-earn-step bg-label-primary">
                              <i class="bx bx-detail"></i>
                            </div>
                          </div>
                          <div class="text-center">
                            <h5>Registration ð©ð»âð»</h5>
                            <p class="mb-lg-0">Let them register to our services</p>
                          </div>
                        </div>
                        <div class="col-12 col-lg-4 px-4">
                          <div class="d-flex justify-content-center mb-4">
                            <div class="modal-refer-and-earn-step bg-label-primary">
                              <i class="bx bx-gift"></i>
                            </div>
                          </div>
                          <div class="text-center">
                            <h5>Free Trial ð</h5>
                            <p class="mb-0">Your friend will get 30 days free trial</p>
                          </div>
                        </div>
                      </div>
                      <hr class="my-5" />
                      <h5>Invite your friends</h5>
                      <form class="row g-3" onsubmit="return false">
                        <div class="col-lg-10">
                          <label class="form-label" for="modalRnFEmail"
                            >Enter your friendâs email address and invite them to join Sneat ð</label
                          >
                          <input
                            type="text"
                            id="modalRnFEmail"
                            class="form-control"
                            placeholder="example@domain.com"
                            aria-label="example@domain.com" />
                        </div>
                        <div class="col-lg-2 d-flex align-items-end">
                          <button type="button" class="btn btn-primary">Send</button>
                        </div>
                      </form>
                      <h5 class="mt-4">Share the referral link</h5>
                      <form class="row g-3" onsubmit="return false">
                        <div class="col-lg-9">
                          <label class="form-label" for="modalRnFLink"
                            >You can also copy and send it or share it on your social media. ð¥³</label
                          >
                          <div class="input-group input-group-merge">
                            <input
                              type="text"
                              id="modalRnFLink"
                              class="form-control"
                              value="https://themeselection.com" />
                            <span class="input-group-text text-primary cursor-pointer" id="basic-addon33"
                              >Copy link</span
                            >
                          </div>
                        </div>
                        <div class="col-lg-3 d-flex align-items-end">
                          <div class="btn-social">
                            <button type="button" class="btn btn-icon btn-facebook me-2">
                              <i class="tf-icons bx bxl-facebook"></i>
                            </button>
                            <button type="button" class="btn btn-icon btn-twitter me-2">
                              <i class="tf-icons bx bxl-twitter"></i>
                            </button>
                            <button type="button" class="btn btn-icon btn-linkedin">
                              <i class="tf-icons bx bxl-linkedin"></i>
                            </button>
                          </div>
                        </div>
                      </form>
                    </div>
                  </div>
                </div>
              </div>
              <!--/ Refer & Earn Modal -->

              <!-- Edit User Modal -->
              <div class="modal fade" id="editUser" tabindex="-1" aria-hidden="true">
                <div class="modal-dialog modal-lg modal-simple modal-edit-user">
                  <div class="modal-content p-3 p-md-5">
                    <div class="modal-body">
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                      <div class="text-center mb-4">
                        <h3>Edit User Information</h3>
                        <p>Updating user details will receive a privacy audit.</p>
                      </div>
                      <form id="editUserForm" class="row g-3" onsubmit="return false">
                        <div class="col-12 col-md-6">
                          <label class="form-label" for="modalEditUserFirstName">First Name</label>
                          <input
                            type="text"
                            id="modalEditUserFirstName"
                            name="modalEditUserFirstName"
                            class="form-control"
                            placeholder="John" />
                        </div>
                        <div class="col-12 col-md-6">
                          <label class="form-label" for="modalEditUserLastName">Last Name</label>
                          <input
                            type="text"
                            id="modalEditUserLastName"
                            name="modalEditUserLastName"
                            class="form-control"
                            placeholder="Doe" />
                        </div>
                        <div class="col-12">
                          <label class="form-label" for="modalEditUserName">Username</label>
                          <input
                            type="text"
                            id="modalEditUserName"
                            name="modalEditUserName"
                            class="form-control"
                            placeholder="john.doe.007" />
                        </div>
                        <div class="col-12 col-md-6">
                          <label class="form-label" for="modalEditUserEmail">Email</label>
                          <input
                            type="text"
                            id="modalEditUserEmail"
                            name="modalEditUserEmail"
                            class="form-control"
                            placeholder="example@domain.com" />
                        </div>
                        <div class="col-12 col-md-6">
                          <label class="form-label" for="modalEditUserStatus">Status</label>
                          <select
                            id="modalEditUserStatus"
                            name="modalEditUserStatus"
                            class="form-select"
                            aria-label="Default select example">
                            <option selected>Status</option>
                            <option value="1">Active</option>
                            <option value="2">Inactive</option>
                            <option value="3">Suspended</option>
                          </select>
                        </div>
                        <div class="col-12 col-md-6">
                          <label class="form-label" for="modalEditTaxID">Tax ID</label>
                          <input
                            type="text"
                            id="modalEditTaxID"
                            name="modalEditTaxID"
                            class="form-control modal-edit-tax-id"
                            placeholder="123 456 7890" />
                        </div>
                        <div class="col-12 col-md-6">
                          <label class="form-label" for="modalEditUserPhone">Phone Number</label>
                          <div class="input-group input-group-merge">
                            <span class="input-group-text">+1</span>
                            <input
                              type="text"
                              id="modalEditUserPhone"
                              name="modalEditUserPhone"
                              class="form-control phone-number-mask"
                              placeholder="202 555 0111" />
                          </div>
                        </div>
                        <div class="col-12 col-md-6">
                          <label class="form-label" for="modalEditUserLanguage">Language</label>
                          <select
                            id="modalEditUserLanguage"
                            name="modalEditUserLanguage"
                            class="select2 form-select"
                            multiple>
                            <option value="">Select</option>
                            <option value="english" selected>English</option>
                            <option value="spanish">Spanish</option>
                            <option value="french">French</option>
                            <option value="german">German</option>
                            <option value="dutch">Dutch</option>
                            <option value="hebrew">Hebrew</option>
                            <option value="sanskrit">Sanskrit</option>
                            <option value="hindi">Hindi</option>
                          </select>
                        </div>
                        <div class="col-12 col-md-6">
                          <label class="form-label" for="modalEditUserCountry">Country</label>
                          <select
                            id="modalEditUserCountry"
                            name="modalEditUserCountry"
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
              <!--/ Edit User Modal -->

              <!-- Enable OTP Modal -->
              <div class="modal fade" id="enableOTP" tabindex="-1" aria-hidden="true">
                <div class="modal-dialog modal-simple modal-enable-otp modal-dialog-centered">
                  <div class="modal-content p-3 p-md-5">
                    <div class="modal-body">
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                      <div class="text-center mb-4">
                        <h3 class="mb-5">Enable One Time Password</h3>
                      </div>
                      <h6>Verify Your Mobile Number for SMS</h6>
                      <p>Enter your mobile phone number with country code and we will send you a verification code.</p>
                      <form id="enableOTPForm" class="row g-3" onsubmit="return false">
                        <div class="col-12">
                          <label class="form-label" for="modalEnableOTPPhone">Phone Number</label>
                          <div class="input-group input-group-merge">
                            <span class="input-group-text">+1</span>
                            <input
                              type="text"
                              id="modalEnableOTPPhone"
                              name="modalEnableOTPPhone"
                              class="form-control phone-number-otp-mask"
                              placeholder="202 555 0111" />
                          </div>
                        </div>
                        <div class="col-12">
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
              <!--/ Enable OTP Modal -->

              <!-- Share Project Modal -->
              <div class="modal fade" id="shareProject" tabindex="-1" aria-hidden="true">
                <div class="modal-dialog modal-lg modal-simple modal-enable-otp modal-dialog-centered">
                  <div class="modal-content p-3 p-md-5">
                    <div class="modal-body">
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                      <div class="text-center">
                        <h3 class="mb-2">Share Project</h3>
                        <p>Share project with a team member</p>
                      </div>
                    </div>
                    <div class="mb-4 pb-2">
                      <label for="select2Basic" class="form-label">Add Members</label>
                      <select
                        id="select2Basic"
                        class="form-select form-select-lg share-project-select"
                        data-allow-clear="true">
                        <option data-name="Adelaide Nichols" data-image="img/avatars/20.png" selected>
                          Adelaide Nichols
                        </option>
                        <option data-name="Julian Murphy" data-image="img/avatars/9.png">Julian Murphy</option>
                        <option data-name="Sophie Gilbert" data-image="img/avatars/10.png">Sophie Gilbert</option>
                        <option data-name="Marvin Wheeler" data-image="img/avatars/17.png">Marvin Wheeler</option>
                      </select>
                    </div>
                    <h4 class="mb-4 pb-2">8 Members</h4>
                    <ul class="p-0 m-0">
                      <li class="d-flex flex-wrap mb-3">
                        <div class="avatar me-3">
                          <img src="../../assets/img/avatars/1.png" alt="avatar" class="rounded-circle" />
                        </div>
                        <div class="d-flex justify-content-between flex-grow-1">
                          <div class="me-2">
                            <p class="mb-0">Lester Palmer</p>
                            <p class="mb-0 text-muted">pe@vogeiz.net</p>
                          </div>
                          <div class="dropdown">
                            <button
                              type="button"
                              class="btn dropdown-toggle p-2"
                              data-bs-toggle="dropdown"
                              aria-expanded="false">
                              <span class="text-muted fw-normal me-2 d-none d-sm-inline-block">Can Edit</span>
                            </button>
                            <ul class="dropdown-menu dropdown-menu-end">
                              <li>
                                <a class="dropdown-item" href="javascript:void(0);">Owner</a>
                              </li>
                              <li>
                                <a class="dropdown-item" href="javascript:void(0);">Can Edit</a>
                              </li>
                              <li>
                                <a class="dropdown-item" href="javascript:void(0);">Can Comment</a>
                              </li>
                              <li>
                                <a class="dropdown-item" href="javascript:void(0);">Can View</a>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </li>
                      <li class="d-flex flex-wrap mb-3">
                        <div class="avatar me-3">
                          <img src="../../assets/img/avatars/2.png" alt="avatar" class="rounded-circle" />
                        </div>
                        <div class="d-flex justify-content-between flex-grow-1">
                          <div class="me-2">
                            <p class="mb-0">Mattie Blair</p>
                            <p class="mb-0 text-muted">peromak@zukedohik.gov</p>
                          </div>
                          <div class="dropdown">
                            <button
                              type="button"
                              class="btn dropdown-toggle p-2"
                              data-bs-toggle="dropdown"
                              aria-expanded="false">
                              <span class="text-muted fw-normal me-2 d-none d-sm-inline-block">Owner</span>
                            </button>
                            <ul class="dropdown-menu dropdown-menu-end">
                              <li>
                                <a class="dropdown-item" href="javascript:void(0);">Owner</a>
                              </li>
                              <li>
                                <a class="dropdown-item" href="javascript:void(0);">Can Edit</a>
                              </li>
                              <li>
                                <a class="dropdown-item" href="javascript:void(0);">Can Comment</a>
                              </li>
                              <li>
                                <a class="dropdown-item" href="javascript:void(0);">Can View</a>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </li>
                      <li class="d-flex flex-wrap mb-3">
                        <div class="avatar me-3">
                          <img src="../../assets/img/avatars/3.png" alt="avatar" class="rounded-circle" />
                        </div>
                        <div class="d-flex justify-content-between flex-grow-1">
                          <div class="me-2">
                            <p class="mb-0">Marvin Wheeler</p>
                            <p class="mb-0 text-muted">rumet@jujpejah.net</p>
                          </div>
                          <div class="dropdown">
                            <button
                              type="button"
                              class="btn dropdown-toggle p-2"
                              data-bs-toggle="dropdown"
                              aria-expanded="false">
                              <span class="text-muted fw-normal me-2 d-none d-sm-inline-block">Can Edit</span>
                            </button>
                            <ul class="dropdown-menu dropdown-menu-end">
                              <li>
                                <a class="dropdown-item" href="javascript:void(0);">Owner</a>
                              </li>
                              <li>
                                <a class="dropdown-item" href="javascript:void(0);">Can Edit</a>
                              </li>
                              <li>
                                <a class="dropdown-item" href="javascript:void(0);">Can Comment</a>
                              </li>
                              <li>
                                <a class="dropdown-item" href="javascript:void(0);">Can View</a>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </li>
                      <li class="d-flex flex-wrap mb-3">
                        <div class="avatar me-3">
                          <img src="../../assets/img/avatars/4.png" alt="avatar" class="rounded-circle" />
                        </div>
                        <div class="d-flex justify-content-between flex-grow-1">
                          <div class="me-2">
                            <p class="mb-0">Nannie Ford</p>
                            <p class="mb-0 text-muted">negza@nuv.io</p>
                          </div>
                          <div class="dropdown">
                            <button
                              type="button"
                              class="btn dropdown-toggle p-2"
                              data-bs-toggle="dropdown"
                              aria-expanded="false">
                              <span class="text-muted fw-normal me-2 d-none d-sm-inline-block">Can Comment</span>
                            </button>
                            <ul class="dropdown-menu dropdown-menu-end">
                              <li>
                                <a class="dropdown-item" href="javascript:void(0);">Owner</a>
                              </li>
                              <li>
                                <a class="dropdown-item" href="javascript:void(0);">Can Edit</a>
                              </li>
                              <li>
                                <a class="dropdown-item" href="javascript:void(0);">Can Comment</a>
                              </li>
                              <li>
                                <a class="dropdown-item" href="javascript:void(0);">Can View</a>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </li>
                      <li class="d-flex flex-wrap mb-3">
                        <div class="avatar me-3">
                          <img src="../../assets/img/avatars/5.png" alt="avatar" class="rounded-circle" />
                        </div>
                        <div class="d-flex justify-content-between flex-grow-1">
                          <div class="me-2">
                            <p class="mb-0">Julian Murphy</p>
                            <p class="mb-0 text-muted">lunebame@umdomgu.net</p>
                          </div>
                          <div class="dropdown">
                            <button
                              type="button"
                              class="btn dropdown-toggle p-2"
                              data-bs-toggle="dropdown"
                              aria-expanded="false">
                              <span class="text-muted fw-normal me-2 d-none d-sm-inline-block">Can View</span>
                            </button>
                            <ul class="dropdown-menu dropdown-menu-end">
                              <li>
                                <a class="dropdown-item" href="javascript:void(0);">Owner</a>
                              </li>
                              <li>
                                <a class="dropdown-item" href="javascript:void(0);">Can Edit</a>
                              </li>
                              <li>
                                <a class="dropdown-item" href="javascript:void(0);">Can Comment</a>
                              </li>
                              <li>
                                <a class="dropdown-item" href="javascript:void(0);">Can View</a>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </li>
                      <li class="d-flex flex-wrap mb-3">
                        <div class="avatar me-3">
                          <img src="../../assets/img/avatars/6.png" alt="avatar" class="rounded-circle" />
                        </div>
                        <div class="d-flex justify-content-between flex-grow-1">
                          <div class="me-2">
                            <p class="mb-0">Sophie Gilbert</p>
                            <p class="mb-0 text-muted">ha@sugit.gov</p>
                          </div>
                          <div class="dropdown">
                            <button
                              type="button"
                              class="btn dropdown-toggle p-2"
                              data-bs-toggle="dropdown"
                              aria-expanded="false">
                              <span class="text-muted fw-normal me-2 d-none d-sm-inline-block">Can View</span>
                            </button>
                            <ul class="dropdown-menu dropdown-menu-end">
                              <li>
                                <a class="dropdown-item" href="javascript:void(0);">Owner</a>
                              </li>
                              <li>
                                <a class="dropdown-item" href="javascript:void(0);">Can Edit</a>
                              </li>
                              <li>
                                <a class="dropdown-item" href="javascript:void(0);">Can Comment</a>
                              </li>
                              <li>
                                <a class="dropdown-item" href="javascript:void(0);">Can View</a>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </li>
                      <li class="d-flex flex-wrap mb-3">
                        <div class="avatar me-3">
                          <img src="../../assets/img/avatars/7.png" alt="avatar" class="rounded-circle" />
                        </div>
                        <div class="d-flex justify-content-between flex-grow-1">
                          <div class="me-2">
                            <p class="mb-0">Chris Watkins</p>
                            <p class="mb-0 text-muted">zokap@mak.org</p>
                          </div>
                          <div class="dropdown">
                            <button
                              type="button"
                              class="btn dropdown-toggle p-2"
                              data-bs-toggle="dropdown"
                              aria-expanded="false">
                              <span class="text-muted fw-normal me-2 d-none d-sm-inline-block">Can Comment</span>
                            </button>
                            <ul class="dropdown-menu dropdown-menu-end">
                              <li>
                                <a class="dropdown-item" href="javascript:void(0);">Owner</a>
                              </li>
                              <li>
                                <a class="dropdown-item" href="javascript:void(0);">Can Edit</a>
                              </li>
                              <li>
                                <a class="dropdown-item" href="javascript:void(0);">Can Comment</a>
                              </li>
                              <li>
                                <a class="dropdown-item" href="javascript:void(0);">Can View</a>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </li>
                      <li class="d-flex flex-wrap">
                        <div class="avatar me-3">
                          <img src="../../assets/img/avatars/8.png" alt="avatar" class="rounded-circle" />
                        </div>
                        <div class="d-flex justify-content-between flex-grow-1">
                          <div class="me-2">
                            <p class="mb-0">Adelaide Nichols</p>
                            <p class="mb-0 text-muted">ujinomu@jigo.com</p>
                          </div>
                          <div class="dropdown">
                            <button
                              type="button"
                              class="btn dropdown-toggle p-2"
                              data-bs-toggle="dropdown"
                              aria-expanded="false">
                              <span class="text-muted fw-normal me-2 d-none d-sm-inline-block">Can Edit</span>
                            </button>
                            <ul class="dropdown-menu dropdown-menu-end">
                              <li>
                                <a class="dropdown-item" href="javascript:void(0);">Owner</a>
                              </li>
                              <li>
                                <a class="dropdown-item" href="javascript:void(0);">Can Edit</a>
                              </li>
                              <li>
                                <a class="dropdown-item" href="javascript:void(0);">Can Comment</a>
                              </li>
                              <li>
                                <a class="dropdown-item" href="javascript:void(0);">Can View</a>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </li>
                    </ul>
                    <div class="d-flex align-items-center mt-4 align-items-sm-center">
                      <i class="bx bx-user me-2"></i>
                      <div class="d-flex justify-content-between flex-grow-1 align-items-center flex-wrap gap-2">
                        <h6 class="mb-0">Public to Sneat - ThemeSelection</h6>
                        <button class="btn btn-primary">Copy Project Link</button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!--/ Share Project Modal -->

              <!-- Create App Modal -->
              <div class="modal fade" id="createApp" tabindex="-1" aria-hidden="true">
                <div class="modal-dialog modal-lg modal-dialog-centered modal-simple modal-upgrade-plan">
                  <div class="modal-content p-3 p-md-5">
                    <div class="modal-body p-2">
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                      <div class="text-center">
                        <h3 class="mb-2">Create App</h3>
                        <p>Provide data with this form to create your app.</p>
                      </div>
                      <!-- App Wizard -->
                      <div id="wizard-create-app" class="bs-stepper vertical mt-2 shadow-none border-0">
                        <div class="bs-stepper-header border-0 p-1">
                          <div class="step" data-target="#details">
                            <button type="button" class="step-trigger">
                              <span class="bs-stepper-circle"><i class="bx bx-file fs-5"></i></span>
                              <span class="bs-stepper-label">
                                <span class="bs-stepper-title text-uppercase">Details</span>
                                <span class="bs-stepper-subtitle">Enter Details</span>
                              </span>
                            </button>
                          </div>
                          <div class="line"></div>
                          <div class="step" data-target="#frameworks">
                            <button type="button" class="step-trigger">
                              <span class="bs-stepper-circle"><i class="bx bx-box fs-5"></i></span>
                              <span class="bs-stepper-label">
                                <span class="bs-stepper-title text-uppercase">Frameworks</span>
                                <span class="bs-stepper-subtitle">Select Framework</span>
                              </span>
                            </button>
                          </div>
                          <div class="line"></div>
                          <div class="step" data-target="#database">
                            <button type="button" class="step-trigger">
                              <span class="bs-stepper-circle"><i class="bx bx-data fs-5"></i></span>
                              <span class="bs-stepper-label">
                                <span class="bs-stepper-title text-uppercase">Database</span>
                                <span class="bs-stepper-subtitle">Select Database</span>
                              </span>
                            </button>
                          </div>
                          <div class="line"></div>
                          <div class="step" data-target="#billing">
                            <button type="button" class="step-trigger">
                              <span class="bs-stepper-circle"><i class="bx bx-credit-card fs-5"></i></span>
                              <span class="bs-stepper-label">
                                <span class="bs-stepper-title text-uppercase">Billing</span>
                                <span class="bs-stepper-subtitle">Payment Details</span>
                              </span>
                            </button>
                          </div>
                          <div class="line"></div>
                          <div class="step" data-target="#submit">
                            <button type="button" class="step-trigger">
                              <span class="bs-stepper-circle"><i class="bx bx-check fs-5"></i></span>
                              <span class="bs-stepper-label">
                                <span class="bs-stepper-title text-uppercase">Submit</span>
                                <span class="bs-stepper-subtitle">Submit</span>
                              </span>
                            </button>
                          </div>
                        </div>
                        <div class="bs-stepper-content p-1">
                          <form onSubmit="return false">
                            <!-- Details -->
                            <div id="details" class="content pt-3 pt-lg-0">
                              <div class="mb-3">
                                <input
                                  type="email"
                                  class="form-control form-control-lg"
                                  id="exampleInputEmail1"
                                  placeholder="Application Name" />
                              </div>
                              <h5>Category</h5>
                              <ul class="p-0 m-0">
                                <li class="d-flex align-items-start mb-3">
                                  <div class="badge bg-label-info p-2 me-3 rounded">
                                    <i class="bx bx-file bx-sm"></i>
                                  </div>
                                  <div class="d-flex justify-content-between w-100 flex-wrap gap-2">
                                    <div class="me-2">
                                      <h6 class="mb-0">CRM Application</h6>
                                      <small class="text-muted">Scales with any business</small>
                                    </div>
                                    <div class="d-flex align-items-center">
                                      <div class="form-check form-check-inline">
                                        <input name="details-radio" class="form-check-input" type="radio" value="" />
                                      </div>
                                    </div>
                                  </div>
                                </li>
                                <li class="d-flex align-items-start mb-3">
                                  <div class="badge bg-label-success p-2 me-3 rounded">
                                    <i class="bx bx-cart bx-sm"></i>
                                  </div>
                                  <div class="d-flex justify-content-between w-100 flex-wrap gap-2">
                                    <div class="me-2">
                                      <h6 class="mb-0">eCommerce Platforms</h6>
                                      <small class="text-muted">Grow Your Business With App</small>
                                    </div>
                                    <div class="d-flex align-items-center">
                                      <div class="form-check form-check-inline">
                                        <input
                                          name="details-radio"
                                          class="form-check-input"
                                          type="radio"
                                          value=""
                                          checked />
                                      </div>
                                    </div>
                                  </div>
                                </li>
                                <li class="d-flex align-items-start">
                                  <div class="badge bg-label-danger p-2 me-3 rounded">
                                    <i class="bx bx-laptop bx-sm"></i>
                                  </div>
                                  <div class="d-flex justify-content-between w-100 flex-wrap gap-2">
                                    <div class="me-2">
                                      <h6 class="mb-0">Online Learning platform</h6>
                                      <small class="text-muted">Start learning today</small>
                                    </div>
                                    <div class="d-flex align-items-center">
                                      <div class="form-check form-check-inline">
                                        <input name="details-radio" class="form-check-input" type="radio" value="" />
                                      </div>
                                    </div>
                                  </div>
                                </li>
                              </ul>
                              <div class="col-12 d-flex justify-content-between mt-4">
                                <button class="btn btn-label-secondary btn-prev" disabled>
                                  <i class="bx bx-left-arrow-alt bx-xs me-sm-1 me-0"></i>
                                  <span class="align-middle d-sm-inline-block d-none">Previous</span>
                                </button>
                                <button class="btn btn-primary btn-next">
                                  <span class="align-middle d-sm-inline-block d-none me-sm-1">Next</span>
                                  <i class="bx bx-right-arrow-alt bx-xs"></i>
                                </button>
                              </div>
                            </div>

                            <!-- Frameworks -->
                            <div id="frameworks" class="content pt-3 pt-lg-0">
                              <h5>Category</h5>
                              <ul class="p-0 m-0">
                                <li class="d-flex align-items-start mb-3">
                                  <div class="badge bg-label-info p-2 me-3 rounded">
                                    <i class="bx bxl-react bx-sm"></i>
                                  </div>
                                  <div class="d-flex justify-content-between w-100 flex-wrap gap-2">
                                    <div class="me-2">
                                      <h6 class="mb-0">React Native</h6>
                                      <small class="text-muted">Create truly native apps</small>
                                    </div>
                                    <div class="d-flex align-items-center">
                                      <div class="form-check form-check-inline">
                                        <input name="frameworks-radio" class="form-check-input" type="radio" value="" />
                                      </div>
                                    </div>
                                  </div>
                                </li>
                                <li class="d-flex align-items-start mb-3">
                                  <div class="badge bg-label-danger p-2 me-3 rounded">
                                    <i class="bx bxl-angular bx-sm"></i>
                                  </div>
                                  <div class="d-flex justify-content-between w-100 flex-wrap gap-2">
                                    <div class="me-2">
                                      <h6 class="mb-0">Angular</h6>
                                      <small class="text-muted">Most suited for your application</small>
                                    </div>
                                    <div class="d-flex align-items-center">
                                      <div class="form-check form-check-inline">
                                        <input
                                          name="frameworks-radio"
                                          class="form-check-input"
                                          type="radio"
                                          value=""
                                          checked="" />
                                      </div>
                                    </div>
                                  </div>
                                </li>
                                <li class="d-flex align-items-start mb-3">
                                  <div class="badge bg-label-warning p-2 me-3 rounded">
                                    <i class="bx bxl-html5 bx-sm"></i>
                                  </div>
                                  <div class="d-flex justify-content-between w-100 flex-wrap gap-2">
                                    <div class="me-2">
                                      <h6 class="mb-0">HTML</h6>
                                      <small class="text-muted">Progressive Framework</small>
                                    </div>
                                    <div class="d-flex align-items-center">
                                      <div class="form-check form-check-inline">
                                        <input
                                          name="frameworks-radio"
                                          class="form-check-input"
                                          type="radio"
                                          value=""
                                          checked />
                                      </div>
                                    </div>
                                  </div>
                                </li>
                                <li class="d-flex align-items-start">
                                  <div class="badge bg-label-success p-2 me-3 rounded">
                                    <i class="bx bxl-vuejs bx-sm"></i>
                                  </div>
                                  <div class="d-flex justify-content-between w-100 flex-wrap gap-2">
                                    <div class="me-2">
                                      <h6 class="mb-0">VueJs</h6>
                                      <small class="text-muted">JS web frameworks</small>
                                    </div>
                                    <div class="d-flex align-items-center">
                                      <div class="form-check form-check-inline">
                                        <input name="frameworks-radio" class="form-check-input" type="radio" value="" />
                                      </div>
                                    </div>
                                  </div>
                                </li>
                              </ul>

                              <div class="col-12 d-flex justify-content-between mt-4">
                                <button class="btn btn-label-secondary btn-prev">
                                  <i class="bx bx-left-arrow-alt bx-xs me-sm-1 me-0"></i>
                                  <span class="align-middle d-sm-inline-block d-none">Previous</span>
                                </button>
                                <button class="btn btn-primary btn-next">
                                  <span class="align-middle d-sm-inline-block d-none me-sm-1">Next</span>
                                  <i class="bx bx-right-arrow-alt bx-xs"></i>
                                </button>
                              </div>
                            </div>

                            <!-- Database -->
                            <div id="database" class="content pt-3 pt-lg-0">
                              <div class="mb-3">
                                <input
                                  type="email"
                                  class="form-control form-control-lg"
                                  id="exampleInputEmail2"
                                  placeholder="Database Name" />
                              </div>
                              <h5>Select Database Engine</h5>
                              <ul class="p-0 m-0">
                                <li class="d-flex align-items-start mb-3">
                                  <div class="badge bg-label-danger p-2 me-3 rounded">
                                    <i class="bx bxl-firebase bx-sm"></i>
                                  </div>
                                  <div class="d-flex justify-content-between w-100 flex-wrap gap-2">
                                    <div class="me-2">
                                      <h6 class="mb-0">Firebase</h6>
                                      <small class="text-muted">Cloud Firestone</small>
                                    </div>
                                    <div class="d-flex align-items-center">
                                      <div class="form-check form-check-inline">
                                        <input name="database-radio" class="form-check-input" type="radio" value="" />
                                      </div>
                                    </div>
                                  </div>
                                </li>
                                <li class="d-flex align-items-start mb-3">
                                  <div class="badge bg-label-warning p-2 me-3 rounded">
                                    <i class="bx bxl-amazon bx-sm"></i>
                                  </div>
                                  <div class="d-flex justify-content-between w-100 flex-wrap gap-2">
                                    <div class="me-2">
                                      <h6 class="mb-0">AWS</h6>
                                      <small class="text-muted">Amazon Fast NoSQL Database</small>
                                    </div>
                                    <div class="d-flex align-items-center">
                                      <div class="form-check form-check-inline">
                                        <input
                                          name="database-radio"
                                          class="form-check-input"
                                          type="radio"
                                          value=""
                                          checked />
                                      </div>
                                    </div>
                                  </div>
                                </li>
                                <li class="d-flex align-items-start">
                                  <div class="badge bg-label-info p-2 me-3 rounded">
                                    <i class="bx bx-data bx-sm"></i>
                                  </div>
                                  <div class="d-flex justify-content-between w-100 flex-wrap gap-2">
                                    <div class="me-2">
                                      <h6 class="mb-0">MySQL</h6>
                                      <small class="text-muted">Basic MySQL database</small>
                                    </div>
                                    <div class="d-flex align-items-center">
                                      <div class="form-check form-check-inline">
                                        <input name="database-radio" class="form-check-input" type="radio" value="" />
                                      </div>
                                    </div>
                                  </div>
                                </li>
                              </ul>
                              <div class="col-12 d-flex justify-content-between mt-4">
                                <button class="btn btn-label-secondary btn-prev">
                                  <i class="bx bx-left-arrow-alt bx-xs me-sm-1 me-0"></i>
                                  <span class="align-middle d-sm-inline-block d-none">Previous</span>
                                </button>
                                <button class="btn btn-primary btn-next">
                                  <span class="align-middle d-sm-inline-block d-none me-sm-1">Next</span>
                                  <i class="bx bx-right-arrow-alt bx-xs"></i>
                                </button>
                              </div>
                            </div>

                            <!-- billing -->
                            <div id="billing" class="content">
                              <div id="AppNewCCForm" class="row g-3 pt-3 pt-lg-0 mb-5" onsubmit="return false">
                                <div class="col-12">
                                  <div class="input-group input-group-merge">
                                    <input
                                      class="form-control app-credit-card-mask"
                                      type="text"
                                      placeholder="1356 3215 6548 7898"
                                      aria-describedby="modalAppAddCard" />
                                    <span class="input-group-text cursor-pointer p-1" id="modalAppAddCard"
                                      ><span class="app-card-type"></span
                                    ></span>
                                  </div>
                                </div>
                                <div class="col-12 col-md-6">
                                  <input type="text" class="form-control" placeholder="John Doe" />
                                </div>
                                <div class="col-6 col-md-3">
                                  <input type="text" class="form-control app-expiry-date-mask" placeholder="MM/YY" />
                                </div>
                                <div class="col-6 col-md-3">
                                  <div class="input-group input-group-merge">
                                    <input
                                      type="text"
                                      id="modalAppAddCardCvv"
                                      class="form-control app-cvv-code-mask"
                                      maxlength="3"
                                      placeholder="654" />
                                    <span class="input-group-text cursor-pointer" id="modalAppAddCardCvv2"
                                      ><i
                                        class="text-muted bx bx-help-circle"
                                        data-bs-toggle="tooltip"
                                        data-bs-placement="top"
                                        title="Card Verification Value"></i
                                    ></span>
                                  </div>
                                </div>
                                <div class="col-12">
                                  <label class="switch">
                                    <input type="checkbox" class="switch-input" checked />
                                    <span class="switch-toggle-slider">
                                      <span class="switch-on"></span>
                                      <span class="switch-off"></span>
                                    </span>
                                    <span class="switch-label">Save card for future billing?</span>
                                  </label>
                                </div>
                              </div>
                              <div class="col-12 d-flex justify-content-between mt-4">
                                <button class="btn btn-label-secondary btn-prev">
                                  <i class="bx bx-left-arrow-alt bx-xs me-sm-1 me-0"></i>
                                  <span class="align-middle d-sm-inline-block d-none">Previous</span>
                                </button>
                                <button class="btn btn-primary btn-next">
                                  <span class="align-middle d-sm-inline-block d-none me-sm-1">Next</span>
                                  <i class="bx bx-right-arrow-alt bx-xs"></i>
                                </button>
                              </div>
                            </div>

                            <!-- submit -->
                            <div id="submit" class="content text-center pt-3 pt-lg-0">
                              <h5 class="mb-2 mt-3">Submit</h5>
                              <p>Submit to kick start your project.</p>
                              <!-- image -->
                              <img
                                src="../../assets/img/illustrations/man-with-laptop-light.png"
                                alt="Create App img"
                                width="200"
                                class="img-fluid"
                                data-app-light-img="illustrations/man-with-laptop-light.png"
                                data-app-dark-img="illustrations/man-with-laptop-dark.png" />
                              <div class="col-12 d-flex justify-content-between mt-4 pt-2">
                                <button class="btn btn-label-secondary btn-prev">
                                  <i class="bx bx-left-arrow-alt bx-xs me-sm-1 me-0"></i>
                                  <span class="align-middle d-sm-inline-block d-none">Previous</span>
                                </button>
                                <button class="btn btn-success btn-submit">
                                  <span class="align-middle d-sm-inline-block d-none">Submit</span>
                                  <i class="bx bx-check bx-xs ms-sm-1 ms-0"></i>
                                </button>
                              </div>
                            </div>
                          </form>
                        </div>
                      </div>
                    </div>
                    <!--/ App Wizard -->
                  </div>
                </div>
              </div>
              <!--/ Create App Modal -->

              <!-- Two Factor Auth Modal -->

              <div class="modal fade" id="twoFactorAuth" tabindex="-1" aria-hidden="true">
                <div class="modal-dialog modal-lg modal-dialog-centered modal-simple">
                  <div class="modal-content p-3 p-md-5">
                    <div class="modal-body">
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                      <div class="text-center mb-4">
                        <h3 class="mb-2">Select Authentication Method</h3>
                        <p class="text-muted">
                          You also need to select a method by which the proxy authenticates to the directory serve.
                        </p>
                      </div>
                      <div class="row">
                        <div class="col-12 mb-3">
                          <div class="form-check custom-option custom-option-basic">
                            <label
                              class="form-check-label custom-option-content ps-3"
                              for="customRadioTemp1"
                              data-bs-target="#twoFactorAuthOne"
                              data-bs-toggle="modal">
                              <input
                                name="customRadioTemp"
                                class="form-check-input d-none"
                                type="radio"
                                value=""
                                id="customRadioTemp1" />
                              <span class="d-flex align-items-start">
                                <i class="bx bx-cog bx-md me-3"></i>
                                <span>
                                  <span class="custom-option-header">
                                    <span class="h4 mb-2">Authenticator Apps</span>
                                  </span>
                                  <span class="custom-option-body">
                                    <span class="mb-0"
                                      >Get code from an app like Google Authenticator or Microsoft Authenticator.</span
                                    >
                                  </span>
                                </span>
                              </span>
                            </label>
                          </div>
                        </div>
                        <div class="col-12">
                          <div class="form-check custom-option custom-option-basic">
                            <label
                              class="form-check-label custom-option-content ps-3"
                              for="customRadioTemp2"
                              data-bs-target="#twoFactorAuthTwo"
                              data-bs-toggle="modal">
                              <input
                                name="customRadioTemp"
                                class="form-check-input d-none"
                                type="radio"
                                value=""
                                id="customRadioTemp2" />
                              <span class="d-flex align-items-start">
                                <i class="bx bx-message bx-md me-3"></i>
                                <span>
                                  <span class="custom-option-header">
                                    <span class="h4 mb-2">SMS</span>
                                  </span>
                                  <span class="custom-option-body">
                                    <span class="mb-0"
                                      >We will send a code via SMS if you need to use your backup login method.</span
                                    >
                                  </span>
                                </span>
                              </span>
                            </label>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <!-- Modal Authentication App -->
              <div class="modal fade" id="twoFactorAuthOne" tabindex="-1" aria-hidden="true">
                <div class="modal-dialog modal-lg modal-dialog-centered modal-simple">
                  <div class="modal-content p-3 p-md-5">
                    <div class="modal-body">
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                      <div class="text-center mb-2">
                        <h3 class="mb-0">Add Authenticator App</h3>
                      </div>
                      <h5 class="mb-2 pt-1 text-break">Authenticator Apps</h5>
                      <p class="mb-4">
                        Using an authenticator app like Google Authenticator, Microsoft Authenticator, Authy, or
                        1Password, scan the QR code. It will generate a 6-digit code for you to enter below.
                      </p>
                      <div class="text-center">
                        <img src="../../assets/img/icons/misc/authentication-QR.png" alt="QR Code" width="140" />
                      </div>
                      <div class="alert alert-warning alert-dismissible my-3" role="alert">
                        <h5 class="alert-heading mb-2 text-break">ASDLKNASDA9AHS678dGhASD78AB</h5>
                        <p class="mb-0">If you're having trouble using the QR code, select manual entry on your app</p>
                      </div>
                      <div class="mb-4">
                        <input
                          type="email"
                          class="form-control"
                          id="twoFactorAuthInput"
                          placeholder="Enter Authentication Code" />
                      </div>
                      <div class="col-12 text-end">
                        <button
                          type="button"
                          class="btn btn-label-secondary me-sm-3 me-2 px-3 px-sm-4"
                          data-bs-toggle="modal"
                          data-bs-target="#twoFactorAuth">
                          <i class="bx bx-left-arrow-alt bx-xs me-1 scaleX-n1-rtl"></i
                          ><span class="align-middle">Back</span>
                        </button>
                        <button
                          type="button"
                          class="btn btn-primary px-3 px-sm-4"
                          data-bs-dismiss="modal"
                          aria-label="Close">
                          <span class="align-middle">Continue</span
                          ><i class="bx bx-right-arrow-alt bx-xs ms-1 scaleX-n1-rtl"></i>
                        </button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <!-- Modal Authentication via SMS -->
              <div class="modal fade" id="twoFactorAuthTwo" tabindex="-1" aria-hidden="true">
                <div class="modal-dialog modal-lg modal-dialog-centered modal-simple">
                  <div class="modal-content p-3 p-md-5">
                    <div class="modal-body">
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                      <h5 class="mb-2 pt-1">Verify Your Mobile Number for SMS</h5>
                      <p class="mb-4">
                        Enter your mobile phone number with country code, and we will send you a verification code.
                      </p>
                      <div class="mb-4">
                        <input type="text" class="form-control" id="twoFactorAuthInputSms" placeholder="747 875 3459" />
                      </div>
                      <div class="col-12 text-end">
                        <button
                          type="button"
                          class="btn btn-label-secondary me-sm-3 me-2 px-3 px-sm-4"
                          data-bs-toggle="modal"
                          data-bs-target="#twoFactorAuth">
                          <i class="bx bx-left-arrow-alt bx-xs me-1 scaleX-n1-rtl"></i
                          ><span class="align-middle">Back</span>
                        </button>
                        <button
                          type="button"
                          class="btn btn-primary px-3 px-sm-4"
                          data-bs-dismiss="modal"
                          aria-label="Close">
                          <span class="align-middle">Continue</span
                          ><i class="bx bx-right-arrow-alt bx-xs ms-1 scaleX-n1-rtl"></i>
                        </button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!--/ Two Factor Auth Modal -->
              <script>
                // Check selected custom option
                window.Helpers.initCustomOptionCheck();
              </script>

              <!-- Payment provider modal -->
              <div class="modal fade" id="paymentProvider" tabindex="-1" aria-hidden="true">
                <div class="modal-dialog modal-lg modal-simple modal-enable-otp modal-dialog-centered">
                  <div class="modal-content p-3 p-md-5">
                    <div class="modal-body">
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                      <div class="text-center mb-4">
                        <h3 class="mb-3">Select payment providers</h3>
                        <p class="text-muted">Third-party payment providers</p>
                      </div>

                      <div
                        class="d-flex flex-column flex-sm-row align-items-sm-center justify-content-between border-bottom pb-3 mb-3">
                        <h6 class="m-0 mb-2 mb-sm-0 me-5">Adyen</h6>
                        <div class="d-flex flex-wrap gap-2">
                          <img
                            src="../../assets/img/icons/payments/visa-light.png"
                            class="img-fluid w-px-50 h-px-30"
                            alt="visa-card"
                            data-app-light-img="icons/payments/visa-light.png"
                            data-app-dark-img="icons/payments/visa-dark.png" />
                          <img
                            src="../../assets/img/icons/payments/master-light.png"
                            class="img-fluid w-px-50 h-px-30"
                            alt="master-card"
                            data-app-light-img="icons/payments/master-light.png"
                            data-app-dark-img="icons/payments/master-dark.png" />
                          <img
                            src="../../assets/img/icons/payments/ae-light.png"
                            class="img-fluid w-px-50 h-px-30"
                            alt="american-express-card"
                            data-app-light-img="icons/payments/ae-light.png"
                            data-app-dark-img="icons/payments/ae-dark.png" />
                          <img
                            src="../../assets/img/icons/payments/jcb-light.png"
                            class="img-fluid w-px-50 h-px-30"
                            alt="jcb-card"
                            data-app-light-img="icons/payments/jcb-light.png"
                            data-app-dark-img="icons/payments/jcb-dark.png" />
                          <img
                            src="../../assets/img/icons/payments/dc-light.png"
                            class="img-fluid w-px-50 h-px-30"
                            alt="diners-club-card"
                            data-app-light-img="icons/payments/dc-light.png"
                            data-app-dark-img="icons/payments/dc-dark.png" />
                        </div>
                      </div>
                      <div
                        class="d-flex flex-column flex-sm-row align-items-sm-center justify-content-between border-bottom pb-3 mb-3">
                        <h6 class="m-0 mb-2 mb-sm-0">2Checkout</h6>
                        <div class="d-flex flex-wrap gap-2">
                          <img
                            src="../../assets/img/icons/payments/visa-light.png"
                            class="img-fluid w-px-50 h-px-30"
                            alt="visa-card"
                            data-app-light-img="icons/payments/visa-light.png"
                            data-app-dark-img="icons/payments/visa-dark.png" />
                          <img
                            src="../../assets/img/icons/payments/ae-light.png"
                            class="img-fluid w-px-50 h-px-30"
                            alt="american-express-card"
                            data-app-light-img="icons/payments/ae-light.png"
                            data-app-dark-img="icons/payments/ae-dark.png" />
                          <img
                            src="../../assets/img/icons/payments/jcb-light.png"
                            class="img-fluid w-px-50 h-px-30"
                            alt="jcb-card"
                            data-app-light-img="icons/payments/jcb-light.png"
                            data-app-dark-img="icons/payments/jcb-dark.png" />
                          <img
                            src="../../assets/img/icons/payments/dc-light.png"
                            class="img-fluid w-px-50 h-px-30"
                            alt="diners-club-card"
                            data-app-light-img="icons/payments/dc-light.png"
                            data-app-dark-img="icons/payments/dc-dark.png" />
                        </div>
                      </div>
                      <div
                        class="d-flex flex-column flex-sm-row align-items-sm-center justify-content-between border-bottom pb-3 mb-3">
                        <h6 class="m-0 mb-2 mb-sm-0">Airpay</h6>
                        <div class="d-flex flex-wrap gap-2">
                          <img
                            src="../../assets/img/icons/payments/visa-light.png"
                            class="img-fluid w-px-50 h-px-30"
                            alt="visa-card"
                            data-app-light-img="icons/payments/visa-light.png"
                            data-app-dark-img="icons/payments/visa-dark.png" />
                          <img
                            src="../../assets/img/icons/payments/ae-light.png"
                            class="img-fluid w-px-50 h-px-30"
                            alt="american-express-card"
                            data-app-light-img="icons/payments/ae-light.png"
                            data-app-dark-img="icons/payments/ae-dark.png" />
                          <img
                            src="../../assets/img/icons/payments/master-light.png"
                            class="img-fluid w-px-50 h-px-30"
                            alt="master-card"
                            data-app-light-img="icons/payments/master-light.png"
                            data-app-dark-img="icons/payments/master-dark.png" />
                          <img
                            src="../../assets/img/icons/payments/jcb-light.png"
                            class="img-fluid w-px-50 h-px-30"
                            alt="jcb-card"
                            data-app-light-img="icons/payments/jcb-light.png"
                            data-app-dark-img="icons/payments/jcb-dark.png" />
                        </div>
                      </div>
                      <div
                        class="d-flex flex-column flex-sm-row align-items-sm-center justify-content-between border-bottom pb-3 mb-3">
                        <h6 class="m-0 mb-2 mb-sm-0">Authorize.net</h6>

                        <div class="d-flex flex-wrap gap-2">
                          <img
                            src="../../assets/img/icons/payments/ae-light.png"
                            class="img-fluid w-px-50 h-px-30"
                            alt="american-express-card"
                            data-app-light-img="icons/payments/ae-light.png"
                            data-app-dark-img="icons/payments/ae-dark.png" />
                          <img
                            src="../../assets/img/icons/payments/jcb-light.png"
                            class="img-fluid w-px-50 h-px-30"
                            alt="jcb-card"
                            data-app-light-img="icons/payments/jcb-light.png"
                            data-app-dark-img="icons/payments/jcb-dark.png" />
                          <img
                            src="../../assets/img/icons/payments/dc-light.png"
                            class="img-fluid w-px-50 h-px-30"
                            alt="diners-club-card"
                            data-app-light-img="icons/payments/dc-light.png"
                            data-app-dark-img="icons/payments/dc-dark.png" />
                        </div>
                      </div>
                      <div
                        class="d-flex flex-column flex-sm-row align-items-sm-center justify-content-between border-bottom pb-3 mb-3">
                        <h6 class="m-0 mb-2 mb-sm-0">Bambora</h6>

                        <div class="d-flex flex-wrap gap-2">
                          <img
                            src="../../assets/img/icons/payments/master-light.png"
                            class="img-fluid w-px-50 h-px-30"
                            alt="master-card"
                            data-app-light-img="icons/payments/master-light.png"
                            data-app-dark-img="icons/payments/master-dark.png" />
                          <img
                            src="../../assets/img/icons/payments/ae-light.png"
                            class="img-fluid w-px-50 h-px-30"
                            alt="american-express-card"
                            data-app-light-img="icons/payments/ae-light.png"
                            data-app-dark-img="icons/payments/ae-dark.png" />
                          <img
                            src="../../assets/img/icons/payments/jcb-light.png"
                            class="img-fluid w-px-50 h-px-30"
                            alt="jcb-card"
                            data-app-light-img="icons/payments/jcb-light.png"
                            data-app-dark-img="icons/payments/jcb-dark.png" />
                        </div>
                      </div>
                      <div
                        class="d-flex flex-column flex-sm-row align-items-sm-center justify-content-between border-bottom pb-3 mb-3">
                        <h6 class="m-0 mb-2 mb-sm-0">Cayan</h6>

                        <div class="d-flex flex-wrap gap-2">
                          <img
                            src="../../assets/img/icons/payments/visa-light.png"
                            class="img-fluid w-px-50 h-px-30"
                            alt="visa-card"
                            data-app-light-img="icons/payments/visa-light.png"
                            data-app-dark-img="icons/payments/visa-dark.png" />
                          <img
                            src="../../assets/img/icons/payments/master-light.png"
                            class="img-fluid w-px-50 h-px-30"
                            alt="master-card"
                            data-app-light-img="icons/payments/master-light.png"
                            data-app-dark-img="icons/payments/master-dark.png" />
                          <img
                            src="../../assets/img/icons/payments/ae-light.png"
                            class="img-fluid w-px-50 h-px-30"
                            alt="american-express-card"
                            data-app-light-img="icons/payments/ae-light.png"
                            data-app-dark-img="icons/payments/ae-dark.png" />
                          <img
                            src="../../assets/img/icons/payments/jcb-light.png"
                            class="img-fluid w-px-50 h-px-30"
                            alt="jcb-card"
                            data-app-light-img="icons/payments/jcb-light.png"
                            data-app-dark-img="icons/payments/jcb-dark.png" />
                          <img
                            src="../../assets/img/icons/payments/dc-light.png"
                            class="img-fluid w-px-50 h-px-30"
                            alt="diners-club-card"
                            data-app-light-img="icons/payments/dc-light.png"
                            data-app-dark-img="icons/payments/dc-dark.png" />
                        </div>
                      </div>
                      <div
                        class="d-flex flex-column flex-sm-row align-items-sm-center justify-content-between border-bottom pb-3 mb-3">
                        <h6 class="m-0 mb-2 mb-sm-0">Chase Paymentech (Orbital)</h6>

                        <div class="d-flex flex-wrap gap-2">
                          <img
                            src="../../assets/img/icons/payments/visa-light.png"
                            class="img-fluid w-px-50 h-px-30"
                            alt="visa-card"
                            data-app-light-img="icons/payments/visa-light.png"
                            data-app-dark-img="icons/payments/visa-dark.png" />
                          <img
                            src="../../assets/img/icons/payments/ae-light.png"
                            class="img-fluid w-px-50 h-px-30"
                            alt="american-express-card"
                            data-app-light-img="icons/payments/ae-light.png"
                            data-app-dark-img="icons/payments/ae-dark.png" />
                          <img
                            src="../../assets/img/icons/payments/jcb-light.png"
                            class="img-fluid w-px-50 h-px-30"
                            alt="jcb-card"
                            data-app-light-img="icons/payments/jcb-light.png"
                            data-app-dark-img="icons/payments/jcb-dark.png" />
                          <img
                            src="../../assets/img/icons/payments/dc-light.png"
                            class="img-fluid w-px-50 h-px-30"
                            alt="diners-club-card"
                            data-app-light-img="icons/payments/dc-light.png"
                            data-app-dark-img="icons/payments/dc-dark.png" />
                        </div>
                      </div>
                      <div
                        class="d-flex flex-column flex-sm-row align-items-sm-center justify-content-between border-bottom pb-3">
                        <h6 class="m-0 mb-2 mb-sm-0">Checkout.com</h6>
                        <div class="d-flex flex-wrap gap-2">
                          <img
                            src="../../assets/img/icons/payments/visa-light.png"
                            class="img-fluid w-px-50 h-px-30"
                            alt="visa-card"
                            data-app-light-img="icons/payments/visa-light.png"
                            data-app-dark-img="icons/payments/visa-dark.png" />
                          <img
                            src="../../assets/img/icons/payments/master-light.png"
                            class="img-fluid w-px-50 h-px-30"
                            alt="master-card"
                            data-app-light-img="icons/payments/master-light.png"
                            data-app-dark-img="icons/payments/master-dark.png" />
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- / Payment provider modal -->

              <!-- Payment Methods modal -->
              <div class="modal fade" id="paymentMethods" tabindex="-1" aria-hidden="true">
                <div class="modal-dialog modal-lg modal-simple modal-enable-otp modal-dialog-centered">
                  <div class="modal-content p-3 p-md-5">
                    <div class="modal-body">
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                      <div class="text-center mb-4">
                        <h3 class="mb-3">Select payment methods</h3>
                        <p class="text-muted">Supported payment methods</p>
                      </div>

                      <div class="d-flex justify-content-between align-items-center border-bottom pb-3 mb-3">
                        <div class="d-flex gap-2 align-items-center">
                          <img
                            src="../../assets/img/icons/payments/visa-light.png"
                            class="img-fluid w-px-50 h-px-30"
                            alt="visa-card"
                            data-app-light-img="icons/payments/visa-light.png"
                            data-app-dark-img="icons/payments/visa-dark.png" />

                          <h6 class="m-0">Visa</h6>
                        </div>
                        <h6 class="m-0 d-none d-sm-block">Credit Card</h6>
                      </div>
                      <div class="d-flex justify-content-sm-between align-items-center border-bottom pb-3 mb-3">
                        <div class="d-flex gap-2 align-items-center">
                          <img
                            src="../../assets/img/icons/payments/ae-light.png"
                            class="img-fluid w-px-50 h-px-30"
                            alt="american-express-card"
                            data-app-light-img="icons/payments/ae-light.png"
                            data-app-dark-img="icons/payments/ae-dark.png" />

                          <h6 class="m-0">American Express</h6>
                        </div>
                        <h6 class="m-0 d-none d-sm-block">Credit Card</h6>
                      </div>
                      <div class="d-flex justify-content-between align-items-center border-bottom pb-3 mb-3">
                        <div class="d-flex gap-2 align-items-center">
                          <img
                            src="../../assets/img/icons/payments/master-light.png"
                            class="img-fluid w-px-50 h-px-30"
                            alt="master-card"
                            data-app-light-img="icons/payments/master-light.png"
                            data-app-dark-img="icons/payments/master-dark.png" />

                          <h6 class="m-0">Mastercard</h6>
                        </div>
                        <h6 class="m-0 d-none d-sm-block">Credit Card</h6>
                      </div>
                      <div class="d-flex justify-content-between align-items-center border-bottom pb-3 mb-3">
                        <div class="d-flex gap-2 align-items-center">
                          <img
                            src="../../assets/img/icons/payments/jcb-light.png"
                            class="img-fluid w-px-50 h-px-30"
                            alt="jcb-card"
                            data-app-light-img="icons/payments/jcb-light.png"
                            data-app-dark-img="icons/payments/jcb-dark.png" />
                          <h6 class="m-0">JCB</h6>
                        </div>
                        <h6 class="m-0 d-none d-sm-block">Credit Card</h6>
                      </div>
                      <div class="d-flex justify-content-between align-items-center border-bottom pb-3">
                        <div class="d-flex gap-2 align-items-center">
                          <img
                            src="../../assets/img/icons/payments/dc-light.png"
                            class="img-fluid w-px-50 h-px-30"
                            alt="diners-club-card"
                            data-app-light-img="icons/payments/dc-light.png"
                            data-app-dark-img="icons/payments/dc-dark.png" />
                          <h6 class="m-0">Diners Club</h6>
                        </div>
                        <h6 class="m-0 d-none d-sm-block">Credit Card</h6>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- / Payment Methods modal -->
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
    <script src="../../assets/vendor/libs/cleavejs/cleave.js"></script>
    <script src="../../assets/vendor/libs/cleavejs/cleave-phone.js"></script>
    <script src="../../assets/vendor/libs/select2/select2.js"></script>
    <script src="../../assets/vendor/libs/@form-validation/umd/bundle/popular.min.js"></script>
    <script src="../../assets/vendor/libs/@form-validation/umd/plugin-bootstrap5/index.min.js"></script>
    <script src="../../assets/vendor/libs/@form-validation/umd/plugin-auto-focus/index.min.js"></script>
    <script src="../../assets/vendor/libs/bs-stepper/bs-stepper.js"></script>

    <!-- Main JS -->
    <script src="../../assets/js/main.js"></script>

    <!-- Page JS -->
    <script src="../../assets/js/pages-pricing.js"></script>
    <script src="../../assets/js/modal-create-app.js"></script>
    <script src="../../assets/js/modal-add-new-cc.js"></script>
    <script src="../../assets/js/modal-add-new-address.js"></script>
    <script src="../../assets/js/modal-edit-user.js"></script>
    <script src="../../assets/js/modal-enable-otp.js"></script>
    <script src="../../assets/js/modal-share-project.js"></script>
    <script src="../../assets/js/modal-two-factor-auth.js"></script>
  </body>
</html>
