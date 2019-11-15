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
    <title>Sell your book now | Cheaper-BOOKS</title>
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
	
	
	
	<section><!--form-->
		<div class="container">
			<div class="row" style="padding-left:200px;">
				<div class="col-sm-8 col-sm-offset-1">
	    			<div class="contact-form">
	    			
	    			<form:form class="form-horizontal"   action="/cheaperbooks/ad-post/submit" method="post" modelAttribute="ads">
	    				<h3>Add Photos</h3>
	    				

						<form:input type="file" id="upload" path="image" style="visibility: hidden; width: 1px; height: 1px"/>
						<a href="" onclick="document.getElementById('upload').click(); return false">
						<img src="<c:url value="/resources/images/cart/upload.PNG"/>" alt="" /></a>
						
						<h3>Book Details</h3>
	    				<div class="status alert alert-success" style="display: none"></div>
				    	
				            <fieldset>
					            <div class="form-group col-md-12">
					                <form:input type="text" path="title" class="form-control" required="required" placeholder="Title"/>
					            </div>
					            <div class="form-group col-md-12">
					                <form:input type="text" path="category" class="form-control" required="required" placeholder="Book Category"/>
					            </div>
					            <div class="form-group col-md-12">
					                <form:textarea path="description" id="message" required="required" class="form-control" rows="8" placeholder="Description"></form:textarea>
					            </div>  
				            </fieldset>
				           
				            <fieldset>
					            <c:forEach var="e" items="${userinfo}">
					            <form:input id="id" path="userid" class="form-control" type="hidden" value="${e.userid }"/>
					            <h3>Seller Details</h3>
					            <div class="seller">
						            <div class="form-group col-md-12">
						            	<label for="number">Mobile Number</label>
						                <input id="contact" name="contact" class="form-control" value="${e.contact}">
						            </div>
						            <div class="form-group col-md-12">
						            	<label for="name">Name</label>
						                <input id="name" name="name" class="form-control"  value="${e.name }">
						            </div>
						            <div class="form-group col-md-12">
						            	<label for="email">E-mail</label>
						                <input id="email" name="email" class="form-control" value="${e.email }">
						            </div> 
						         </div>					         
						         </c:forEach>
				            </fieldset>
			         
				            <fieldset>						                             
					            <div class="form-group col-md-12">
					            	<label>By submitting this ad, I agree to Cheaper-BOOKS Terms and Conditions</label>
					            	<br></br>
					                <input type="submit" name="submit" class="btn btn-primary pull-right" value="Submit your book now">
					            </div>
				            </fieldset>   			             
				        </form:form>
	    			</div>
	    		</div>
				
			</div>
		</div>
	</section><!--/form-->
	
	<br></br>
	<%@include file="includes/footer.jsp" %>
  	<script type="text/javascript" src="<c:url value="/resources/js/jquery.js"/>"> </script>
	<script type="text/javascript" src="<c:url value="/resources/js/jquery.scrollUp.min.js"/>"> </script>
    <script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js"/>"> </script>  
    <script type="text/javascript" src="<c:url value="/resources/js/jquery.prettyPhoto.js"/>"> </script>
    <script type="text/javascript" src="<c:url value="/resources/js/main.js"/>"> </script>
    <script type="text/javascript" src="<c:url value="/resources/js/price-range.js"/>"> </script>
    
</body>
</html>