<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<footer class="footer">
    <div class="container">
        <div class="footer__content">
            <div class="footer__detail">
                <h1>Tuyến Xe</h1>
                <ul>
                    <li><a href="#">Miền Tây - Bến Tre </a></li>
                    <li><a href="#">An Sương - Bến Tre </a></li>
                    <li><a href="#">Buôn Ma Thuột - Bảo Lộc</a></li>
                    <li><a href="#">Buôn Ma Thuột - Bến Tre</a></li>
                    <li><a href="#">Buôn Ma Thuột - Miền Đông </a></li>
                </ul>
            </div>
            <div class="footer__detail">
                <h1>Thành Phố</h1>
                <ul>
                    <li><a href="#">Thành Phố Buôn Ma Thuột</a></li>
                    <li><a href="#">Thành Phố Huế</a></li>
                    <li><a href="#">Thành Phố Hồ Chí Minh</a></li>
                    <li><a href="#">Thành Phố Ninh Bình</a></li>
                    <li><a href="#">Thành Phố KonTum</a></li>
                </ul>
            </div>
            <div class="footer__detail">
                <h1>Điều Khoản & Chính Sách </h1>
                <ul>
                    <li><a href="#">Điều Khoản Sử Dụng</a></li>
                    <li><a href="#">Chính Sách Bảo Mật </a></li>
                    <li><a href="#">Hướng Dẫn Sử Dụng</a></li>
                    <li><a href="#">Chính Sách Khách Hàng </a></li>
                    <li><a href="#">Chính Sách Hoàn Vé</a></li>
                </ul>
            </div>
            <div class="footer__detail">
                <h1>Chất Lượng Xe</h1>
                <ul>
                    <li><a href="#">Xe BUS 50 Chỗ Máy Lạnh</a></li>
                    <li><a href="#">Xe BUS 50 Chỗ Giường Nằm</a></li>
                    <li><a href="#">Xe BUS 50 Chỗ Tiện Nghi</a></li>
                    <li><a href="#">Xe BUS 50 Chỗ Nội Thất</a></li>
                    <li><a href="#">Xe BUS 60 Chỗ Tiện Nghi</a></li>
                </ul>
            </div>
        </div>
    </div>
</footer>

<!-- MODEL -->
<div class="modal fade" id="modalForm" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="register">
                <div class="register__content">
                    <h3>Please Sign In</h3>
                    <div class="register__form">
                        <form action="<c:url value='/dang-nhap'/>" id="formLogin" method="post">
                            <input type="text" placeholder="E-mail" id="email" name="email" />
                            <span class="sp-thongbao" id="tb-email"></span>
                            <input type="password" placeholder="Password" id="matKhau" name="matKhau" />
                            <span class="sp-thongbao" id="tb-pass"></span>
                            <input type="hidden" value="login" name="action" />
                            <button type="submit" id="submit" onclick="return Login()">Login</button>
                            <span class="sp-thongbao" id="tb-submit"></span>
                        </form>
                    </div>
                </div>
                <a href="#" style="color: rgb(226, 70, 72); text-decoration: none;">Fogot
                    PassWord?</a>
            </div>
        </div>
    </div>
</div>
<!-- end modal -->

<!-- Modal -->
<div class="modal fade" id="registerModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content modal-content2">
            <div class="register2">
                <div class="register__content2">
                    <h3 style="margin-top: -140px">Sign Up</h3>
                    <div class="register__form2">
                        <form action="#" autocomplete="on">
                            <input type="text" placeholder="User name" id="user" /> <span class="sp-thongbao"
                                id="tb-user"></span> <input type="text" placeholder="E-mail" id="Email1" /> <span
                                class="sp-thongbao" id="tb-email1"></span> <input type="password" placeholder="Password"
                                id="Pass1" /> <span class="sp-thongbao" id="tb-pass1"></span> <input type="password"
                                placeholder="Re Password" id="repass" /> <span class="sp-thongbao"
                                id="tb-repass"></span> <input type="text" placeholder="CMND" id="cmnd" /> <span
                                class="sp-thongbao" id="tb-cmnd"></span> <input type="text" placeholder="SDT"
                                id="sdt" /> <span class="sp-thongbao" id="tb-sdt"></span>
                            <input type="text" placeholder="Address" id="diachi" /> <span class="sp-thongbao"
                                id="tb-diachi"></span>
                            <button type="submit" id="register" onclick="return Register()">
                                Submit</button>
                            <span class="sp-thongbao" id="tb-submit1"></span>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- end modal -->