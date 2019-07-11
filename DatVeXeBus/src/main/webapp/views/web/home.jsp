<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@include file="/common/taglib.jsp"%>
        <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
        <html>

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Trang chủ</title>
        </head>

        <body>

            <section class="slider1">
                <div class="container">
                    <div class="slider__content">
                        <div class="slider__form">
                            <form action="<c:url value='/dat-ve'/>" id="formLogin" method="post">
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="inputEmail4">Điểm Đi</label>
                                        <select name="" id="" style="width: 250px;height: 40px;border: none;border-bottom: 1px solid grey;outline: none">
                                        <c:if test="${not empty DSBenXe}">
                                        	<c:forEach var="item" items="${DSBenXe}">
                                        		<option value="${item.id}">${item.tenBenXe}</option>
                                        	</c:forEach>
                                        </c:if>
                                        </select>
                                        <span class="sp-thongbao" id="tb-from"></span>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="inputPassword4">Điểm Đến</label>
                                        <select name="" id="" style="width: 250px;height: 40px;border: none;border-bottom: 1px solid grey;outline: none">
                                        <c:if test="${not empty DSBenXe}">
                                        	<c:forEach var="item" items="${DSBenXe}">
                                        		<option value="${item.id}">${item.tenBenXe}</option>
                                        	</c:forEach>
                                        </c:if>
                                          </select> <span class="sp-thongbao" id="tb-to"></span>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="inputPassword5">Ngày Khởi Hành</label> <input type="date" class="form-control" id="datepicker" placeholder="dd-mm-yyyy" /> <span class="sp-thongbao" id="tb-date"></span>
                                    </div>

                                </div>

                                <div class="button__new">
                                    <input type="hidden" value="datVe" name="action" />
                                    <button id="div1" type="submit" class="button__w" onclick="return KiemTraRong2()"> Tìm Kiếm
							</button>
                                </div>
                                <span class="sp-thongbao" id="tb-subb"></span>
                            </form>
                        </div>
                        <div class="slider__img">
                            <img src="<c:url value='/template/web/img/bus2.png' />" alt="" />
                        </div>
                    </div>
                </div>
            </section>
            <section class="product">
                <div class="container">
                    <div class="product__content">
                        <div class="product__detail">
                            <div class="detail__img1 img__img">
                                <img src="<c:url value='/template/web/img/1.png' />" alt="" />
                                <div class="img__detail">
                                    <h1>Số Lượng Xe</h1>
                                    <p>Chất Lượng</p>
                                    <b>Hơn 500 Xe </b>
                                    <p>Chất Lượng Hiện Đại</p>
                                </div>
                            </div>
                        </div>
                        <div class="product__detail">
                            <div class="detail__img1 img__img">
                                <img src="<c:url value='/template/web/img/2.png' />" alt="" />
                                <div class="img__detail">
                                    <h1>Số Lượng Xe</h1>
                                    <p>Chất Lượng</p>
                                    <b>Hơn 500 Xe </b>
                                    <p>Chất Lượng Hiện Đại</p>
                                </div>
                            </div>
                        </div>
                        <div class="product__detail">
                            <div class="detail__img1">
                                <img src="<c:url value='/template/web/img/3.png' />" alt="" />
                                <div class="img__detail">
                                    <h1>Số Lượng Xe</h1>
                                    <p>Chất Lượng</p>
                                    <b>Hơn 500 Xe </b>
                                    <p>Chất Lượng Hiện Đại</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

        </body>

        </html>