<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
    <!DOCTYPE html>
    <html>

    <head>
        <title>Insert title here</title>
    </head>

    <body>
        <div class="pcoded-content">
            <div class="pcoded-inner-content">
                <!-- Main-body start -->
                <div class="main-body">
                    <div class="page-wrapper">
                        <!-- Page-body start -->
                        <div class="page-body">
                            <div class="card">
                                <div class="card-block">
                                    <table class="table table-striped table-bordered">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Họ và tên</th>
                                                <th>Email</th>
                                                <th>Số điện thoại</th>
                                                <th>Số CMND</th>
                                                <th>Địa chỉ</th>
                                                <th class="tabledit-toolbar-column">Thao tác</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:if test="${not empty ListUsers}">  
                                            <c:forEach items="${ListUsers}" var="item">                                          
                                                    <tr>
                                                        <th scope="row">${item.id}</th>
                                                        <td class="tabledit-view-mode"><span class="tabledit-span">${item.hoTen}</span>
                                                        </td>
                                                        <td class="tabledit-view-mode"><span class="tabledit-span">${item.email}</span>
                                                        </td>
                                                        <td class="tabledit-view-mode"><span class="tabledit-span">${item.soDienThoai}</span>
                                                        </td>
                                                        <td class="tabledit-view-mode"><span class="tabledit-span">${item.soCMND}</span>
                                                        </td>
                                                        <td class="tabledit-view-mode"><span class="tabledit-span">${item.diaChi}</span>
                                                        </td>
                                                        <td style="white-space: nowrap; width: 1%;">
                                                            <div class="tabledit-toolbar btn-toolbar" style="text-align: left;">
                                                                <div class="btn-group btn-group-sm" style="float: none;">
                                                                    <button type="button" class="tabledit-edit-button btn btn-primary waves-effect waves-light" style="float: none;margin: 5px;"><span class="icofont icofont-ui-edit"></span></button>
                                                                    <button type="button" class="tabledit-delete-button btn btn-danger waves-effect waves-light" style="float: none;margin: 5px;"><span class="icofont icofont-ui-delete"></span></button>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                            </c:if>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <!-- Edit With Button card end -->
                    </div>
                    <!-- Page-body end -->
                </div>
            </div>
        </div>
        </div>
    </body>

    </html>