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
    <title>Product Details | Cheaper-BOOKS</title>
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
	<section>
		<div class="container">
			<div class="row">
				<%@include file="includes/sidebar.jsp"%>
				<div class="col-sm-9 padding-right">
					<div class="product-details"><!--product-details-->
						<div class="col-sm-5">
							<div class="view-product">
								<img src="<c:url value="/resources/images/product-details/a.jpg"/>" alt="" />
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
								<h2>Game of Thrones</h2>								
								<p><b>Condition:</b> New</p>
								<p><b>Location:</b> New</p>
								<p><b>Date Posted:</b> New</p>
								<p><b>Category:</b> New</p>
								<p>Ad ID: 1089772</p>								
							</div><!--/product-information-->
						</div>
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