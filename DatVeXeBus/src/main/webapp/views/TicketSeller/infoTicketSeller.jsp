<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="dec"%>
<!DOCTYPE html>
<html>

<head>
<title>Insert title here</title>
</head>

<body>
	<div class="pcoded-content">
		<div class="pcoded-inner-content">
			<div class="main-body">
				<div class="page-wrapper">
					<!-- Page body start -->
					<div class="page-body">
						<div class="row">
							<div class="col-sm-12">
								<!-- Basic Form Inputs card start -->
								<div class="card">
									<div class="card-header">
										<h5>THÔNG TIN CÁ NHÂN</h5>
									</div>
									<div class="card-block">
										<c:if test="${not empty USER}">
											<form action="<c:url value='/TicketSeller/info'/>" id=""
												method="post" accept-charset="UTF-8">
												<div class="form-group row">
													<label class="col-sm-2 col-form-label">Họ và tên</label>
													<div class="col-sm-10">
														<input type="text" class="form-control"
															placeholder="${USER.hoTen}" id="hoTen" name="hoTen">
													</div>
												</div>
												<div class="form-group row">
													<label class="col-sm-2 col-form-label">Số điện
														thoại</label>
													<div class="col-sm-10">
														<input type="text" class="form-control"
															placeholder="${USER.soDienThoai}" id="soDienThoai"
															name="soDienThoai">
													</div>
												</div>
												<div class="form-group row">
													<label class="col-sm-2 col-form-label">Số CMNN</label>
													<div class="col-sm-10">
														<input type="text" class="form-control"
															placeholder="${USER.soCMND}" id="soCMND" name="soCMND">
													</div>
												</div>
												<div class="form-group row">
													<label class="col-sm-2 col-form-label">Email</label>
													<div class="col-sm-10">
														<input type="text" class="form-control"
															placeholder="${USER.email}" disabled="">
													</div>
												</div>
												<input type="hidden" value="edit" name="action" />
												<div class="form-group row">
													<label class="col-sm-2"></label>
													<div class="col-sm-10">
														<button type="submit" class="btn btn-primary m-b-0">Save</button>
													</div>
												</div>
											</form>											
										</c:if>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>