<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<header class="header">
	<div class="container">
		<div class="header__content">
			<div class="header__img">
				<a href='<c:url value="/trang-chu"/>'><img
					src="<c:url value='/template/web/img/cccc.jpg' />" alt="" /></a>
			</div>
			<div class="header__menu">
				<ul>
					<li class="home"><a href='<c:url value="/trang-chu"/>'>Trang
							Chủ</a></li>
					<c:if test="${ not empty USER}">
						<li class="home"><a href='<c:url value="/trang-chu?action=danhSachVe"/>'>Lịch Sử Đặt Vé</a></li>
						<li class="home"><a href='<c:url value="/trang-chu?action=info"/>'>Thông Tin Cá Nhân</a></li>
					</c:if>
					<c:if test="${ empty USER}">
						<li class="lol"><a class="modall" href="#"
							data-toggle="modal" data-target="#modalForm">Đăng Nhập</a> <span>/
						</span> <a href="#" data-toggle="modal" data-target="#registerModal">Đăng
								Kí</a></li>
					</c:if>
					<c:if test="${ not empty USER}">
						<li class="lol"><span>User: </span> <a class="modall">${USER.hoTen}</a>
							<span> /       </span> <a
							href='<c:url value="/dang-nhap?action=logout"/>'>thoat</a></li>
					</c:if>
				</ul>
			</div>
		</div>
	</div>
	<!-- login -->
	<div class="modal fade" id="modalForm" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="register">
					<div class="register__content">
						<h3>Please Sign In</h3>
						<div class="register__form">
							<form action="<c:url value='/dang-nhap'/>" id="formLogin"
								method="post">
								<input type="text" placeholder="E-mail" id="email" name="email" />
								<span class="sp-thongbao" id="tb-email"></span> <input
									type="password" placeholder="Password" id="matKhau"
									name="matKhau" /> <span class="sp-thongbao" id="tb-pass"></span>
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
	<!-- Modal -->
	<div class="modal fade" id="registerModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content modal-content2">
				<div class="register2">
					<div class="register__content2">
						<h3 style="margin-top: -140px">Sign Up</h3>
						<div class="register__form2">
							<form action="#" autocomplete="on">
								<input type="text" placeholder="User name" id="user" /> <span
									class="sp-thongbao" id="tb-user"></span> <input type="text"
									placeholder="E-mail" id="Email1" /> <span class="sp-thongbao"
									id="tb-email1"></span> <input type="password"
									placeholder="Password" id="Pass1" /> <span class="sp-thongbao"
									id="tb-pass1"></span> <input type="password"
									placeholder="Re Password" id="repass" /> <span
									class="sp-thongbao" id="tb-repass"></span> <input type="text"
									placeholder="CMND" id="cmnd" /> <span class="sp-thongbao"
									id="tb-cmnd"></span> <input type="text" placeholder="SDT"
									id="sdt" /> <span class="sp-thongbao" id="tb-sdt"></span> <input
									type="text" placeholder="Address" id="diachi" /> <span
									class="sp-thongbao" id="tb-diachi"></span>
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
</header>