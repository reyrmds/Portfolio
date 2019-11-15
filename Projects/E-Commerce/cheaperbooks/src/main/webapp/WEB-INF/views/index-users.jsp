<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Home | Cheaper-BOOKS</title>
	
	<link href="<c:url value="/resources/css/bootstrap.min.css"/>"rel="stylesheet" type="text/css" />
    <link href="<c:url value="/resources/css/font-awesome.min.css"/>"rel="stylesheet" type="text/css" />
    <link href="<c:url value="/resources/css/prettyPhoto.css"/>"rel="stylesheet" type="text/css" />
    <link href="<c:url value="/resources/css/price-range.css"/>"rel="stylesheet" type="text/css" />
    <link href="<c:url value="/resources/css/animate.css"/>"rel="stylesheet" type="text/css" />
    <link href="<c:url value="/resources/css/responsive.cs"/>"rel="stylesheet" type="text/css" />
    <link href="<c:url value="/resources/css/main.css"/>"rel="stylesheet" type="text/css" />
    <link href="<c:url value="/resources/images/ico/favicon.ico"/>"rel="shortcut icon" />   
	<link href="<c:url value="/resources/images/ico/apple-touch-icon-144-precomposed.png"/>"rel="apple-touch-icon-precomposed" sizes="144x144" />
	<link href="<c:url value="/resources/images/ico/apple-touch-icon-144-precomposed.png"/>"rel="apple-touch-icon-precomposed" sizes="144x144" />
	<link href="<c:url value="/resources/images/ico/apple-touch-icon-72-precomposed.png"/>"rel="apple-touch-icon-precomposed" sizes="72x72" />
	<link href="<c:url value="/resources/images/ico/apple-touch-icon-57-precomposed.png"/>"rel="apple-touch-icon-precomposed" />
</head><!--/head-->

<body>

<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="contactinfo">
							<ul class="nav nav-pills">
								<li><a href=""><i class="fa fa-phone"></i> +639973270385</a></li>
								<li><a href=""><i class="fa fa-envelope"></i> HRMSII@gmail.com</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="social-icons pull-right">
							<ul class="nav navbar-nav">
								<li><a href=""><i class="fa fa-facebook"></i></a></li>
								<li><a href=""><i class="fa fa-twitter"></i></a></li>
								<li><a href=""><i class="fa fa-linkedin"></i></a></li>
								<li><a href=""><i class="fa fa-dribbble"></i></a></li>
								<li><a href=""><i class="fa fa-google-plus"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header_top-->
		
		<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="logo pull-left">
							<a href="#"><img src="<c:url value="/resources/images/home/logo2.jpg"/>" alt="" /></a>
						</div>
						
					</div>
					<div class="col-sm-8">
					<c:forEach var="e" items="${user}">
						<div class="shop-menu pull-right">					
							<ul class="nav navbar-nav">						
								<li><a href="http://localhost:8080/cheaperbooks/ad-post/${e.userid}"><i class="fa fa-star"></i> Sell your book now</a></li>		
								<li><a href="#"><i class="fa fa-user"></i> 								
								${e.name}								
								</a></li>
								<li><a href="http://localhost:8080/cheaperbooks/login"><i class="fa fa-lock"></i> Logout</a></li>
							</ul>						
						</div>
					</c:forEach>

					</div>
				</div>
			</div>
		</div><!--/header-middle-->
	
		<div class="header-bottom"><!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-9">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<div class="mainmenu pull-left">
						<c:forEach var="e" items="${user}">
							<ul class="nav navbar-nav collapse navbar-collapse">
								<li><a href="http://localhost:8080/cheaperbooks/index/${e.userid}">Home</a></li>
								<li><a href="http://localhost:8080/cheaperbooks/shop/${e.userid}">Books</a></li>									
								<li><a href="http://localhost:8080/cheaperbooks/contact-us/${e.userid}">Contact us</a></li>
							</ul>
						</c:forEach>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="search_box pull-right">
							<input type="text" placeholder="Search"/>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-bottom-->
	</header><!--/header-->
	
	
	<section id="slider"><!--slider-->
		
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div id="slider-carousel" class="carousel slide" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
							<li data-target="#slider-carousel" data-slide-to="1"></li>
							<li data-target="#slider-carousel" data-slide-to="2"></li>
						</ol>
						
						<div class="carousel-inner">
							<div class="item active">
								<div class="col-sm-6 " >
									<h1><span>Cheaper</span>-BOOKS</h1>
									<h2>E-Commerce Project</h2>
									<p></p>
									<button type="button" class="btn btn-default get">Get it now</button>
								</div>
								<div class="col-sm-6">
									<img src="<c:url value="/resources/images/home/got2.jpg"/>"  class="girl img-responsive" alt="" />
