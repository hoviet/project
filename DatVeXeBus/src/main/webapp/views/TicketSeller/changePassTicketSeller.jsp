<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="dec"%>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
    </head>

    <body>
        <div class="pcoded-content">
            <div class="pcoded-inner-content">
                <!-- Main-body start -->
                <div class="main-body">
                    <div class="page-wrapper">
                        <!-- Page body start -->
                        <div class="page-body">
                            <div class="row">
                                <div class="col-sm-12">
                                    <!-- Basic Inputs Validation start -->
                                    <div class="card">
                                        <div class="card-header">
                                            <h5>ĐỔI MẬT KHẨU</h5>
                                        </div>
                                        <div class="card-block">                                       	
                                            <form action="<c:url value='/TicketSeller/info'/>" id="" method="post">
                                                <div class="form-group row">
                                                    <label class="col-sm-2 col-form-label">Mật khẩu hiện tai</label>
                                                    <div class="col-sm-10">
                                                        <input type="password" class="form-control" id="matKhau" name="matKhau" placeholder="Mật khẩu hiện tai">
                                                        <span class="messages"></span>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label class="col-sm-2 col-form-label">Mật khẩu mới</label>
                                                    <div class="col-sm-10">
                                                        <input type="password" class="form-control" id="password" name="password" placeholder="Mật khẩu mới">
                                                        <span class="messages"></span>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label class="col-sm-2 col-form-label">Nhập lại mật khẩu</label>
                                                    <div class="col-sm-10">
                                                        <input type="password" class="form-control" id="repeat-password" name="repeat-password" placeholder="Nhập lại mật khẩu">
                                                        <span class="messages"></span>
                                                    </div>
                                                </div>
                                                <input type="hidden" value="editPass" name="action" />
                                                <div class="form-group row">
													<label class="col-sm-2"></label>
													<div class="col-sm-10">
														<button type="submit" class="btn btn-primary m-b-0">Save</button>
													</div>
												</div>
												<c:if test="${not empty sms}">
                                        	<div class="alert alert-${alert}" ><strong accept-charset="UTF-8">${sms}!</strong></div>
                                        </c:if> 
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Page body end -->
                    </div>
                </div>
                <!-- Main-body end -->
            </div>
        </div>

    </body>

    </html>