<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>爱看图书商城</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Favicon -->
<link rel="shortcut icon" type="${pageContext.request.contextPath}/image/x-icon" href="${pageContext.request.contextPath}/img/logo.jpg">

<!-- all css here -->
<!-- bootstrap v3.3.6 css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<!-- animate css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.css">
<!-- meanmenu css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/meanmenu.min.css">
<!-- owl.carousel css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.carousel.css">
<!-- font-awesome css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
<!-- flexslider.css-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/flexslider.css">
<!-- chosen.min.css-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/chosen.min.css">
<!-- style css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<!-- responsive css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/responsive.css">
<!-- modernizr css -->
<script src="${pageContext.request.contextPath}/js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body>
	<%@include file="/header.jsp"%>
	<!-- banner-area-start -->
	<div class="banner-area banner-res-large ptb-35">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
					<div class="single-banner">
						<div class="banner-img">
							<a><img src="${pageContext.request.contextPath}/img/banner/1.png" alt="banner" /></a>
						</div>
						<div class="banner-text">
							<h4>免费送货</h4>
							<p>全场满500包邮</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
					<div class="single-banner">
						<div class="banner-img">
							<a><img src="${pageContext.request.contextPath}/img/banner/2.png" alt="banner" /></a>
						</div>
						<div class="banner-text">
							<h4>退款保证</h4>
							<p>100% 退款保证</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 hidden-sm col-xs-12">
					<div class="single-banner">
						<div class="banner-img">
							<a><img src="${pageContext.request.contextPath}/img/banner/3.png" alt="banner" /></a>
						</div>
						<div class="banner-text">
							<h4>货到付款</h4>
							<p>Lorem ipsum dolor consecte</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
					<div class="single-banner mrg-none-xs">
						<div class="banner-img">
							<a><img src="${pageContext.request.contextPath}/img/banner/4.png" alt="banner" /></a>
						</div>
						<div class="banner-text">
							<h4>帮助支持</h4>
							<p>致电支持：18174450486</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- banner-area-end -->
	<!-- slider-area-start -->
	<div class="slider-area">
		<div class="slider-active owl-carousel">

			<div class="single-slider slider-h1-2 pt-215 pb-100 bg-img"
				style="background-image: url(${pageContext.request.contextPath}/img/slider/1.jpg);">
				<div class="container">
					<div class="slider-content slider-content-2 slider-animated-1">
						<h1>最大的销售平台</h1>
						<h2>爱看图书</h2>
						<h3>现在开始只要19元</h3>
						<a  >开启购物</a>
					</div>
				</div>
			</div>
			<div class="single-slider slider-h1-2 pt-215 pb-100 bg-img"
				style="background-image: url(${pageContext.request.contextPath}/img/slider/2.jpg);">
				<div class="container">
					<div class="slider-content slider-content-2 slider-animated-1">
						<h1>我们可以帮助你</h1>
						<h2>收集各种书籍</h2>
						<h3>并且有序的整理</h3>
						<a  >今天就加入我们！</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- slider-area-end -->
	<!-- product-area-start -->
	<div class="product-area pt-95 xs-mb">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title text-center mb-50">
						<h2>最有趣的</h2>
						<p>
							浏览我们最畅销的图书 <br /> 肯定会找到你要找的..
						</p>
					</div>
				</div>
				<div class="col-lg-12">
					<!-- tab-menu-start -->
					<div class="tab-menu mb-40 text-center">
						<ul>
							<li class="active"><a href="#Audiobooks" data-toggle="tab">新品到货</a></li>
							<li><a href="#books" data-toggle="tab">正在热卖</a></li>
							<li><a href="#bussiness" data-toggle="tab">特色产品</a></li>
						</ul>
					</div>
					<!-- tab-menu-end -->
				</div>
			</div>
			<!-- tab-area-start -->
			<div class="tab-content">
				<div class="tab-pane active" id="Audiobooks">
					<div class="tab-active owl-carousel">
						<c:forEach items="${books }" var="book" begin="1" end="8">
							<div class="product-wrapper">
								<div class="product-img">
									<img src="${pageContext.request.contextPath }/${book.cover}" alt="book" class="primary" />
									<div class="quick-view">
										<!-- <a class="action-view"   data-target="#productModal" data-toggle="modal"
											title="Quick View"> <i class="fa fa-search-plus"></i>
										</a> -->
										<a href="${pageContext.request.contextPath }/book/${book.id}"><i
											class="fa fa-search-plus"></i></a>
									</div>
									<div class="product-flag">
										<ul>
											<li><span class="sale">新品</span></li>
											<li><span class="discount-percentage">-5%</span></li>
										</ul>
									</div>
								</div>
								<div class="product-details text-center">
									<div class="product-rating">
										<ul>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
										</ul>
									</div>
									<h4>
										<a href="${pageContext.request.contextPath }/ProductServlet?id=${book.id}">${book.name }</a>
									</h4>
									<div class="product-price">
										<ul>
											<li>￥${book.price }</li>
										</ul>
									</div>
								</div>
								<div class="product-link">
									<div class="product-button">
										<a href="${pageContext.request.contextPath }/CartServlet?method=add&id=${book.id}"
											title="Add to cart"><i class="fa fa-shopping-cart"></i>加入购物车</a>
									</div>
									<div class="add-to-link">
										<ul>
											<li><a href="${pageContext.request.contextPath }/ProductServlet?id=${book.id}"
												title="Details"><i class="fa fa-external-link"></i></a></li>
										</ul>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>

				</div>
				<div class="tab-pane fade" id="books">
					<div class="tab-active owl-carousel">
						<c:forEach items="${books }" var="book" begin="20" end="30">
							<div class="product-wrapper">
								<div class="product-img">
									<img src="${pageContext.request.contextPath }${book.cover}" alt="book" class="primary" />
									<div class="quick-view">
										<!-- <a class="action-view"   data-target="#productModal" data-toggle="modal"
											title="Quick View"> <i class="fa fa-search-plus"></i>
										</a> -->
										<a href="${pageContext.request.contextPath }/ProductServlet?id=${book.id}"><i
											class="fa fa-search-plus"></i></a>
									</div>
									<div class="product-flag">
										<ul>
											<li><span class="sale">新品</span></li>
											<li><span class="discount-percentage">-5%</span></li>
										</ul>
									</div>
								</div>
								<div class="product-details text-center">
									<div class="product-rating">
										<ul>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
										</ul>
									</div>
									<h4>
										<a href="${pageContext.request.contextPath }/ProductServlet?id=${book.id}">${book.name }</a>
									</h4>
									<div class="product-price">
										<ul>
											<li>￥${book.price }</li>
										</ul>
									</div>
								</div>
								<div class="product-link">
									<div class="product-button">
										<a href="${pageContext.request.contextPath }/CartServlet?method=add&id=${book.id}"
											title="Add to cart"><i class="fa fa-shopping-cart"></i>加入购物车</a>
									</div>
									<div class="add-to-link">
										<ul>
											<li><a href="${pageContext.request.contextPath }/ProductServlet?id=${book.id}"
												title="Details"><i class="fa fa-external-link"></i></a></li>
										</ul>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
				<div class="tab-pane fade" id="bussiness">
					<div class="tab-active owl-carousel">
						<c:forEach items="${books }" var="book" begin="40" end="48">
							<div class="product-wrapper">
								<div class="product-img">
									<img src="${pageContext.request.contextPath }${book.cover}" alt="book" class="primary" />
									<div class="quick-view">
										<!-- <a class="action-view"   data-target="#productModal" data-toggle="modal"
											title="Quick View"> <i class="fa fa-search-plus"></i>
										</a> -->
										<a href="${pageContext.request.contextPath }/ProductServlet?id=${book.id}"><i
											class="fa fa-search-plus"></i></a>
									</div>
									<div class="product-flag">
										<ul>
											<li><span class="sale">新品</span></li>
											<li><span class="discount-percentage">-5%</span></li>
										</ul>
									</div>
								</div>
								<div class="product-details text-center">
									<div class="product-rating">
										<ul>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
										</ul>
									</div>
									<h4>
										<a href="${pageContext.request.contextPath }/ProductServlet?id=${book.id}">${book.name }</a>
									</h4>
									<div class="product-price">
										<ul>
											<li>￥${book.price }</li>
										</ul>
									</div>
								</div>
								<div class="product-link">
									<div class="product-button">
										<a href="${pageContext.request.contextPath }/CartServlet?method=add&id=${book.id}"
											title="Add to cart"><i class="fa fa-shopping-cart"></i>加入购物车</a>
									</div>
									<div class="add-to-link">
										<ul>
											<li><a href="${pageContext.request.contextPath }/ProductServlet?id=${book.id}"
												title="Details"><i class="fa fa-external-link"></i></a></li>
										</ul>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
			<!-- tab-area-end -->
		</div>
	</div>
	<!-- product-area-end -->
	<!-- banner-area-start -->
	<div class="banner-area-5 mtb-95">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="banner-img-2">
						<a><img src="${pageContext.request.contextPath}/img/banner/5.jpg" alt="banner" /></a>
						<div class="banner-text">
							<h3></h3>	<!-- xietext -->
							<h2></h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- banner-area-end -->
	<!-- bestseller-area-start -->
	<div class="bestseller-area pb-100">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
					<div class="bestseller-content">
						<h1>作者最畅销</h1>
						<h2>
							韩 <br />寒
						</h2>
						<p class="categories">
							类别：<a>书籍</a> , <a>小说</a>
						</p>
						<p>  有些人,一辈子缩在一个角落里。连窗外都懒得看,更别说踏出门。你们的偶像都是明星，而我的偶像，是一个卫星，我的名字就是，旅行者2号 ----《后会无期》</p>
						<div class="social-author">
							<ul>
								<li><a  ><i class="fa fa-facebook"></i></a></li>
								<li><a  ><i class="fa fa-twitter"></i></a></li>
							</ul>
						</div>
					</div>
					<div class="banner-img-2">
						<a><img src="${pageContext.request.contextPath}/img/banner/6.jpg" alt="banner" /></a>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<div class="bestseller-active owl-carousel">
						<div class="bestseller-total">
							<div class="single-bestseller mb-25">
								<div class="bestseller-img">
									<a  ><img src="${pageContext.request.contextPath}/img/product/13.jpg" alt="book" /></a>
									<div class="product-flag">
										<ul>
											<li><span class="sale">新品</span></li>
											<li><span class="discount-percentage">-5%</span></li>
										</ul>
									</div>
								</div>
								<div class="bestseller-text text-center">
									<h3>
										<a  >Rival Messenger</a>
									</h3>
									<div class="price">
										<ul>
											<li><span class="new-price">$40.00</span></li>
											<li><span class="old-price">$45.00</span></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="single-bestseller">
								<div class="bestseller-img">
									<a  ><img src="${pageContext.request.contextPath}/img/product/14.jpg" alt="book" /></a>
									<div class="product-flag">
										<ul>
											<li><span class="sale">新品</span></li>
										</ul>
									</div>
								</div>
								<div class="bestseller-text text-center">
									<h3>
										<a  >Impulse Duffle</a>
									</h3>
									<div class="price">
										<ul>
											<li><span class="new-price">$70.00</span></li>
											<li><span class="old-price">$74.00</span></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="bestseller-total">
							<div class="single-bestseller mb-25">
								<div class="bestseller-img">
									<a  ><img src="${pageContext.request.contextPath}/img/product/15.jpg" alt="book" /></a>
									<div class="product-flag">
										<ul>
											<li><span class="sale">新品</span></li>
										</ul>
									</div>
								</div>
								<div class="bestseller-text text-center">
									<h3>
										<a  >Voyage Yoga Bag</a>
									</h3>
									<div class="price">
										<ul>
											<li><span class="new-price">$30.00</span></li>
											<li><span class="old-price">$32.00</span></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="single-bestseller">
								<div class="bestseller-img">
									<a  ><img src="${pageContext.request.contextPath}/img/product/16.jpg" alt="book" /></a>
									<div class="product-flag">
										<ul>
											<li><span class="sale">新品</span></li>
											<li><span class="discount-percentage">-5%</span></li>
										</ul>
									</div>
								</div>
								<div class="bestseller-text text-center">
									<h3>
										<a  >Compete Track Tote</a>
									</h3>
									<div class="price">
										<ul>
											<li><span class="new-price">$32.00</span></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="bestseller-total">
							<div class="single-bestseller mb-25">
								<div class="bestseller-img">
									<a  ><img src="${pageContext.request.contextPath}/img/product/17.jpg" alt="book" /></a>
									<div class="product-flag">
										<ul>
											<li><span class="sale">新品</span></li>
										</ul>
									</div>
								</div>
								<div class="bestseller-text text-center">
									<h3>
										<a  >Fusion Backpack</a>
									</h3>
									<div class="price">
										<ul>
											<li><span class="new-price">$59.00</span></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="single-bestseller">
								<div class="bestseller-img">
									<a  ><img src="${pageContext.request.contextPath}/img/product/14.jpg" alt="book" /></a>
									<div class="product-flag">
										<ul>
											<li><span class="sale">新品</span></li>
										</ul>
									</div>
								</div>
								<div class="bestseller-text text-center">
									<h3>
										<a  >Impulse Duffle</a>
									</h3>
									<div class="price">
										<ul>
											<li><span class="new-price">$70.00</span></li>
											<li><span class="old-price">$74.00</span></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- bestseller-area-end -->
	<!-- banner-static-area-start -->
	<div class="banner-static-area bg ptb-100">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
					<div class="banner-shadow-hover xs-mb">
						<a  ><img src="${pageContext.request.contextPath}/img/banner/8.jpg" alt="banner" /></a>
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
					<div class="banner-shadow-hover">
						<a  ><img src="${pageContext.request.contextPath}/img/banner/9.jpg" alt="banner" /></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- banner-static-area-end -->
	<!-- most-product-area-start -->
	<div class="most-product-area pt-90 pb-100">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-3 col-sm-4 col-xs-12 xs-mb">
					<div class="section-title-2 mb-30">
						<h3>文艺</h3>
					</div>
					<div class="product-active-2 owl-carousel">
						<div class="product-total-2">
							<div class="single-most-product bd mb-18">
								<div class="most-product-img">
									<a  ><img src="${pageContext.request.contextPath}/img/product/20.jpg" alt="book" /></a>
								</div>
								<div class="most-product-content">
									<div class="product-rating">
										<ul>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
										</ul>
									</div>
									<h4>
										<a  >Endeavor Daytrip</a>
									</h4>
									<div class="product-price">
										<ul>
											<li>$30.00</li>
											<li class="old-price">$33.00</li>
										</ul>
									</div>
								</div>
							</div>
							<div class="single-most-product bd mb-18">
								<div class="most-product-img">
									<a  ><img src="${pageContext.request.contextPath}/img/product/21.jpg" alt="book" /></a>
								</div>
								<div class="most-product-content">
									<div class="product-rating">
										<ul>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
										</ul>
									</div>
									<h4>
										<a  >Savvy Shoulder Tote</a>
									</h4>
									<div class="product-price">
										<ul>
											<li>$30.00</li>
											<li class="old-price">$35.00</li>
										</ul>
									</div>
								</div>
							</div>
							<div class="single-most-product">
								<div class="most-product-img">
									<a  ><img src="${pageContext.request.contextPath}/img/product/22.jpg" alt="book" /></a>
								</div>
								<div class="most-product-content">
									<div class="product-rating">
										<ul>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
										</ul>
									</div>
									<h4>
										<a  >Compete Track Tote</a>
									</h4>
									<div class="product-price">
										<ul>
											<li>$35.00</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="product-total-2">
							<div class="single-most-product bd mb-18">
								<div class="most-product-img">
									<a  ><img src="${pageContext.request.contextPath}/img/product/23.jpg" alt="book" /></a>
								</div>
								<div class="most-product-content">
									<div class="product-rating">
										<ul>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
										</ul>
									</div>
									<h4>
										<a  >Voyage Yoga Bag</a>
									</h4>
									<div class="product-price">
										<ul>
											<li>$30.00</li>
											<li class="old-price">$33.00</li>
										</ul>
									</div>
								</div>
							</div>
							<div class="single-most-product bd mb-18">
								<div class="most-product-img">
									<a  ><img src="${pageContext.request.contextPath}/img/product/24.jpg" alt="book" /></a>
								</div>
								<div class="most-product-content">
									<div class="product-rating">
										<ul>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
										</ul>
									</div>
									<h4>
										<a  >Impulse Duffle</a>
									</h4>
									<div class="product-price">
										<ul>
											<li>$70.00</li>
											<li class="old-price">$74.00</li>
										</ul>
									</div>
								</div>
							</div>
							<div class="single-most-product">
								<div class="most-product-img">
									<a  ><img src="${pageContext.request.contextPath}/img/product/22.jpg" alt="book" /></a>
								</div>
								<div class="most-product-content">
									<div class="product-rating">
										<ul>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
										</ul>
									</div>
									<h4>
										<a  >Fusion Backpack</a>
									</h4>
									<div class="product-price">
										<ul>
											<li>$59.00</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-4 col-xs-12 xs-mb">
					<div class="section-title-2 mb-30">
						<h3>励志</h3>
					</div>
					<div class="product-active-2 owl-carousel">
						<div class="product-total-2">
							<div class="single-most-product bd mb-18">
								<div class="most-product-img">
									<a  ><img src="${pageContext.request.contextPath}/img/product/23.jpg" alt="book" /></a>
								</div>
								<div class="most-product-content">
									<div class="product-rating">
										<ul>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
										</ul>
									</div>
									<h4>
										<a  >Voyage Yoga Bag</a>
									</h4>
									<div class="product-price">
										<ul>
											<li>$30.00</li>
											<li class="old-price">$33.00</li>
										</ul>
									</div>
								</div>
							</div>
							<div class="single-most-product bd mb-18">
								<div class="most-product-img">
									<a  ><img src="${pageContext.request.contextPath}/img/product/24.jpg" alt="book" /></a>
								</div>
								<div class="most-product-content">
									<div class="product-rating">
										<ul>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
										</ul>
									</div>
									<h4>
										<a  >Impulse Duffle</a>
									</h4>
									<div class="product-price">
										<ul>
											<li>$70.00</li>
											<li class="old-price">$74.00</li>
										</ul>
									</div>
								</div>
							</div>
							<div class="single-most-product">
								<div class="most-product-img">
									<a  ><img src="${pageContext.request.contextPath}/img/product/26.jpg" alt="book" /></a>
								</div>
								<div class="most-product-content">
									<div class="product-rating">
										<ul>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
										</ul>
									</div>
									<h4>
										<a  >Driven Backpack1</a>
									</h4>
									<div class="product-price">
										<ul>
											<li>$40.00</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="product-total-2">
							<div class="single-most-product bd mb-18">
								<div class="most-product-img">
									<a  ><img src="${pageContext.request.contextPath}/img/product/20.jpg" alt="book" /></a>
								</div>
								<div class="most-product-content">
									<div class="product-rating">
										<ul>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
										</ul>
									</div>
									<h4>
										<a  >Endeavor Daytrip</a>
									</h4>
									<div class="product-price">
										<ul>
											<li>$30.00</li>
											<li class="old-price">$33.00</li>
										</ul>
									</div>
								</div>
							</div>
							<div class="single-most-product bd mb-18">
								<div class="most-product-img">
									<a  ><img src="${pageContext.request.contextPath}/img/product/21.jpg" alt="book" /></a>
								</div>
								<div class="most-product-content">
									<div class="product-rating">
										<ul>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
										</ul>
									</div>
									<h4>
										<a  >Savvy Shoulder Tote</a>
									</h4>
									<div class="product-price">
										<ul>
											<li>$30.00</li>
											<li class="old-price">$35.00</li>
										</ul>
									</div>
								</div>
							</div>
							<div class="single-most-product">
								<div class="most-product-img">
									<a  ><img src="${pageContext.request.contextPath}/img/product/22.jpg" alt="book" /></a>
								</div>
								<div class="most-product-content">
									<div class="product-rating">
										<ul>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
										</ul>
									</div>
									<h4>
										<a  >Compete Track Tote</a>
									</h4>
									<div class="product-price">
										<ul>
											<li>$35.00</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
					<div class="section-title-2 mb-30">
						<h3>文学</h3>
					</div>
					<div class="product-active-2 owl-carousel">
						<div class="product-total-2">
							<div class="single-most-product bd mb-18">
								<div class="most-product-img">
									<a  ><img src="${pageContext.request.contextPath}/img/product/27.jpg" alt="book" /></a>
								</div>
								<div class="most-product-content">
									<div class="product-rating">
										<ul>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
										</ul>
									</div>
									<h4>
										<a  >Crown Summit</a>
									</h4>
									<div class="product-price">
										<ul>
											<li>$36.00</li>
											<li class="old-price">$38.00</li>
										</ul>
									</div>
								</div>
							</div>
							<div class="single-most-product bd mb-18">
								<div class="most-product-img">
									<a  ><img src="${pageContext.request.contextPath}/img/product/28.jpg" alt="book" /></a>
								</div>
								<div class="most-product-content">
									<div class="product-rating">
										<ul>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
										</ul>
									</div>
									<h4>
										<a  >Driven Backpack</a>
									</h4>
									<div class="product-price">
										<ul>
											<li>$34.00</li>
											<li class="old-price">$36.00</li>
										</ul>
									</div>
								</div>
							</div>
							<div class="single-most-product">
								<div class="most-product-img">
									<a  ><img src="${pageContext.request.contextPath}/img/product/29.jpg" alt="book" /></a>
								</div>
								<div class="most-product-content">
									<div class="product-rating">
										<ul>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
										</ul>
									</div>
									<h4>
										<a  >Endeavor Daytrip</a>
									</h4>
									<div class="product-price">
										<ul>
											<li>$30.00</li>
											<li class="old-price">$33.00</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="product-total-2">
							<div class="single-most-product bd mb-18">
								<div class="most-product-img">
									<a  ><img src="${pageContext.request.contextPath}/img/product/23.jpg" alt="book" /></a>
								</div>
								<div class="most-product-content">
									<div class="product-rating">
										<ul>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
										</ul>
									</div>
									<h4>
										<a  >Voyage Yoga Bag</a>
									</h4>
									<div class="product-price">
										<ul>
											<li>$30.00</li>
											<li class="old-price">$33.00</li>
										</ul>
									</div>
								</div>
							</div>
							<div class="single-most-product bd mb-18">
								<div class="most-product-img">
									<a  ><img src="${pageContext.request.contextPath}/img/product/24.jpg" alt="book" /></a>
								</div>
								<div class="most-product-content">
									<div class="product-rating">
										<ul>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
										</ul>
									</div>
									<h4>
										<a  >Impulse Duffle</a>
									</h4>
									<div class="product-price">
										<ul>
											<li>$70.00</li>
											<li class="old-price">$74.00</li>
										</ul>
									</div>
								</div>
							</div>
							<div class="single-most-product">
								<div class="most-product-img">
									<a  ><img src="${pageContext.request.contextPath}/img/product/22.jpg" alt="book" /></a>
								</div>
								<div class="most-product-content">
									<div class="product-rating">
										<ul>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
											<li><a  ><i class="fa fa-star"></i></a></li>
										</ul>
									</div>
									<h4>
										<a  >Fusion Backpack</a>
									</h4>
									<div class="product-price">
										<ul>
											<li>$59.00</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
					<div class="block-newsletter">
						<h2>注册发送简报</h2>
						<p>您可以随时了解我们公司的最新信息！</p>
						<form action="">
							<input type="text" placeholder="写下你的email" />
						</form>
						<a  >发送电子邮件</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- most-product-area-end -->
	<!-- testimonial-area-start -->

	<!-- testimonial-area-end -->
	<!-- recent-post-area-start -->

	<!-- recent-post-area-end -->
	<!-- social-group-area-start -->

	<!-- social-group-area-end -->
	<!-- footer-area-start -->

	<!-- footer-top-start -->
	<!-- footer-mid-start -->



	<!-- all js here -->
	<!-- jquery latest version -->
	<script src="${pageContext.request.contextPath}/js/vendor/jquery-1.12.0.min.js"></script>
	<!-- bootstrap js -->
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<!-- owl.carousel js -->
	<script src="${pageContext.request.contextPath}/js/owl.carousel.min.js"></script>
	<!-- meanmenu js -->
	<script src="${pageContext.request.contextPath}/js/jquery.meanmenu.js"></script>
	<!-- wow js -->
	<script src="${pageContext.request.contextPath}/js/wow.min.js"></script>
	<!-- jquery.parallax-1.1.3.js -->
	<script src="${pageContext.request.contextPath}/js/jquery.parallax-1.1.3.js"></script>
	<!-- jquery.countdown.min.js -->
	<script src="${pageContext.request.contextPath}/js/jquery.countdown.min.js"></script>
	<!-- jquery.flexslider.js -->
	<script src="${pageContext.request.contextPath}/js/jquery.flexslider.js"></script>
	<!-- chosen.jquery.min.js -->
	<script src="${pageContext.request.contextPath}/js/chosen.jquery.min.js"></script>
	<!-- jquery.counterup.min.js -->
	<script src="${pageContext.request.contextPath}/js/jquery.counterup.min.js"></script>
	<!-- waypoints.min.js -->
	<script src="${pageContext.request.contextPath}/js/waypoints.min.js"></script>
	<!-- plugins js -->
	<script src="${pageContext.request.contextPath}/js/plugins.js"></script>
	<!-- main js -->
	<script src="${pageContext.request.contextPath}/js/main.js"></script>
</body>
</html>