<%-- 									<img src="<c:url value="/resources/images/home/pricing.png"/>"  class="pricing" alt="" /> --%>
								</div>
							</div>
							<div class="item">
								<div class="col-sm-6">
									<h1><span>Cheaper</span>-BOOKS</h1>
									<h2>E-Commerce Project</h2>
									<p> </p>
									<button type="button" class="btn btn-default get">Get it now</button>
								</div>
								<div class="col-sm-6" style="padding-left:20px;" >
									<img src="<c:url value="/resources/images/home/hg2.jpg"/>"class="girl img-responsive" alt="" />
<%-- 									<img src="<c:url value="/resources/images/home/pricing.png"/>"  class="pricing" alt="" /> --%>
								</div>
							</div>
							
							<div class="item">
								<div class="col-sm-6">
									<h1><span>Cheaper</span>-BOOKS</h1>
									<h2>E-Commerce Project</h2>
									<p></p>
									<button type="button" class="btn btn-default get">Get it now</button>
								</div>
								<div class="col-sm-6" style="padding-left:20px;">
									<img src="<c:url value="/resources/images/home/fsog2.jpg"/>"  class="girl img-responsive" alt="" />
<%-- 									<img src="<c:url value="/resources/images/home/pricing.png"/>" class="pricing" alt="" /> --%>
								</div>
							</div>
							
						</div>
						
						<a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
							<i class="fa fa-angle-left"></i>
						</a>
						<a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
							<i class="fa fa-angle-right"></i>
						</a>
					</div>
					
				</div>
			</div>
		</div>
	</section><!--/slider-->
	
	<section>
		<div class="container">
			<div class="row">

				<%@include file="includes/sidebar.jsp" %>
				
				<div class="col-sm-9 padding-right">
					<div class="features_items"><!--features_items-->
						<h2 class="title text-center">Featured Books</h2>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<img src="<c:url value="/resources/images/home/loveandgravity1.jpg"/>" alt="" />
											<h2>Php 479.00</h2>
											<p>Love and Gravity</p>
											<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>View item</a>
										</div>
										<div class="product-overlay">
											<div class="overlay-content">
												<h2>Php 479.00</h2>
												<p>Love and Gravity</p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>View item</a>
											</div>
										</div>
								</div>					
							</div>
						</div>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="<c:url value="/resources/images/home/mythology1.jpg"/>" alt="" />
										<h2>Php 188.00</h2>
										<p>Mythology (new)</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>View item</a>
									</div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>Php 188.00</h2>
											<p>Mythology (new)</p>
											<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>View item</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="<c:url value="/resources/images/home/percy1.jpg"/>" alt="" />
										<h2>Php 439.00</h2>
										<p>Percy Jackson's Greek Heroes</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>View item</a>
									</div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>Php 439.00</h2>
											<p>Percy Jackson's Greek Heroes</p>
											<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>View item</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="<c:url value="/resources/images/home/start1.jpg"/>" alt="" />
										<h2>Php 649.00</h2>
										<p>Start With Why:why Great Leaders Inspire Everyone To Take Action</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>View item</a>
									</div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>Php 649.00</h2>
											<p>Start With Why:why Great Leaders Inspire Everyone To Take Action</p>
											<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>View item</a>
										</div>
									</div>
									<img src="<c:url value="/resources/images/home/new.png"/>" class="new" alt="" />
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="<c:url value="/resources/images/home/turtles1.jpg"/>" alt="" />
										<h2>Php 539.00</h2>
										<p>Turtles all the Way Down </p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>View item</a>
									</div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>Php 539.00</h2>
											<p>Turtles all the Way Down </p>
											<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>View item</a>
										</div>
									</div>
									<img src="<c:url value="/resources/images/home/sale.png"/>" class="new" alt="" />
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="<c:url value="/resources/images/home/magnus1.jpg"/>" alt="" />
										<h2>Php 399.00</h2>
										<p>Magnus Chase and the Gods of Asgard: The Ship of the Dead</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>View item</a>
									</div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>Php 399.00</h2>
											<p>Magnus Chase and the Gods of Asgard: The Ship of the Dead</p>
											<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>View item</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						
					</div><!--features_items-->
					
					<div class="category-tab"><!--category-tab-->
						<div class="col-sm-12">
							<ul class="nav nav-tabs">
								<li class="active"><a href="#recommendations" data-toggle="tab">RECOMMENDATIONS</a></li>
								<li><a href="#best" data-toggle="tab">BEST SELLERS</a></li>
								<li><a href="#arrivals" data-toggle="tab">NEW ARRIVALS</a></li>
							</ul>
						</div>
						<div class="tab-content">
							<div class="tab-pane fade active in" id="recommendations" >
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="<c:url value="/resources/images/home/rgot.jpg"/>" alt="" />
												<h2>Php 499.00</h2>
												<p>Game of Thrones</p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>View item</a>
											</div>
											
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="<c:url value="/resources/images/home/rhg.jpg"/>" alt="" />
												<h2>Php 299.00</h2>
												<p>Hunger Games</p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>View item</a>
											</div>
											
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="<c:url value="/resources/images/home/rfsog.jpg"/>" alt="" />
												<h2>Php 299.00</h2>
												<p>Fifty Shades of Grey</p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>View item</a>
											</div>
											
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="<c:url value="/resources/images/home/rmyth.jpg"/>" alt="" />
												<h2>Php 188.00</h2>
												<p>Mythology (new)</p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>View item</a>
											</div>
											
										</div>
									</div>
								</div>
							</div>
							
							<div class="tab-pane fade" id="best" >
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="<c:url value="/resources/images/home/rperks.jpg"/>" alt="" />
												<h2>Php 299.00</h2>
												<p>Perks Of Being A Wallflower</p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>View item</a>
											</div>
											
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="<c:url value="/resources/images/home/ryup.jpg"/>" alt="" />
												<h2>Php 295.00</h2>
												<p>MAINE MENDOZA: YUP, I AM THAT GIRL [PRE-ORDER]</p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>View item</a>
											</div>
											
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="<c:url value="/resources/images/home/rsubtle.jpg"/>" alt="" />
												<h2>Php 548.00</h2>
												<p>The Subtle Art of Not Giving a F*ck</p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>View item</a>
											</div>
											
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="<c:url value="/resources/images/home/rtula.jpg"/>" alt="" />
												<h2>Php 175.00</h2>
												<p>100 Tula Para Kay Estella</p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>View item</a>
											</div>
											
										</div>
									</div>
								</div>
							</div>
							
							<div class="tab-pane fade" id="arrivals" >
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="<c:url value="/resources/images/home/rcrown.jpg"/>" alt="" />
												<h2>Php 295.00</h2>
												<p>The Crown: The Journey to be a Beauty Queen</p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>View item</a>
											</div>
											
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="<c:url value="/resources/images/home/rgun.jpg"/>" alt="" />
												<h2>Php 319.00</h2>
												<p>THE DARK TOWER I</p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>View item</a>
											</div>
											
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="<c:url value="/resources/images/home/rperks.jpg"/>" alt="" />
												<h2>Php 299.00</h2>
												<p>Perks Of Being A Wallflower</p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>View item</a>
											</div>
											
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="<c:url value="/resources/images/home/ryup.jpg"/>" alt="" />
												<h2>Php 295.00</h2>
												<p>MAINE MENDOZA: YUP, I AM THAT GIRL [PRE-ORDER]</p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>View item</a>
											</div>
											
										</div>
									</div>
								</div>
								
							</div>
							
						</div>
					</div><!--/category-tab-->
					
					<div class="recommended_items"><!--recommended_items-->
						<h2 class="title text-center">recommended items</h2>
						
						<div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
							<div class="carousel-inner">
								<div class="item active">	
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="<c:url value="/resources/images/home/rec1.jpg"/>" alt="" />
													<h2>Php 299.00</h2>
													<p>Fifty Shades of Grey</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>View item</a>
												</div>
												
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="<c:url value="/resources/images/home/rec2.jpg"/>" alt="" />
													<h2>Php 499.00</h2>
													<p>Game of Thrones</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>View item</a>
												</div>
												
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="<c:url value="/resources/images/home/rec3.jpg"/>" alt="" />
													<h2>Php 439.00</h2>
													<p>Percy Jackson's Greek Heroes</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>View item</a>
												</div>
												
											</div>
										</div>
									</div>
								</div>
								<div class="item">	
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="<c:url value="/resources/images/home/rec4.jpg"/>" alt="" />
													<h2>Php 299.00</h2>
													<p>Perks Of Being A Wallflower</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>View item</a>
												</div>
												
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="<c:url value="/resources/images/home/rec5.jpg"/>" alt="" />
													<h2>Php 175.00</h2>
													<p>100 Tula Para Kay Estella</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>View item</a>
												</div>
												
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="<c:url value="/resources/images/home/rec6.jpg"/>" alt="" />
													<h2>Php 299.00</h2>
													<p>Hunger Games</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>View item</a>
												</div>
												
											</div>
										</div>
									</div>
								</div>
							</div>
							 <a class="left recommended-item-control" href="#recommended-item-carousel" data-slide="prev">
								<i class="fa fa-angle-left"></i>
							  </a>
							  <a class="right recommended-item-control" href="#recommended-item-carousel" data-slide="next">
								<i class="fa fa-angle-right"></i>
							  </a>			
						</div>
					</div><!--/recommended_items-->
					
				</div>
			</div>
		</div>
	</section>
	
	<%@include file="includes/footer.jsp" %>
	<script type="text/javascript" src="<c:url value="/resources/js/jquery.js"/>"> </script>
	<script type="text/javascript" src="<c:url value="/resources/js/jquery.scrollUp.min.js"/>"> </script>
    <script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js"/>"> </script>  
    <script type="text/javascript" src="<c:url value="/resources/js/jquery.prettyPhoto.js"/>"> </script>
    <script type="text/javascript" src="<c:url value="/resources/js/main.js"/>"> </script>
    <script type="text/javascript" src="<c:url value="/resources/js/price-range.js"/>"> </script>
    
    
	<script>
		$(document).on("click", ".submits", function () {
			var vid = $(this).data('id');
			$(".shop-menu #id").val( vid );
		});	
	</script>
    
</body>
</html>