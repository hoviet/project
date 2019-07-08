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
				<form>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputEmail4">From</label> <input type="text"
								class="form-control" id="inputEmail4" placeholder="Enter a City" />
							<span class="sp-thongbao" id="tb-from"></span>
						</div>
						<div class="form-group col-md-6">
							<label for="inputPassword4">To</label> <input type="text"
								class="form-control" id="inputPassword4"
								placeholder="Enter a City" /> <span class="sp-thongbao"
								id="tb-to"></span>
						</div>
						<div class="form-group col-md-6">
							<label for="inputPassword5">Date of Return (Optional)</label> <input
								type="date" class="form-control" id="datepicker"
								placeholder="dd-mm-yyyy" /> <span class="sp-thongbao"
								id="tb-date"></span>
						</div>

					</div>

					<div class="button__new">
						<button id="div1" type="submit" class="button__w"
							formaction="./Booking.html" onclick="return KiemTraRong2()">Search
							Buses</button>
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
	<section class="slider">
	<div id="my-carousel" class="carousel slide carousel-fade"
		data-ride="carousel">
		<ol class="carousel-indicators container">
			<li data-target="#my-carousel" data-slide-to="0" class="active"></li>
			<li data-target="#my-carousel" data-slide-to="1"></li>
			<li data-target="#my-carousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item item-1 active">
				<!-- <img src="./img/hero-1.jpg" class="d-block w-100" alt="..." /> -->
				<div class="overlay"></div>
				<div class="carousel-cap container">
					<p>Top quality reputation</p>
					<h1 class="display-5" style="color: #fbbd61">Car House: Ptit
						Quality Is Faith</h1>
					<p style="color: #fbbd61">You Just Need To Call Everything We
						Will Worry About Accompanying You On Every Way And Up And Down At
						Any Time With You</p>
				</div>
			</div>
			<div class="carousel-item item-2">
				<!-- <img src="./img/hero-2.jpg" class="d-block w-100" alt="..." /> -->
				<div class="overlay"></div>
				<div class="carousel-cap container">
					<p>Top quality reputation</p>
					<h1 class="display-5" style="color: #fbbd61">Car House: Ptit
						Quality Is Faith</h1>
					<p style="color: #fbbd61">You Just Need To Call Everything We
						Will Worry About Accompanying You On Every Way And Up And Down At
						Any Time With You</p>
				</div>
			</div>
			<div class="carousel-item item-3">
				<!-- <img src="./img/hero-3.jpg" class="d-block w-100" alt="..." /> -->
				<div class="overlay"></div>
				<div class="carousel-cap container">
					<p>Top quality reputation</p>
					<h1 class="display-5" style="color: #fbbd61">Car House: Ptit
						Quality Is Faith</h1>
					<p style="color: #fbbd61">You Just Need To Call Everything We
						Will Worry About Accompanying You On Every Way And Up And Down At
						Any Time With You</p>
				</div>
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
						<h1>UPTO RS.100OF</h1>
						<p>Travel Smart</p>
						<b>Code: RBM120</b>
						<p>Book Using Pay Money</p>
					</div>
				</div>
			</div>
			<div class="product__detail">
				<div class="detail__img1 img__img">
					<img src="<c:url value='/template/web/img/2.png' />" alt="" />
					<div class="img__detail">
						<h1>UPTO RS.100OF</h1>
						<p>Travel Smart</p>
						<b>Code: MPA 2102</b>
						<p>Book Using Pay Money</p>
					</div>
				</div>
			</div>
			<div class="product__detail">
				<div class="detail__img1">
					<img src="<c:url value='/template/web/img/3.png' />" alt="" />
					<div class="img__detail">
						<h1>UPTO RS.100OF</h1>
						<p>Travel Smart</p>
						<b>Code: RBM120</b>
						<p>Book Using Pay Money</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>

</body>
</html>