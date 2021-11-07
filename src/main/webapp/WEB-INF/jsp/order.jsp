<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>爱看图书 - 读最好的书</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath }/img/favicon.png">

<!-- all css here -->
<!-- bootstrap v3.3.6 css -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.min.css">
<!-- animate css -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/animate.css">
<!-- meanmenu css -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/meanmenu.min.css">
<!-- owl.carousel css -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/owl.carousel.css">
<!-- font-awesome css -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/font-awesome.min.css">
<!-- flexslider.css-->
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/flexslider.css">
<!-- chosen.min.css-->
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/chosen.min.css">
<!-- style css -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css">
<!-- responsive css -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/responsive.css">
<!-- modernizr css -->
<script src="${pageContext.request.contextPath }/js/jquery-3.4.0.min.js"></script>
<script src="${pageContext.request.contextPath }/js/vendor/modernizr-2.8.3.min.js"></script>

</head>

<body class="cart">

	<%@include file="/header.jsp"%>
	<!-- breadcrumbs-area-start -->
	<div class="breadcrumbs-area mb-70">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumbs-menu">
						<ul>
							<li><a>首页</a></li>
							<li><a class="active">我的订单</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- breadcrumbs-area-end -->
	<!-- entry-header-area-start -->
	<div class="entry-header-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="entry-header-title"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- entry-header-area-end -->
	<!-- cart-main-area-start -->
	<div class="cart-main-area mb-70">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<form action="#">
						<div class="table-content table-responsive">
							<table>
								<thead>
									<tr>
										<th>订单号</th>
										<th class="product-name">商品名</th>
										<th class="product-price">价格</th>
										<th class="product-quantity">数量</th>
										<th class="product-subtotal">总计</th>
									</tr>
								</thead>
								<tbody>

									<tr>
										<c:if test="${orders != null }">
											<c:forEach items="${orders }" var="order">
												<tr>
													<td>${order.id }</td>
													<td class="product-name">${order.name }</td>
													<td class="product-price">${order.price }元</td>
													<td class="product-quantity">${order.quantity }</td>
													<td class="product-subtotal">${order.total}</td>
												</tr>
											</c:forEach>
									</c:if>

									</tr>

								</tbody>
							</table>
						</div>
					</form>
				</div>
			</div>

		</div>
	</div>
	<!-- cart-main-area-end -->


	<!-- all js here -->
	<!-- jquery latest version -->
	<script src="${pageContext.request.contextPath }/js/vendor/jquery-1.12.0.min.js"></script>
	<!-- bootstrap js -->
	<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
	<!-- owl.carousel js -->
	<script src="${pageContext.request.contextPath }/js/owl.carousel.min.js"></script>
	<!-- meanmenu js -->
	<script src="${pageContext.request.contextPath }/js/jquery.meanmenu.js"></script>
	<!-- wow js -->
	<script src="${pageContext.request.contextPath }/js/wow.min.js"></script>
	<!-- jquery.parallax-1.1.3.js -->
	<script src="${pageContext.request.contextPath }/js/jquery.parallax-1.1.3.js"></script>
	<!-- jquery.countdown.min.js -->
	<script src="${pageContext.request.contextPath }/js/jquery.countdown.min.js"></script>
	<!-- jquery.flexslider.js -->
	<script src="${pageContext.request.contextPath }/js/jquery.flexslider.js"></script>
	<!-- chosen.jquery.min.js -->
	<script src="${pageContext.request.contextPath }/js/chosen.jquery.min.js"></script>
	<!-- jquery.counterup.min.js -->
	<script src="${pageContext.request.contextPath }/js/jquery.counterup.min.js"></script>
	<!-- waypoints.min.js -->
	<script src="${pageContext.request.contextPath }/js/waypoints.min.js"></script>
	<!-- plugins js -->
	<script src="${pageContext.request.contextPath }/js/plugins.js"></script>
	<!-- main js -->
	<script src="${pageContext.request.contextPath }/js/main.js"></script>
</body>
</html>
