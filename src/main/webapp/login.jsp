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
<link rel="shortcut icon" type="${pageContext.request.contextPath}/img/x-icon" href="${pageContext.request.contextPath}/img/favicon.png">

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
<script src="${pageContext.request.contextPath }/js/user.login_form.js"></script>
<script src="${pageContext.request.contextPath }/js/vendor/modernizr-2.8.3.min.js"></script>

</head>
<body class="login">
	<%@include file="header.jsp"%>
	<!-- breadcrumbs-area-start -->
	<div class="breadcrumbs-area mb-70">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumbs-menu">
						<ul>
							<li><a href="${pageContext.request.contextPath }/toIndex">首页</a></li>
							<li><a  class="active">登陆</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- breadcrumbs-area-end -->
	<!-- user-login-area-start -->
	<div class="user-login-area mb-70">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="login-title text-center mb-30">
						<h2 class="strong">登录</h2>
						<p>登录状态绝对安全不会泄露个人信息，请确认登陆账号正确</p>
					</div>
				</div>
				<form class="form-horizontal" action="${pageContext.request.contextPath}/user/login"
					method="post">

					<div class="col-lg-offset-3 col-lg-6 col-md-offset-3 col-md-6 col-sm-12 col-xs-12">
						<div class="login-form">
							<p style="color: red" id="txtLoginErr">${message}</p>
							<div class="single-login">
								<label>用户名<span>*</span></label> <input type="text" name="username"  id="txtUsername"/>
							</div>
							<div class="single-login">
								<label>密码 <span>*</span></label> <input type="password" name="password" id="txtPassword"/>
							</div>
							<div class="single-login single-login-2">
								<button type="submit" class="btn btn-default pull-left" id="btnSignCheck">登陆</button>
							</div>

						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- user-login-area-end -->
	<!-- footer-area-start -->

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