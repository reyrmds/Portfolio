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
    <title>Register | Cheaper-BOOKS</title>
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
	
	<section><!--form-->
		<div class="container">
			<div class="row" style="padding-left:300px;">
				<div class="col-sm-6 col-sm-offset-1">
					<div class="login-form"><!--login form-->
						<h2>Register your account</h2>
						<form:form action="/cheaperbooks/register/submit" method="post" modelAttribute="users">
							<form:input type="text" path="name" placeholder="Name" />
							<form:input type="email" path="email" placeholder="Email" />
							<form:input type="number" path="contact" placeholder="Mobile Number" />
							<form:input type="password" path="password" placeholder="Password" />						
							<button type="submit" class="btn btn-default">Register</button>
						</form:form>
					</div><!--/login form-->
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