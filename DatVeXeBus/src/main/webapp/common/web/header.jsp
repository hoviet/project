<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <header class="header">
        <div class="container">
            <div class="header__content">
                <div class="header__img">
                    <a href='<c:url value="/trang-chu"/>'><img src="<c:url value='/template/web/img/cccc.jpg' />" alt="" /></a>
                </div>
                <div class="header__menu">
                    <ul>
                        <li class="home">
                            <a href='<c:url value="/trang-chu"/>'>Trang Chủ</a>
                        </li>
                        <c:if test="${ empty USER}">
                            <li class="lol">
                                <a class="modall" href="#" data-toggle="modal" data-target="#modalForm">Đăng Nhập</a> <span>/ </span>
                                <a href="#" data-toggle="modal" data-target="#registerModal">Đăng Kí</a>
                            </li>
                        </c:if>
                        <c:if test="${ not empty USER}">
                            <li class="lol">
                                <span>User:  </span>
                                <a class="modall">${USER.hoTen}</a>
                                <span>    </span>
                                <a href='<c:url value="/dang-nhap?action=logout"/>'>thoat</a>
                            </li>
                        </c:if>
                    </ul>
                </div>
            </div>
        </div>
    </header>