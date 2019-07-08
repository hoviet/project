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
    <title>prolife</title>
  </head>
  <body>
    <header class="header">
      <div class="container">
        <div class="header__content">
          <div class="header__img">
            <a href="./index.html"><img src="./img/bus1.jpg" alt="" /></a>
          </div>
          <div class="header__menu">
            <ul>
              <li class="home">
                <a href="./index.html">Home</a>
              </li>
              <li>
                <a href="#">Print</a>
                <span>/</span>
                <a href="#">SMS Ticket</a>
              </li>
              <li>
                <a href="#">Easy Cancle</a>
                <span>/</span>
                <a href="#">Refund</a>
              </li>
              <li class="lol">
                <a
                  class="modall"
                  href="#"
                  
                  >Sign In</a
                >
                <span>/ </span>
                <a href="#" 
                  >Sign Up</a
                >
              </li>
            </ul>
          </div>
        </div>
      </div>
    </header>

    <div class="container">
        
            <!-- Phan tab menu -->
            <ul class="nav nav-tabs" role="tablist">
              <li class="nav-item">
                <a
                  class="nav-link active"
                  href="#DanhSachNguoiDung"
                  role="tab"
                  data-toggle="tab"
                  >Thông Tin Người Đặt</a
                >
              </li>
              <li class="nav-item">
                <a
                  class="nav-link"
                  href="#DanhSachKhoaHoc"
                  role="tab"
                  data-toggle="tab"
                  >Danh sách Chuyến Đi</a
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
              <div role="tabpanel" class="tab-pane  in active" id="DanhSachNguoiDung">
                <div class="row">
                  <div class="col-md-8">
                    <!-- BEGIN BUTTOM THÊM MỚI -->
                    <button
                      id="btnThemNguoiDung"
                      class="btn btn-success"
                      data-toggle="modal"
                      data-target="#myModal"
                    >
                      
                      Thêm Mới
                    </button>
                    <!-- END BUTTON THÊM MỚI -->
                  </div>
                  <div class="col-md-4">
                    <!-- BEGIN TÌM KIẾM -->
                    <div class="input-group mb-3">
                      <input
                        type="text"
                        class="form-control"
                        placeholder="Nhập từ khóa"
                        aria-label="Recipient's username"
                        aria-describedby="basic-addon2"
                      />
                      <div class="input-group-append">
                        <button class="btn btn-danger">Search</button>
                      </div>
                    </div>
                    <!-- END TÌM KIẾM -->
                  </div>
                </div>
                <div class="clear-fix"></div>
                <div class="tblNguoiDung" id="tblNguoiDung">
                  <!-- BEGIN TABLE NGƯỜI DÙNG -->
                  <table class="table table-bordered">
                    <thead>
                      <th>STT</th>
                      <th>Tài khoản</th>
                      <th>Mật khẩu</th>
                      <th>Họ tên</th>
                      <th>Email</th>
                      <th>Số điện thoại</th>
                      <th>Tên Loại</th>
                      <th>#</th>
                    </thead>
                    <tbody id="tblDanhSachNguoiDung"></tbody>
                  </table>
                  <!-- END TABLE NGƯỜI DÙNG -->
                </div>
                <br />
              </div>
              <!-- Kết thúc danh sách người dùng -->
              <!-- Danh sách khóa học -->
              <div role="tabpanel" class="tab-pane fade" id="DanhSachKhoaHoc">
                <span>Đang cập nhật...</span>
              </div>
              <!-- Kết thúc danh sách khóa học -->
              <!-- Thống kê -->
              <div role="tabpanel" class="tab-pane fade" id="ThongKe">
                <span>Đang cập nhật...</span>
              </div>
              <!-- Kết thúc thống kê -->
            </div>
      
            <!--KetThuc Tabmenu-->
      
            <!-- The Modal -->
            <div class="modal fade" id="myModal">
              <div class="modal-dialog">
                <div class="modal-content" style="height: 760px"> 
                  <!-- Modal Header -->
                  <div class="modal-header" style="width:100%">
                    <h4 class="modal-title" id="modal-title">Thêm Khách Hàng</h4>
                    
                  </div>
                  <!-- Modal body -->
                  <div class="modal-body">
                    <div class="form-group">
                      <label>Tài khoản</label>
                      <input
                        id="TaiKhoan"
                        class="form-control txtForm"
                        placeholder="Nhập vào tài khoản"
                      />
                    </div>
                    <div class="form-group">
                      <label>Họ tên</label>
                      <input
                        id="HoTen"
                        class="form-control txtForm"
                        placeholder="Nhập vào họ tên"
                      />
                    </div>
                    <div class="form-group">
                      <label>Mật khẩu</label>
                      <input
                        id="MatKhau"
                        class="form-control txtForm"
                        placeholder="Nhập vào mật khẩu"
                        type="password"
                      />
                    </div>
                    <div class="form-group">
                      <label>Email</label>
                      <input
                        id="Email"
                        class="form-control txtForm"
                        placeholder="Nhập vào Email"
                      />
                    </div>
                    <div class="form-group">
                      <label>Số điện thoại</label>
                      <input
                        id="SoDienThoai"
                        class="form-control txtForm"
                        placeholder="Nhập vào số điện thoại"
                      />
                    </div>
                    
                  </div>
      
                  <!-- Modal footer -->
                  <div class="modal-footer" id="modal-footer">
                    <button type="submit" class="btn btn-danger" data-dismiss="modal">Submit</button>
                  </div>
                </div>
              </div>
            </div>
          </div>
          
          <footer class="footer">
                <div class="container">
                  <div class="footer__content">
                    <div class="footer__detail">
                      <h1>Top Bus Routers</h1>
                      <ul>
                        <li>
                          <a href="#">Hyderabad to Bangalore</a>
                        </li>
                        <li>
                          <a href="#">Pune to Bangalore</a>
                        </li>
                        <li>
                          <a href="#">Hyderabad to Chennai</a>
                        </li>
                        <li>
                          <a href="#">Coimbatore to Bangalore</a>
                        </li>
                        <li>
                          <a href="#">Chennai to Madurai</a>
                        </li>
                      </ul>
                    </div>
                    <div class="footer__detail">
                      <h1>Top Cities</h1>
                      <ul>
                        <li>
                          <a href="#">Hyderabad to Bangalore</a>
                        </li>
                        <li>
                          <a href="#">Pune to Bangalore</a>
                        </li>
                        <li>
                          <a href="#">Hyderabad to Chennai</a>
                        </li>
                        <li>
                          <a href="#">Coimbatore to Bangalore</a>
                        </li>
                        <li>
                          <a href="#">Chennai to Madurai</a>
                        </li>
                      </ul>
                    </div>
                    <div class="footer__detail">
                      <h1>Top Bus Routers</h1>
                      <ul>
                        <li>
                          <a href="#">Hyderabad to Bangalore</a>
                        </li>
                        <li>
                          <a href="#">Pune to Bangalore</a>
                        </li>
                        <li>
                          <a href="#">Hyderabad to Chennai</a>
                        </li>
                        <li>
                          <a href="#">Coimbatore to Bangalore</a>
                        </li>
                        <li>
                          <a href="#">Chennai to Madurai</a>
                        </li>
                      </ul>
                    </div>
                    <div class="footer__detail">
                      <h1>Top Cities</h1>
                      <ul>
                        <li>
                          <a href="#">Hyderabad to Bangalore</a>
                        </li>
                        <li>
                          <a href="#">Pune to Bangalore</a>
                        </li>
                        <li>
                          <a href="#">Hyderabad to Chennai</a>
                        </li>
                        <li>
                          <a href="#">Coimbatore to Bangalore</a>
                        </li>
                        <li>
                          <a href="#">Chennai to Madurai</a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </footer>

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
