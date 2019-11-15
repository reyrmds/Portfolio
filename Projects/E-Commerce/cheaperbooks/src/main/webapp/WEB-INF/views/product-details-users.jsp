?<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Ad Details | Cheaper-BOOKS</title>
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
	
	<section>
		<div class="container">
			<div class="row">
				<%@include file="includes/sidebar.jsp"%>
				<div class="col-sm-9 padding-right">
					<div class="product-details"><!--product-details-->
					<c:forEach var="e" items="${ad}">
						<div class="col-sm-5">
							<div class="view-product">
							    <img src="<c:url value="/resources/images/product-details/a.jpg"/>" alt="">
								<h3>ZOOM</h3>
							</div>
							<div id="similar-product" class="carousel slide" data-ride="carousel">
								
								  <!-- Wrapper for slides -->
								    <div class="carousel-inner">
										<div class="item active">
										  <a href=""><img src="<c:url value="/resources/images/product-details/2.jpg"/>" alt=""></a>
										  <a href=""><img src="<c:url value="/resources/images/product-details/3.jpg"/>" alt=""></a>
										  <a href=""><img src="<c:url value="/resources/images/product-details/4.jpg"/>" alt=""></a>
										</div>
										<div class="item">
										  <a href=""><img src="<c:url value="/resources/images/product-details/4.jpg"/>" alt=""></a>
										  <a href=""><img src="<c:url value="/resources/images/product-details/2.jpg"/>" alt=""></a>
										  <a href=""><img src="<c:url value="/resources/images/product-details/3.jpg"/>" alt=""></a>
										</div>
										<div class="item">
										  <a href=""><img src="<c:url value="/resources/images/product-details/3.jpg"/>" alt=""></a>
										  <a href=""><img src="<c:url value="/resources/images/product-details/4.jpg"/>" alt=""></a>
										  <a href=""><img src="<c:url value="/resources/images/product-details/2.jpg"/>" alt=""></a>
										</div>
										
									</div>

								  <!-- Controls -->
								  <a class="left item-control" href="#similar-product" data-slide="prev">
									<i class="fa fa-angle-left"></i>
								  </a>
								  <a class="right item-control" href="#similar-product" data-slide="next">
									<i class="fa fa-angle-right"></i>
								  </a>
							</div>

						</div>
						<div class="col-sm-7">
							<div class="product-information"><!--/product-information-->
								<img src="<c:url value="/resources/images/product-details/new.jpg"/>" class="newarrival" alt="" />
								<h2>${e.title}</h2>								
								<p><b>Category: </b>${e.category}</p>
								<p><b>Description: </b>${e.description}</p>
								<p><b>Date Posted:</b> ${e.dateposted}</p>
								<br></br>
								<h4>Seller Details</h4>			
								<p><b>Name: </b>${e.name}</p>
								<p><b>Email: </b>${e.email}</p>		
								<p><b>Contact: </b>${e.contact}</p>			
							</div><!--/product-information-->
						</div>
					</c:forEach>
					</div><!--/product-details-->
					
<%-- 					<%@include file="includes/category.jsp" %> --%>

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