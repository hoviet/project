<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@include file="/common/taglib.jsp"%>
        <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
        <html>

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <meta http-equiv="X-UA-Compatible" content="ie=edge">
            <title>User</title>
        </head>

        <body>

            <section class="slider" id="spiderman">
                <div class="container">
                    <ul class="nav nav-tabs" role="tablist">

                        <li class="nav-item">
                            <a class="nav-link" href="#DanhSachNguoiDung" role="tab" data-toggle="tab">Chọn Chuyến Đi</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#DanhSachKhoaHoc" role="tab" data-toggle="tab">Chọn Ghế</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#ThongKe" role="tab" data-toggle="tab">Thông Tin Khách Hàng</a>
                        </li>
                    </ul>
                    <br />
                    <!-- Tab panes -->
                    <div class="tab-content">
                        <!--Danh sách người dùng -->
                        <div role="tabpanel" class="tab-pane fade" id="DanhSachNguoiDung">
                            <div class="container">
                                <div class="slider__content">
                                    <div class="slider__form">
                                        <form action="<c:url value='/dat-ve'/>" id="formLogin" method="post">
                                            <div class="form-row">
                                                <div class="form-group col-md-6">
                                                    <label for="inputEmail4">Điểm Đi</label> 
                                                    <select name="idBenXeDi" id="idBenXeDi"onchange="showCustomer(this.value)" style="width: 250px;height: 40px;border: none;border-bottom: 1px solid grey;outline: none">
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
                                                    <select name="idBenXeDen" id="idBenXeDen" style="width: 250px;height: 40px;border: none;border-bottom: 1px solid grey;outline: none">
                									
                									</select> 
                									<span class="sp-thongbao" id="tb-to"></span>
                                                </div>
                                                <div class="form-group col-md-6">
                                                    <label for="inputPassword5">Ngày Khởi Hành</label> <input type="date" class="form-control" id="datepicker" placeholder="dd-mm-yyyy" /> <span class="sp-thongbao" id="tb-date"></span>
                                                </div>
                                            </div>
												<script type="text/javascript">
                                    function showCustomer(str) {
                                        var xhttp;
                                        xhttp = new XMLHttpRequest();
                                        xhttp.onreadystatechange = function() {
                                            if (this.readyState == 4 && this.status == 200) {
                                                var json = JSON.parse(this.responseText);
                                                var html = "";
                                                json.forEach(ele => {
                                                    html = html + '<option value="' + ele.id + '">' + ele.tenBenXe + '</option>';
                                                });
                                                document.getElementById("idBenXeDen").innerHTML = html;
                                            }
                                        };
                                        xhttp.open("GET", "/DatVeXeBus/dat-ve?action=diemDen&id=" + str, true);
                                        xhttp.send();
                                    }
                                </script>
                                            <div class="button__new">
                                                <input type="hidden" value="datVe" name="action" />
                                                <button id="div1" type="submit" class="button__w" onclick="return KiemTraRong2()"> Tiếp
          </button>
                                            </div>
                                            <span class="sp-thongbao" id="tb-subb"></span>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Danh sách khóa học -->
                        <div role="tabpanel" class="tab-pane fade" id="DanhSachKhoaHoc">
                            <div class="container">
                                <div class="content-book3">
                                    <div class="content-imgg1">
                                        <div class="card mb-3" style="width: 28rem;height: 350px;">
                                            <div class="card-body ">
                                                <label style="color:rgb(226, 70, 72);padding-left: 150px;">gắn thông tin vào
    </label>
                                                <div class="lable">
                                                    <label for="">Chọn Chuyến Xe</label>
                                                </div>
                                                <label for="" style="color: red;border-bottom: 1px solid grey;width: 300px;">Chuyển Dữ Liệu
      Vào</label>
                                                <div class="lable2">
                                                    <label for="">Chọn Giờ Khởi hành</label>
                                                </div>
                                                <select name="" id="" style="width: 300px;height: 40px;border: none;border-bottom: 1px solid grey;outline: none">
      <option value="">11h</option>
      <option value="">12h</option>
      <option value="">1h</option>
      <option value="">2h</option>
      <option value="">3h</option>
      <option value="">4h</option>
      <option value="">11h</option>
      <option value="">12h</option>
      <option value="">1h</option>
      <option value="">2h</option>
      <option value="">3h</option>
      <option value="">4h</option>
    </select>
                                                <div class="lable" style="padding-top: 15px">
                                                    <label for="">Chọn Điểm Lên Xe</label>
                                                </div>
                                                <select name="" id="" style="width: 300px;height: 40px;border: none;border-bottom: 1px solid grey;outline: none">
      <option value="">11h</option>
      <option value="">12h</option>
      <option value="">1h</option>
      <option value="">2h</option>
      <option value="">3h</option>
      <option value="">4h</option>
      <option value="">11h</option>
      <option value="">12h</option>
      <option value="">1h</option>
      <option value="">2h</option>
      <option value="">3h</option>
      <option value="">4h</option>
    </select>
                                                <div class="btnw">
                                                    <button class="btn btn-danger" style="margin-left: 30px;" onclick="return QuayLai()">
        Quay Lại
      </button>
                                                    <span><button class="btn btn-danger" style="margin-left: 20px;width: 85%;">
          Tiếp Tục
        </button></span>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="card " style="width: 28rem;height: 300px;">
                                            <div class="card-body">
                                                <label style="color:rgb(226, 70, 72);padding-left: 150px;">Thông Tin Chuyến Đi
    </label>
                                                <div class="labla4">
                                                    <label for="">Khởi Hành</label>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="content-imgg2">
                                        <div class="col-sm-8 col-xs-12 col-ms-12">

                                            <div class="panel" style="width: 183%;border:1px solid rgb(221, 221, 221)">

                                                <div>
                                                    <table class="table">
                                                        <tbody>
                                                            <tr>
                                                                <td>
                                                                    <strong class="text-uppercase">Số ghế:</strong>
                                                                    <span ng-show="info.selectSeats.length > 0" class="ng-hide">
                <!-- ngRepeat: s in info.selectSeats -->
              </span><span ng-show="info.selectSeats.length == 0" class="">Chưa chọn ghế</span>

                                                                </td>
                                                                <td class="text-right">
                                                                    <strong class="text-uppercase">Tổng tiền:</strong> (
                                                                    <span class="text-primary" style="font-weight: 600;" ng-bind-html="info.total|svcMoney">0<sup>₫</sup></span>)
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>

                                                <!--<div class="gold-hour" ng-show="goldHour"></div>-->
                                                <!--<p class="text-center text-uppercase text-primary">Sơ đồ {{info.departureTime.Kind}}</p>-->
                                                <!-- ngIf: seats.length > 0 -->
                                                <div ng-switch="" on="info.departureTime.Kind" ng-if="seats.length > 0" class="">
                                                    <!-- ngSwitchWhen: Ghế -->
                                                    <div ng-switch-when="Ghế">
                                                        <table class="table grid-seat">
                                                            <thead>
                                                                <tr>
                                                                    <th colspan="5">
                                                                        <p class="text-center text-uppercase text-primary">Sơ đồ Ghế</p>
                                                                    </th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <!-- ngRepeat: row in seats track by $index -->
                                                                <tr ng-repeat="row in seats track by $index" ng-animate="'animate'">
                                                                    <!-- ngRepeat: s in row  track by $index -->
                                                                    <td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                                        <!-- ngSwitchWhen: 0 -->
                                                                        <!-- ngSwitchWhen: 1 -->
                                                                        <div class="seat choosed" ng-switch-when="1">04</div>
                                                                        <!-- end ngSwitchWhen: -->
                                                                        <!-- ngSwitchWhen: 2 -->
                                                                    </td>
                                                                    <!-- end ngRepeat: s in row  track by $index -->
                                                                    <td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                                        <!-- ngSwitchWhen: 0 -->
                                                                        <div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">03</div>
                                                                        <!-- end ngSwitchWhen: -->
                                                                        <!-- ngSwitchWhen: 1 -->
                                                                        <!-- ngSwitchWhen: 2 -->
                                                                    </td>
                                                                    <!-- end ngRepeat: s in row  track by $index -->
                                                                    <td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                                        <!-- ngSwitchWhen: 0 -->
                                                                        <!-- ngSwitchWhen: 1 -->
                                                                        <!-- ngSwitchWhen: 2 -->
                                                                    </td>
                                                                    <!-- end ngRepeat: s in row  track by $index -->
                                                                    <td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                                        <!-- ngSwitchWhen: 0 -->
                                                                        <div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">02</div>
                                                                        <!-- end ngSwitchWhen: -->
                                                                        <!-- ngSwitchWhen: 1 -->
                                                                        <!-- ngSwitchWhen: 2 -->
                                                                    </td>
                                                                    <!-- end ngRepeat: s in row  track by $index -->
                                                                    <td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                                        <!-- ngSwitchWhen: 0 -->
                                                                        <!-- ngSwitchWhen: 1 -->
                                                                        <div class="seat choosed" ng-switch-when="1">01</div>
                                                                        <!-- end ngSwitchWhen: -->
                                                                        <!-- ngSwitchWhen: 2 -->
                                                                    </td>
                                                                    <!-- end ngRepeat: s in row  track by $index -->
                                                                </tr>
                                                                <!-- end ngRepeat: row in seats track by $index -->
                                                                <tr ng-repeat="row in seats track by $index" ng-animate="'animate'">
                                                                    <!-- ngRepeat: s in row  track by $index -->
                                                                    <td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                                        <!-- ngSwitchWhen: 0 -->
                                                                        <div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">08</div>
                                                                        <!-- end ngSwitchWhen: -->
                                                                        <!-- ngSwitchWhen: 1 -->
                                                                        <!-- ngSwitchWhen: 2 -->
                                                                    </td>
                                                                    <!-- end ngRepeat: s in row  track by $index -->
                                                                    <td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                                        <!-- ngSwitchWhen: 0 -->
                                                                        <div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">07</div>
                                                                        <!-- end ngSwitchWhen: -->
                                                                        <!-- ngSwitchWhen: 1 -->
                                                                        <!-- ngSwitchWhen: 2 -->
                                                                    </td>
                                                                    <!-- end ngRepeat: s in row  track by $index -->
                                                                    <td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                                        <!-- ngSwitchWhen: 0 -->
                                                                        <!-- ngSwitchWhen: 1 -->
                                                                        <!-- ngSwitchWhen: 2 -->
                                                                    </td>
                                                                    <!-- end ngRepeat: s in row  track by $index -->
                                                                    <td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                                        <!-- ngSwitchWhen: 0 -->
                                                                        <div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">06</div>
                                                                        <!-- end ngSwitchWhen: -->
                                                                        <!-- ngSwitchWhen: 1 -->
                                                                        <!-- ngSwitchWhen: 2 -->
                                                                    </td>
                                                                    <!-- end ngRepeat: s in row  track by $index -->
                                                                    <td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                                        <!-- ngSwitchWhen: 0 -->
                                                                        <div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">05</div>
                                                                        <!-- end ngSwitchWhen: -->
                                                                        <!-- ngSwitchWhen: 1 -->
                                                                        <!-- ngSwitchWhen: 2 -->
                                                                    </td>
                                                                    <!-- end ngRepeat: s in row  track by $index -->
                                                                </tr>
                                                                <!-- end ngRepeat: row in seats track by $index -->
                                                                <tr ng-repeat="row in seats track by $index" ng-animate="'animate'">
                                                                    <!-- ngRepeat: s in row  track by $index -->
                                                                    <td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                                        <!-- ngSwitchWhen: 0 -->
                                                                        <div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">12</div>
                                                                        <!-- end ngSwitchWhen: -->
                                                                        <!-- ngSwitchWhen: 1 -->
                                                                        <!-- ngSwitchWhen: 2 -->
                                                                    </td>
                                                                    <!-- end ngRepeat: s in row  track by $index -->
                                                                    <td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                                        <!-- ngSwitchWhen: 0 -->
                                                                        <div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">11</div>
                                                                        <!-- end ngSwitchWhen: -->
                                                                        <!-- ngSwitchWhen: 1 -->
                                                                        <!-- ngSwitchWhen: 2 -->
                                                                    </td>
                                                                    <!-- end ngRepeat: s in row  track by $index -->
                                                                    <td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                                        <!-- ngSwitchWhen: 0 -->
                                                                        <!-- ngSwitchWhen: 1 -->
                                                                        <!-- ngSwitchWhen: 2 -->
                                                                    </td>
                                                                    <!-- end ngRepeat: s in row  track by $index -->
                                                                    <td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                                        <!-- ngSwitchWhen: 0 -->
                                                                        <div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">10</div>
                                                                        <!-- end ngSwitchWhen: -->
                                                                        <!-- ngSwitchWhen: 1 -->
                                                                        <!-- ngSwitchWhen: 2 -->
                                                                    </td>
                                                                    <!-- end ngRepeat: s in row  track by $index -->
                                                                    <td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                                        <!-- ngSwitchWhen: 0 -->
                                                                        <div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">09</div>
                                                                        <!-- end ngSwitchWhen: -->
                                                                        <!-- ngSwitchWhen: 1 -->
                                                                        <!-- ngSwitchWhen: 2 -->
                                                                    </td>
                                                                    <!-- end ngRepeat: s in row  track by $index -->
                                                                </tr>
                                                                <!-- end ngRepeat: row in seats track by $index -->
                                                                <tr ng-repeat="row in seats track by $index" ng-animate="'animate'">
                                                                    <!-- ngRepeat: s in row  track by $index -->
                                                                    <td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                                        <!-- ngSwitchWhen: 0 -->
                                                                        <div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">16</div>
                                                                        <!-- end ngSwitchWhen: -->
                                                                        <!-- ngSwitchWhen: 1 -->
                                                                        <!-- ngSwitchWhen: 2 -->
                                                                    </td>
                                                                    <!-- end ngRepeat: s in row  track by $index -->
                                                                    <td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                                        <!-- ngSwitchWhen: 0 -->
                                                                        <div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">15</div>
                                                                        <!-- end ngSwitchWhen: -->
                                                                        <!-- ngSwitchWhen: 1 -->
                                                                        <!-- ngSwitchWhen: 2 -->
                                                                    </td>
                                                                    <!-- end ngRepeat: s in row  track by $index -->
                                                                    <td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                                        <!-- ngSwitchWhen: 0 -->
                                                                        <!-- ngSwitchWhen: 1 -->
                                                                        <!-- ngSwitchWhen: 2 -->
                                                                    </td>
                                                                    <!-- end ngRepeat: s in row  track by $index -->
                                                                    <td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                                        <!-- ngSwitchWhen: 0 -->
                                                                        <div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">14</div>
                                                                        <!-- end ngSwitchWhen: -->
                                                                        <!-- ngSwitchWhen: 1 -->
                                                                        <!-- ngSwitchWhen: 2 -->
                                                                    </td>
                                                                    <!-- end ngRepeat: s in row  track by $index -->
                                                                    <td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                                        <!-- ngSwitchWhen: 0 -->
                                                                        <div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">13</div>
                                                                        <!-- end ngSwitchWhen: -->
                                                                        <!-- ngSwitchWhen: 1 -->
                                                                        <!-- ngSwitchWhen: 2 -->
                                                                    </td>
                                                                    <!-- end ngRepeat: s in row  track by $index -->
                                                                </tr>
                                                                <!-- end ngRepeat: row in seats track by $index -->
                                                                <tr ng-repeat="row in seats track by $index" ng-animate="'animate'">
                                                                    <!-- ngRepeat: s in row  track by $index -->
                                                                    <td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                                        <!-- ngSwitchWhen: 0 -->
                                                                        <div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">20</div>
                                                                        <!-- end ngSwitchWhen: -->
                                                                        <!-- ngSwitchWhen: 1 -->
                                                                        <!-- ngSwitchWhen: 2 -->
                                                                    </td>
                                                                    <!-- end ngRepeat: s in row  track by $index -->
                                                                    <td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                                        <!-- ngSwitchWhen: 0 -->
                                                                        <div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">19</div>
                                                                        <!-- end ngSwitchWhen: -->
                                                                        <!-- ngSwitchWhen: 1 -->
                                                                        <!-- ngSwitchWhen: 2 -->
                                                                    </td>
                                                                    <!-- end ngRepeat: s in row  track by $index -->
                                                                    <td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                                        <!-- ngSwitchWhen: 0 -->
                                                                        <!-- ngSwitchWhen: 1 -->
                                                                        <!-- ngSwitchWhen: 2 -->
                                                                    </td>
                                                                    <!-- end ngRepeat: s in row  track by $index -->
                                                                    <td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                                        <!-- ngSwitchWhen: 0 -->
                                                                        <div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">18</div>
                                                                        <!-- end ngSwitchWhen: -->
                                                                        <!-- ngSwitchWhen: 1 -->
                                                                        <!-- ngSwitchWhen: 2 -->
                                                                    </td>
                                                                    <!-- end ngRepeat: s in row  track by $index -->
                                                                    <td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                                        <!-- ngSwitchWhen: 0 -->
                                                                        <div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">17</div>
                                                                        <!-- end ngSwitchWhen: -->
                                                                        <!-- ngSwitchWhen: 1 -->
                                                                        <!-- ngSwitchWhen: 2 -->
                                                                    </td>
                                                                    <!-- end ngRepeat: s in row  track by $index -->
                                                                </tr>
                                                                <!-- end ngRepeat: row in seats track by $index -->
                                                                <tr ng-repeat="row in seats track by $index" ng-animate="'animate'">
                                                                    <!-- ngRepeat: s in row  track by $index -->
                                                                    <td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                                        <!-- ngSwitchWhen: 0 -->
                                                                        <div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">24</div>
                                                                        <!-- end ngSwitchWhen: -->
                                                                        <!-- ngSwitchWhen: 1 -->
                                                                        <!-- ngSwitchWhen: 2 -->
                                                                    </td>
                                                                    <!-- end ngRepeat: s in row  track by $index -->
                                                                    <td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                                        <!-- ngSwitchWhen: 0 -->
                                                                        <div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">23</div>
                                                                        <!-- end ngSwitchWhen: -->
                                                                        <!-- ngSwitchWhen: 1 -->
                                                                        <!-- ngSwitchWhen: 2 -->
                                                                    </td>
                                                                    <!-- end ngRepeat: s in row  track by $index -->
                                                                    <td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                                        <!-- ngSwitchWhen: 0 -->
                                                                        <!-- ngSwitchWhen: 1 -->
                                                                        <!-- ngSwitchWhen: 2 -->
                                                                    </td>
                                                                    <!-- end ngRepeat: s in row  track by $index -->
                                                                    <td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                                        <!-- ngSwitchWhen: 0 -->
                                                                        <div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">22</div>
                                                                        <!-- end ngSwitchWhen: -->
                                                                        <!-- ngSwitchWhen: 1 -->
                                                                        <!-- ngSwitchWhen: 2 -->
                                                                    </td>
                                                                    <!-- end ngRepeat: s in row  track by $index -->
                                                                    <td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                                        <!-- ngSwitchWhen: 0 -->
                                                                        <div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">21</div>
                                                                        <!-- end ngSwitchWhen: -->
                                                                        <!-- ngSwitchWhen: 1 -->
                                                                        <!-- ngSwitchWhen: 2 -->
                                                                    </td>
                                                                    <!-- end ngRepeat: s in row  track by $index -->
                                                                </tr>
                                                                <!-- end ngRepeat: row in seats track by $index -->
                                                                <tr ng-repeat="row in seats track by $index" ng-animate="'animate'">
                                                                    <!-- ngRepeat: s in row  track by $index -->
                                                                    <td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                                        <!-- ngSwitchWhen: 0 -->
                                                                        <div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">28</div>
                                                                        <!-- end ngSwitchWhen: -->
                                                                        <!-- ngSwitchWhen: 1 -->
                                                                        <!-- ngSwitchWhen: 2 -->
                                                                    </td>
                                                                    <!-- end ngRepeat: s in row  track by $index -->
                                                                    <td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                                        <!-- ngSwitchWhen: 0 -->
                                                                        <div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">27</div>
                                                                        <!-- end ngSwitchWhen: -->
                                                                        <!-- ngSwitchWhen: 1 -->
                                                                        <!-- ngSwitchWhen: 2 -->
                                                                    </td>
                                                                    <!-- end ngRepeat: s in row  track by $index -->
                                                                    <td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                                        <!-- ngSwitchWhen: 0 -->
                                                                        <!-- ngSwitchWhen: 1 -->
                                                                        <!-- ngSwitchWhen: 2 -->
                                                                    </td>
                                                                    <!-- end ngRepeat: s in row  track by $index -->
                                                                    <td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                                        <!-- ngSwitchWhen: 0 -->
                                                                        <div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">26</div>
                                                                        <!-- end ngSwitchWhen: -->
                                                                        <!-- ngSwitchWhen: 1 -->
                                                                        <!-- ngSwitchWhen: 2 -->
                                                                    </td>
                                                                    <!-- end ngRepeat: s in row  track by $index -->
                                                                    <td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                                        <!-- ngSwitchWhen: 0 -->
                                                                        <div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">25</div>
                                                                        <!-- end ngSwitchWhen: -->
                                                                        <!-- ngSwitchWhen: 1 -->
                                                                        <!-- ngSwitchWhen: 2 -->
                                                                    </td>
                                                                    <!-- end ngRepeat: s in row  track by $index -->
                                                                </tr>
                                                                <!-- end ngRepeat: row in seats track by $index -->
                                                            </tbody>

                                                        </table>
                                                        <div class="row">
                                                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 col-ms-12 text-center">
                                                                <div class="ordered"></div><span>Đang chọn</span>
                                                            </div>
                                                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 col-ms-12 text-center">
                                                                <div class="booked"></div><span>Đã đặt</span>
                                                            </div>
                                                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 col-ms-12 text-center">
                                                                <div class="nothing"></div><span>Còn trống</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- end ngSwitchWhen: -->
                                                    <!-- ngSwitchWhen: Giường -->
                                                    <!-- ngSwitchWhen: Limousine -->
                                                </div>
                                                <!-- end ngIf: seats.length > 0 -->
                                                <!-- ngIf: seats.length == 0 && getSeatComplete === true -->
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Kết thúc danh sách khóa học -->
                        <!-- Thống kê -->
                        <div role="tabpanel" class="tab-pane fade" id="ThongKe">
                            <div class="container">
                                <div class="content-book2">
                                    <div class="content-img1">
                                        <h1 style="color: #ef5222;box-sizing: border-box;font-size: 17px;text-align: center;padding-top: 10px">
                                            Thông Tin Tài Khoản
                                        </h1>
                                        <div class="panel" style="min-height: 390px;">

                                            <form id="form-steps" name="form" ng-submit="form.$valid ? next(form.$valid): showError(form.$error)" novalidate="" class="ng-dirty ng-valid-parse ng-valid-maxlength ng-invalid ng-invalid-required ng-valid-email">
                                                <fieldset>

                                                    <div class="row">
                                                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-ms-12">
                                                            <div class="form-group clearfix">
                                                                <label for="">Họ tên <span class="text-primary">*</span></label>
                                                                <div class="controls no-icon">
                                                                    <input ng-model="info.CustName" type="text" class="form-control ng-pristine ng-untouched ng-invalid ng-invalid-required ng-valid-maxlength invalid" ng-class="(form.$submitted || form.$dirty) ? (form.CustName.$valid ? 'valid': 'invalid'): ''" name="CustName"
                                                                        placeholder="${USER.hoTen}" required="" ng-maxlength="80">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="row">
                                                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-ms-12">
                                                            <div class="form-group clearfix">
                                                                <label for="">Email <span class="text-primary">*</span></label>
                                                                <div class="controls no-icon">
                                                                    <input ng-model="info.CustEmail" type="email" class="form-control ng-pristine ng-untouched ng-valid-email ng-invalid ng-invalid-required invalid" ng-class="(form.$submitted || form.$dirty) ? (form.CustEmail.$valid ? 'valid': 'invalid'): ''" name="CustEmail"
                                                                        placeholder="${USER.email}" required="">
                                                                </div>
                                                            </div>
                                                        </div>                                                    
                                                    </div>

                                                    <div class="row">
                                                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-ms-12">
                                                            <div class="form-group clearfix">
                                                                <label for="">Di động <span class="text-primary">*</span></label>
                                                                <div class="controls no-icon">
                                                                    <input ng-model="info.CustMobile" type="text" class="form-control ng-pristine ng-untouched ng-invalid ng-invalid-required ng-valid-maxlength invalid" ng-class="(form.$submitted || form.$dirty) ? (form.CustMobile.$valid ? 'valid': 'invalid'): ''" name="CustMobile"
                                                                        placeholder="${USER.soDienThoai}" required="" ng-maxlength="30" vietnam-phone="">
                                                                </div>
                                                            </div>
                                                        </div>                                                     
                                                    </div>

                                                     <div class="row">
                                                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-ms-12">
                                                            <div class="form-group clearfix">
                                                                <label for="">Địa Chỉ <span class="text-primary">*</span></label>
                                                                <div class="controls no-icon">
                                                                    <input ng-model="info.CustName" type="text" class="form-control ng-pristine ng-untouched ng-invalid ng-invalid-required ng-valid-maxlength invalid" ng-class="(form.$submitted || form.$dirty) ? (form.CustName.$valid ? 'valid': 'invalid'): ''" name="CustName"
                                                                        placeholder="${USER.diaChi}" required="" ng-maxlength="80">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </fieldset>

                                            </form>
                                        </div>
                                        <div class="btnw">
                                            <button class="btn btn-danger" style="margin-left: 30px;">ĐẶT VÉ</button>
                                        </div>
                                        <span class="sp-thongbao" id="tb-submit" style="display: block;margin-top: 20px;"></span>
                                    </div>
                                    <div class="content-img2">
                                        <h1 style="color: #ef5222;box-sizing: border-box;font-size: 17px;text-align: center;padding-top: 10px">
                                            Điều Khoản Và Lưu Ý
                                        </h1>
                                        <p>
                                            (*) Quý khách vui lòng mang email có chứa mã vé đến văn phòng để đổi vé lên xe trước giờ xuất bến ít nhất
                                            <span style="color: #ef5222">60p</span>
                                        </p>
                                        <p>
                                            (*) Thông tin hành khách phải chính xác, nếu không sẽ không thể lên xe hoặc hủy/đổi vé
                                            <span style="color: #ef5222">1 lần</span>
                                        </p>
                                        <p>
                                            (*) Quý khách không được đổi / trả vé vào các ngày Lễ Tết ( ngày thường qúy khách được quyền chuyển đổi hoặc hủy vé
                                        </p>
                                        <p>
                                            (*) Nếu quý khách có nhu cầu trung chuyển, vui lòng liên hệ số điện thoại
                                            <span style="color: #ef5222">19008198</span> trước khi đặt vé. Chúng tôi sẽ không đón/ trung chuyển tại những điểm xe trung chuyển không thể tới được.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Kết thúc thống kê -->
                    </div>
                </div>
            </section>
        </body>

        </html>