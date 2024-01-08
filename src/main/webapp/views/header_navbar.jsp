<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    </div>
    <!-- /Search -->

    <ul class="navbar-nav flex-row align-items-center ms-auto">
      <!-- Language -->
      <li class="nav-item dropdown-language dropdown me-2 me-xl-0">
      </li>
      <!-- /Language -->

      <!-- Quick links  -->
      <li class="nav-item dropdown-shortcuts navbar-dropdown dropdown me-2 me-xl-0">
      </li>
      <!-- Quick links -->

      <!-- Style Switcher -->
      <li class="nav-item dropdown-style-switcher dropdown me-2 me-xl-0">
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
              <h5 class="text-body mb-0 me-auto">알림</h5>
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
                    <h6 class="mb-1">새로운 메시지가 도착했습니다.</h6>
                    <small class="text-muted">메시지 시간</small>
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
	                     <h6 class="mb-1">결재할 문서가 도착하였습니다.</h6>	                             
	                       <small class="text-muted">메시지 시간</small>
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
            <button class="btn btn-primary text-uppercase w-100">알림 전체 삭제</button>
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
            <a class="dropdown-item" href="#">
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
</nav>
<!-- / Navbar -->
