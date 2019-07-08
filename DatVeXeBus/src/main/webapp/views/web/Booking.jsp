<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <link rel="stylesheet" href="css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="css/animate.css" />
    <link
      rel="stylesheet"
      href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"
    />
    <link
      href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900&amp;subset=vietnamese"
      rel="stylesheet"
    />
    <link
      href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="./css/index.css" />
    <link rel="stylesheet" href="./css/text.css">
    <title>Booking</title>
  </head>
  <body>
    <section class="slider">
      <div class="container">
        <ul class="nav nav-tabs" role="tablist">
        
          <li class="nav-item">
            <a
              class="nav-link"
              href="#DanhSachNguoiDung"
              role="tab"
              data-toggle="tab"
              >Chọn Ghế</a
            >
          </li>
          <li class="nav-item">
            <a
              class="nav-link"
              href="#DanhSachKhoaHoc"
              role="tab"
              data-toggle="tab"
              >Thông Tin Khách Hàng</a
            >
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#ThongKe" role="tab" data-toggle="tab"
              >Thống kê</a
            >
          </li>
        </ul>
        <br />
        <!-- Tab panes -->
        <div class="tab-content">
          <!--Danh sách người dùng -->
          <div role="tabpanel" class="tab-pane fade" id="DanhSachNguoiDung">
            <div class="container">
              <div class="content-book3">
                <div class="content-imgg1">
                  <div class="card mb-3" style="width: 28rem;height: 350px;">
                    <div class="card-body ">
                      <label style="color:rgb(226, 70, 72);padding-left: 150px;"
                        >gắn thông tin vào
                      </label>
                      <div class="lable">
                        <label for="">Chọn Chuyến Xe</label>
                      </div>
                      <label
                        for=""
                        style="color: red;border-bottom: 1px solid grey;width: 300px;"
                        >Chuyển Dữ Liệu Vào</label
                      >
                      <div class="lable2">
                        <label for="">Chọn Giờ Khởi hành</label>
                      </div>
                      <select
                        name=""
                        id=""
                        style="width: 300px;height: 40px;border: none;border-bottom: 1px solid grey;outline: none"
                      >
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
                      <select
                        name=""
                        id=""
                        style="width: 300px;height: 40px;border: none;border-bottom: 1px solid grey;outline: none"
                      >
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
                        <button
                          class="btn btn-danger"
                          style="margin-left: 30px;"
                          onclick="return QuayLai()"
                        >
                          Quay Lại
                        </button>
                        <span
                          ><button
                            class="btn btn-danger"
                            style="margin-left: 20px;width: 85%;"
                          >
                            Tiếp Tục
                          </button></span
                        >
                      </div>
                    </div>
                  </div>

                  <div
                    class="card "
                    style="width: 28rem;height: 300px;"
                  >
                    <div class="card-body">
                      <label style="color:rgb(226, 70, 72);padding-left: 150px;"
                        >Thông Tin Chuyến Đi
                      </label>
                      <div class="labla4">
                          <label for="">Khởi Hành</label>
                      </div>

                    </div>
                  </div>
                </div>
                <div class="content-imgg2">
                    <div class="col-sm-8 col-xs-12 col-ms-12">
            
                        <div class="panel"style="width: 183%;border:1px solid rgb(221, 221, 221)">
                
                            <div>
                                <table class="table">
                                    <tbody><tr>
                                        <td>
                                            <strong class="text-uppercase">Số ghế:</strong>
                                            <span ng-show="info.selectSeats.length > 0" class="ng-hide">
                                                <!-- ngRepeat: s in info.selectSeats -->
                                            </span><span ng-show="info.selectSeats.length == 0" class="">Chưa chọn ghế</span>
                
                                        </td>
                                        <td class="text-right">
                                            <strong class="text-uppercase">Tổng tiền:</strong>
                                            (<span class="text-primary" style="font-weight: 600;" ng-bind-html="info.total|svcMoney">0<sup>₫</sup></span>)
                                        </td>
                                    </tr>
                                </tbody></table>
                            </div>
                
                            <!--<div class="gold-hour" ng-show="goldHour"></div>-->
                            <!--<p class="text-center text-uppercase text-primary">Sơ đồ {{info.departureTime.Kind}}</p>-->
                            <!-- ngIf: seats.length > 0 --><div ng-switch="" on="info.departureTime.Kind" ng-if="seats.length > 0" class="" style="">
                                <!-- ngSwitchWhen: Ghế --><div ng-switch-when="Ghế">
                                    <table class="table grid-seat">
                                        <thead>
                                            <tr>
                                                <th colspan="5"><p class="text-center text-uppercase text-primary">Sơ đồ Ghế</p></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <!-- ngRepeat: row in seats track by $index --><tr ng-repeat="row in seats track by $index" ng-animate="'animate'">
                                                <!-- ngRepeat: s in row  track by $index --><td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                    <!-- ngSwitchWhen: 0 -->
                                                    <!-- ngSwitchWhen: 1 --><div class="seat choosed" ng-switch-when="1">04</div><!-- end ngSwitchWhen: -->
                                                    <!-- ngSwitchWhen: 2 -->
                                                </td><!-- end ngRepeat: s in row  track by $index --><td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                    <!-- ngSwitchWhen: 0 --><div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">03</div><!-- end ngSwitchWhen: -->
                                                    <!-- ngSwitchWhen: 1 -->
                                                    <!-- ngSwitchWhen: 2 -->
                                                </td><!-- end ngRepeat: s in row  track by $index --><td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                    <!-- ngSwitchWhen: 0 -->
                                                    <!-- ngSwitchWhen: 1 -->
                                                    <!-- ngSwitchWhen: 2 -->
                                                </td><!-- end ngRepeat: s in row  track by $index --><td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                    <!-- ngSwitchWhen: 0 --><div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">02</div><!-- end ngSwitchWhen: -->
                                                    <!-- ngSwitchWhen: 1 -->
                                                    <!-- ngSwitchWhen: 2 -->
                                                </td><!-- end ngRepeat: s in row  track by $index --><td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                    <!-- ngSwitchWhen: 0 -->
                                                    <!-- ngSwitchWhen: 1 --><div class="seat choosed" ng-switch-when="1">01</div><!-- end ngSwitchWhen: -->
                                                    <!-- ngSwitchWhen: 2 -->
                                                </td><!-- end ngRepeat: s in row  track by $index -->
                                            </tr><!-- end ngRepeat: row in seats track by $index --><tr ng-repeat="row in seats track by $index" ng-animate="'animate'">
                                                <!-- ngRepeat: s in row  track by $index --><td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                    <!-- ngSwitchWhen: 0 --><div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">08</div><!-- end ngSwitchWhen: -->
                                                    <!-- ngSwitchWhen: 1 -->
                                                    <!-- ngSwitchWhen: 2 -->
                                                </td><!-- end ngRepeat: s in row  track by $index --><td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                    <!-- ngSwitchWhen: 0 --><div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">07</div><!-- end ngSwitchWhen: -->
                                                    <!-- ngSwitchWhen: 1 -->
                                                    <!-- ngSwitchWhen: 2 -->
                                                </td><!-- end ngRepeat: s in row  track by $index --><td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                    <!-- ngSwitchWhen: 0 -->
                                                    <!-- ngSwitchWhen: 1 -->
                                                    <!-- ngSwitchWhen: 2 -->
                                                </td><!-- end ngRepeat: s in row  track by $index --><td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                    <!-- ngSwitchWhen: 0 --><div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">06</div><!-- end ngSwitchWhen: -->
                                                    <!-- ngSwitchWhen: 1 -->
                                                    <!-- ngSwitchWhen: 2 -->
                                                </td><!-- end ngRepeat: s in row  track by $index --><td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                    <!-- ngSwitchWhen: 0 --><div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">05</div><!-- end ngSwitchWhen: -->
                                                    <!-- ngSwitchWhen: 1 -->
                                                    <!-- ngSwitchWhen: 2 -->
                                                </td><!-- end ngRepeat: s in row  track by $index -->
                                            </tr><!-- end ngRepeat: row in seats track by $index --><tr ng-repeat="row in seats track by $index" ng-animate="'animate'">
                                                <!-- ngRepeat: s in row  track by $index --><td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                    <!-- ngSwitchWhen: 0 --><div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">12</div><!-- end ngSwitchWhen: -->
                                                    <!-- ngSwitchWhen: 1 -->
                                                    <!-- ngSwitchWhen: 2 -->
                                                </td><!-- end ngRepeat: s in row  track by $index --><td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                    <!-- ngSwitchWhen: 0 --><div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">11</div><!-- end ngSwitchWhen: -->
                                                    <!-- ngSwitchWhen: 1 -->
                                                    <!-- ngSwitchWhen: 2 -->
                                                </td><!-- end ngRepeat: s in row  track by $index --><td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                    <!-- ngSwitchWhen: 0 -->
                                                    <!-- ngSwitchWhen: 1 -->
                                                    <!-- ngSwitchWhen: 2 -->
                                                </td><!-- end ngRepeat: s in row  track by $index --><td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                    <!-- ngSwitchWhen: 0 --><div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">10</div><!-- end ngSwitchWhen: -->
                                                    <!-- ngSwitchWhen: 1 -->
                                                    <!-- ngSwitchWhen: 2 -->
                                                </td><!-- end ngRepeat: s in row  track by $index --><td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                    <!-- ngSwitchWhen: 0 --><div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">09</div><!-- end ngSwitchWhen: -->
                                                    <!-- ngSwitchWhen: 1 -->
                                                    <!-- ngSwitchWhen: 2 -->
                                                </td><!-- end ngRepeat: s in row  track by $index -->
                                            </tr><!-- end ngRepeat: row in seats track by $index --><tr ng-repeat="row in seats track by $index" ng-animate="'animate'">
                                                <!-- ngRepeat: s in row  track by $index --><td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                    <!-- ngSwitchWhen: 0 --><div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">16</div><!-- end ngSwitchWhen: -->
                                                    <!-- ngSwitchWhen: 1 -->
                                                    <!-- ngSwitchWhen: 2 -->
                                                </td><!-- end ngRepeat: s in row  track by $index --><td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                    <!-- ngSwitchWhen: 0 --><div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">15</div><!-- end ngSwitchWhen: -->
                                                    <!-- ngSwitchWhen: 1 -->
                                                    <!-- ngSwitchWhen: 2 -->
                                                </td><!-- end ngRepeat: s in row  track by $index --><td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                    <!-- ngSwitchWhen: 0 -->
                                                    <!-- ngSwitchWhen: 1 -->
                                                    <!-- ngSwitchWhen: 2 -->
                                                </td><!-- end ngRepeat: s in row  track by $index --><td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                    <!-- ngSwitchWhen: 0 --><div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">14</div><!-- end ngSwitchWhen: -->
                                                    <!-- ngSwitchWhen: 1 -->
                                                    <!-- ngSwitchWhen: 2 -->
                                                </td><!-- end ngRepeat: s in row  track by $index --><td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                    <!-- ngSwitchWhen: 0 --><div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">13</div><!-- end ngSwitchWhen: -->
                                                    <!-- ngSwitchWhen: 1 -->
                                                    <!-- ngSwitchWhen: 2 -->
                                                </td><!-- end ngRepeat: s in row  track by $index -->
                                            </tr><!-- end ngRepeat: row in seats track by $index --><tr ng-repeat="row in seats track by $index" ng-animate="'animate'">
                                                <!-- ngRepeat: s in row  track by $index --><td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                    <!-- ngSwitchWhen: 0 --><div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">20</div><!-- end ngSwitchWhen: -->
                                                    <!-- ngSwitchWhen: 1 -->
                                                    <!-- ngSwitchWhen: 2 -->
                                                </td><!-- end ngRepeat: s in row  track by $index --><td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                    <!-- ngSwitchWhen: 0 --><div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">19</div><!-- end ngSwitchWhen: -->
                                                    <!-- ngSwitchWhen: 1 -->
                                                    <!-- ngSwitchWhen: 2 -->
                                                </td><!-- end ngRepeat: s in row  track by $index --><td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                    <!-- ngSwitchWhen: 0 -->
                                                    <!-- ngSwitchWhen: 1 -->
                                                    <!-- ngSwitchWhen: 2 -->
                                                </td><!-- end ngRepeat: s in row  track by $index --><td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                    <!-- ngSwitchWhen: 0 --><div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">18</div><!-- end ngSwitchWhen: -->
                                                    <!-- ngSwitchWhen: 1 -->
                                                    <!-- ngSwitchWhen: 2 -->
                                                </td><!-- end ngRepeat: s in row  track by $index --><td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                    <!-- ngSwitchWhen: 0 --><div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">17</div><!-- end ngSwitchWhen: -->
                                                    <!-- ngSwitchWhen: 1 -->
                                                    <!-- ngSwitchWhen: 2 -->
                                                </td><!-- end ngRepeat: s in row  track by $index -->
                                            </tr><!-- end ngRepeat: row in seats track by $index --><tr ng-repeat="row in seats track by $index" ng-animate="'animate'">
                                                <!-- ngRepeat: s in row  track by $index --><td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                    <!-- ngSwitchWhen: 0 --><div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">24</div><!-- end ngSwitchWhen: -->
                                                    <!-- ngSwitchWhen: 1 -->
                                                    <!-- ngSwitchWhen: 2 -->
                                                </td><!-- end ngRepeat: s in row  track by $index --><td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                    <!-- ngSwitchWhen: 0 --><div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">23</div><!-- end ngSwitchWhen: -->
                                                    <!-- ngSwitchWhen: 1 -->
                                                    <!-- ngSwitchWhen: 2 -->
                                                </td><!-- end ngRepeat: s in row  track by $index --><td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                    <!-- ngSwitchWhen: 0 -->
                                                    <!-- ngSwitchWhen: 1 -->
                                                    <!-- ngSwitchWhen: 2 -->
                                                </td><!-- end ngRepeat: s in row  track by $index --><td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                    <!-- ngSwitchWhen: 0 --><div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">22</div><!-- end ngSwitchWhen: -->
                                                    <!-- ngSwitchWhen: 1 -->
                                                    <!-- ngSwitchWhen: 2 -->
                                                </td><!-- end ngRepeat: s in row  track by $index --><td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                    <!-- ngSwitchWhen: 0 --><div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">21</div><!-- end ngSwitchWhen: -->
                                                    <!-- ngSwitchWhen: 1 -->
                                                    <!-- ngSwitchWhen: 2 -->
                                                </td><!-- end ngRepeat: s in row  track by $index -->
                                            </tr><!-- end ngRepeat: row in seats track by $index --><tr ng-repeat="row in seats track by $index" ng-animate="'animate'">
                                                <!-- ngRepeat: s in row  track by $index --><td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                    <!-- ngSwitchWhen: 0 --><div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">28</div><!-- end ngSwitchWhen: -->
                                                    <!-- ngSwitchWhen: 1 -->
                                                    <!-- ngSwitchWhen: 2 -->
                                                </td><!-- end ngRepeat: s in row  track by $index --><td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                    <!-- ngSwitchWhen: 0 --><div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">27</div><!-- end ngSwitchWhen: -->
                                                    <!-- ngSwitchWhen: 1 -->
                                                    <!-- ngSwitchWhen: 2 -->
                                                </td><!-- end ngRepeat: s in row  track by $index --><td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                    <!-- ngSwitchWhen: 0 -->
                                                    <!-- ngSwitchWhen: 1 -->
                                                    <!-- ngSwitchWhen: 2 -->
                                                </td><!-- end ngRepeat: s in row  track by $index --><td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                    <!-- ngSwitchWhen: 0 --><div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">26</div><!-- end ngSwitchWhen: -->
                                                    <!-- ngSwitchWhen: 1 -->
                                                    <!-- ngSwitchWhen: 2 -->
                                                </td><!-- end ngRepeat: s in row  track by $index --><td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                                    <!-- ngSwitchWhen: 0 --><div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0" ng-bind-html="s.Chair">25</div><!-- end ngSwitchWhen: -->
                                                    <!-- ngSwitchWhen: 1 -->
                                                    <!-- ngSwitchWhen: 2 -->
                                                </td><!-- end ngRepeat: s in row  track by $index -->
                                            </tr><!-- end ngRepeat: row in seats track by $index -->
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
                                </div><!-- end ngSwitchWhen: -->
                                <!-- ngSwitchWhen: Giường -->
                                <!-- ngSwitchWhen: Limousine -->
                            </div><!-- end ngIf: seats.length > 0 -->
                            <!-- ngIf: seats.length == 0 && getSeatComplete === true -->
                        </div>
                
                    </div>
                </div>
              </div>
            </div>
          </div>
          <!-- Danh sách khóa học -->
          <div role="tabpanel" class="tab-pane fade" id="DanhSachKhoaHoc">
            <div class="container">
              <div class="content-book2">
                <div class="content-img1">
                  <h1 style="color: #ef5222;box-sizing: border-box;font-size: 17px;text-align: center;padding-top: 10px">
                    Thông Tin Tài Khoản
                  </h1>
                  <div class="content-in">
                    <input placeholder="${USER.hoTen}" type="text" class="it" id="user"/>
                    <span class="sp-thongbao" id="tb-user"></span>
                  </div>
                  <div class="content-in">
                    <input id="diachi" placeholder="${USER.diaChi}" type="text" class="it" />
                    <span class="sp-thongbao" id="tb-diachi"></span>
                  </div>
                  <div class="content-in">
                    <input id="didong" placeholder="${USER.soDienThoai}" type="number" class="it" />
                    <span class="sp-thongbao" id="tb-didong"></span>
                  </div>                                  
                  <div class="content-in">
                    <input id="soCMND" placeholder="${USER.soCMND}" type="number" class="it2" />
                    <span class="sp-thongbao" id="tb-number"></span>
                  </div>
                  <div class="btnw">
                    <button  class="btn btn-danger" style="margin-left: 30px;">
                      Lưu Thay Đổi
                    </button>                    
                  </div>
                  <span class="sp-thongbao" id="tb-submit" style="display: block;margin-top: 20px;"></span>
                </div>
                <div class="content-img2">
                  <h1
                    style="color: #ef5222;box-sizing: border-box;font-size: 17px;text-align: center;padding-top: 10px"
                  >
                    Điều Khoản Và Lưu Ý
                  </h1>
                  <p>
                    (*) Quý khách vui lòng mang email có chứa mã vé đến văn
                    phòng để đổi vé lên xe trước giờ xuất bến ít nhất
                    <span style="color: #ef5222">60p</span>
                  </p>
                  <p>
                    (*) Thông tin hành khách phải chính xác, nếu không sẽ không
                    thể lên xe hoặc hủy/đổi vé
                    <span style="color: #ef5222">1 lần</span>
                  </p>
                  <p>
                    (*) Quý khách không được đổi / trả vé vào các ngày Lễ Tết (
                    ngày thường qúy khách được quyền chuyển đổi hoặc hủy vé
                  </p>
                  <p>
                    (*) Nếu quý khách có nhu cầu trung chuyển, vui lòng liên hệ
                    số điện thoại
                    <span style="color: #ef5222">19008198</span> trước khi đặt
                    vé. Chúng tôi sẽ không đón/ trung chuyển tại những điểm xe
                    trung chuyển không thể tới được.
                  </p>
                </div>
              </div>
            </div>
          </div>
          <!-- Kết thúc danh sách khóa học -->
          <!-- Thống kê -->
          <div role="tabpanel" class="tab-pane fade" id="ThongKe">
            <span>Đang cập nhật...</span>
          </div>
          <!-- Kết thúc thống kê -->
        </div>
      </div>
    </section>

    <footer class="footer"style="margin-top: 685px">
        <div class="container">
          <div class="footer__content">
          
          </div>
        </div>
      </footer>


    <script src="./js/ktbooking.js"></script>
    <script
      src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
      integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
      integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
      integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
      crossorigin="anonymous"
    ></script>
  </body>
</html>

