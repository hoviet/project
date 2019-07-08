
<footer class="footer">
	<div class="container">
		<div class="footer__content">
			<div class="footer__detail">
				<h1>about us</h1>
				<ul>
					<li><a href="#">history begin </a></li>
					<li><a href="#">main sleep team </a></li>
					<li><a href="#">trademark</a></li>
					<li><a href="#">board</a></li>
					<li><a href="#">staff levels </a></li>
				</ul>
			</div>
			<div class="footer__detail">
				<h1>Contact</h1>
				<ul>
					<li><a href="#">Phone : 0333667925</a></li>
					<li><a href="#">Address: TPHCM City</a></li>
					<li><a href="#">Headquarters : TPHCM</a></li>
					<li><a href="#">E-mail: tantaile113@gmail.com</a></li>
					<li><a href="#">Sale Ticked</a></li>
				</ul>
			</div>
			<div class="footer__detail">
				<h1>Infomation</h1>
				<ul>
					<li><a href="#">Sale Ticked</a></li>
					<li><a href="#">Customer Gratitude </a></li>
					<li><a href="#">trademark</a></li>
					<li><a href="#">Customer reviews </a></li>
					<li><a href="#">achievements</a></li>
				</ul>
			</div>
			<div class="footer__detail">
				<h1>Q&A</h1>
				<ul>
					<li><a href="#">quality</a></li>
					<li><a href="#">team</a></li>
					<li><a href="#">fare</a></li>
					<li><a href="#">headquarters</a></li>
					<li><a href="#">branches</a></li>
				</ul>
			</div>
		</div>
	</div>
</footer>

<!-- MODEL -->
<div class="modal fade" id="modalForm" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="register">
				<div class="register__content">
					<h3>Please Sign In</h3>
					<div class="register__form">
					
						<form action="<c:url value='/dang-nhap'/>" id = "formLogin" method="post">
							<input type="text" placeholder="E-mail" id ="email" name ="email" />
							<span class="sp-thongbao" id="tb-email"></span> 
							<input type="password" placeholder="Password"  id ="matKhau" name ="matKhau"/>
							<span class="sp-thongbao" id="tb-pass"></span> 
							<input type="hidden" value ="login" name="action"/>
							<button type="submit" id="submit">Login</button>
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
<div class="modal fade" id="registerModal" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content modal-content2">
			<div class="register2">
				<div class="register__content2">
					<h3 style="margin-top: -286px">Sign Up</h3>
					<div class="register__form2">
						<form action="#" autocomplete="on">
							<input type="text" placeholder="User name" id="user" /> <span
								class="sp-thongbao" id="tb-user"></span> <input type="text"
								placeholder="E-mail" id="Email1" /> <span class="sp-thongbao"
								id="tb-email1"></span> <input type="password"
								placeholder="Password" id="Pass1" /> <span class="sp-thongbao"
								id="tb-pass1"></span> <input type="password"
								placeholder="Re Password" id="repass" /> <span
								class="sp-thongbao" id="tb-repass"></span> <input type="number"
								placeholder="CMND" id="cmnd" /> <span class="sp-thongbao"
								id="tb-cmnd"></span> <input type="number" placeholder="SĐT"
								id="sdt" /> <span class="sp-thongbao" id="tb-sdt"></span> <input
								type="text" placeholder="Country" id="quanhuyen" /> <span
								class="sp-thongbao" id="tb-quanhuyen"></span> <input type="text"
								placeholder="City" id="city" /> <span class="sp-thongbao"
								id="tb-city"></span> <input type="text" placeholder="Address"
								id="diachi" /> <span class="sp-thongbao" id="tb-diachi"></span>
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






