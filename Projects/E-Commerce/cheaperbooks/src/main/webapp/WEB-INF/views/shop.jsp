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
    <title>Shop | Cheaper-BOOKS</title>
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
	<%@include file="includes/header.jsp" %>
	<section id="advertisement">
		<div class="container">
			<img src="<c:url value="/resources/images/shop/adver.jpg"/>" alt="" />
		</div>
	</section>
	
	<section>
		<div class="container">
			<div class="row">
				<%@include file="includes/sidebar.jsp"%>
				
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
						
						<ul class="pagination">
							<li class="active"><a href="">1</a></li>
							<li><a href="">2</a></li>
							<li><a href="">3</a></li>
							<li><a href="">&raquo;</a></li>
						</ul>
					</div><!--features_items-->
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
</body>
</html>