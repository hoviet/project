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
                    <span class="pcoded-micon"><i class="feather icon-user"></i></span>
                    <span class="pcoded-mtext">Tài khoản</span>
                </a>
                <ul class="pcoded-submenu">
                    <li class="">
                        <a href="<c:url value='/TicketSeller/info'/>">
                            <span class="pcoded-mtext">Thông tin cá nhân</span>
                        </a>
                    </li>
                    <li class="">
                        <a href="<c:url value='/TicketSeller/info?action=changePass'/>">
                            <span class="pcoded-mtext">Đổi mật khẩu</span>
                        </a>
                    </li>
                </ul>
            </li>         
            <li class="pcoded-hasmenu">
                <a href="javascript:void(0)">
                    <span class="pcoded-micon"><i class="feather icon-list"></i></span>
                    <span class="pcoded-mtext">Quản Lý Vé Xe</span>
                </a>
                <ul class="pcoded-submenu">
                    <li class="">
                        <a href="<c:url value='/TicketSeller/manage?action=viewticked'/>">
                            <span class="pcoded-mtext">Xem Tất Cả Vé Đã Đặt</span>
                        </a>
                    </li>
                    <li class="">
                        <a href="<c:url value='/TicketSeller/manage?action=addUser'/>">
                            <span class="pcoded-mtext">Hủy Vé Đã Được Đặt</span>
                        </a>
                    </li>
                    <li class=" ">
                        <a href="menu-bottom.htm">
                            <span class="pcoded-mtext">Xem Tất Cả Ghế Trống</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="pcoded-hasmenu">
                <a href="javascript:void(0)">
                    <span class="pcoded-micon"><i class="feather icon-menu"></i></span>
                    <span class="pcoded-mtext">Cập Nhật & Tìm Kiếm</span>
                </a>
                <ul class="pcoded-submenu">
                    <li class="">
                        <a href="<c:url value='/TicketSeller/manage?action=listUser'/>">
                            <span class="pcoded-mtext">Tìm Kiếm & Lọc Ghế Theo Vé</span>
                        </a>
                    </li>
                    <li class="">
                        <a href="<c:url value='/TicketSeller/manage?action=addUser'/>">
                            <span class="pcoded-mtext">Cập Nhật Tình Trạng Vé</span>
                        </a>
                    </li>
                    <li class="">
                        <a href="<c:url value='/TicketSeller/manage?action=addUser'/>">
                            <span class="pcoded-mtext">Cập Nhật Tình Trạng Chỗ Ngồi</span>
                        </a>
                    </li>
                </ul>
            </li>
        </ul>
    </div>
</nav>