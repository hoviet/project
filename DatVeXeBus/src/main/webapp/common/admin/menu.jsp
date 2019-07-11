<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@include file="/common/taglib.jsp"%>
        <!DOCTYPE html>
        <nav class="pcoded-navbar">
            <div class="pcoded-inner-navbar main-menu">
                <div class="pcoded-navigatio-lavel">MENU</div>
                <ul class="pcoded-item pcoded-left-item">
                    <li class="pcoded-hasmenu">
                        <a href="javascript:void(0)">
                            <span class="pcoded-micon"><i class="feather icon-home"></i></span>
                            <span class="pcoded-mtext">Tài khoản</span>
                        </a>
                        <ul class="pcoded-submenu">
                            <li class="">
                                <a href="<c:url value='/admin/info'/>">
                                    <span class="pcoded-mtext">Thông tin cá nhân</span>
                                </a>
                            </li>
                            <li class="">
                                <a href="<c:url value='/admin/info?action=changePass'/>">
                                    <span class="pcoded-mtext">Đổi mật khẩu</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="pcoded-hasmenu">
                        <a href="javascript:void(0)">
                            <span class="pcoded-micon"><i class="feather icon-sidebar"></i></span>
                            <span class="pcoded-mtext">Quản lý nhân viên</span>
                        </a>
                        <ul class="pcoded-submenu">
                            <li class="">
                                <a href="<c:url value='/admin/manage?action=listUser'/>">
                                    <span class="pcoded-mtext">Danh sach nhân viên</span>
                                </a>
                            </li>
                            <li class="">
                                <a href="<c:url value='/admin/manage?action=addUser'/>">
                                    <span class="pcoded-mtext">Thêm nhân viên</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="menu-bottom.htm">
                                    <span class="pcoded-mtext">Cập nhật thông tin nhân viên</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="box-layout.htm" target="_blank">
                                    <span class="pcoded-mtext">Phân quyền</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>