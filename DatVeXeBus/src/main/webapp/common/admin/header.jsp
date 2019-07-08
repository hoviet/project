<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@include file="/common/taglib.jsp"%>
        <!DOCTYPE html>
        <nav class="navbar header-navbar pcoded-header">
            <div class="navbar-wrapper">
                <!-- logo -->
                <div class="navbar-logo">
                    <a class="mobile-menu" id="mobile-collapse" href="#!">
                        <i class="feather icon-menu"></i>
                    </a>
                    <a href="#">
				<img class="img-fluid" src="<c:url value='/template/admin/files/assets/images/logo.png'/>" alt="Theme-Logo"></a>
                    <a class="mobile-options">
                        <i class="feather icon-more-horizontal"></i>
                    </a>
                </div>
                <div class="navbar-container container-fluid">
                    <!-- full man hinh -->
                    <ul class="nav-left">
                        <li>
                            <a href="#!" onclick="javascript:toggleFullScreen()">
                                <i class="feather icon-maximize full-screen"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- user logout -->
                    <ul class="nav-right">
                        <li class="user-profile header-notification">
                            <c:if test="${ not empty USER}">
                                <div class="dropdown-primary dropdown">
                                    <div class="dropdown-toggle" data-toggle="dropdown">
                                        <img src="<c:url value='/template/admin/files/assets/images/avatar-4.jpg'/>" class="img-radius" alt="User-Profile-Image">
                                        <span>${USER.hoTen}</span>
                                        <i class="feather icon-chevron-down"></i>
                                    </div>
                                    <ul class="show-notification profile-notification dropdown-menu" data-dropdown-in="fadeIn" data-dropdown-out="fadeOut">
                                        <li>
                                            <a href="<c:url value='/dang-nhap?action=logout'/>">
                                                <i class="feather icon-log-out"></i> Logout
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </c:if>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>