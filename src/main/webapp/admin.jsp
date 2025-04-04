<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Main</title>
 <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script> 
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
	integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<style type="text/css">
body {
	
	margin: 0px;
	
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center;
	font-family: serif;
}

main {
	margin-top: 60px;
	background: #f1f5f9;
	min-height: 91.8vh;
	padding: 1rem 3rem;
}
</style>
</head>
<body>	
<%@include file="nav1.jsp" %>
<div class="main-content">
<main>
	<!-- Header start -->
	<div class="container-fluid header p-0" id="main">
		<div
			class="row g-0 align-items-center flex-column-reverse flex-md-row">
			<div class="col-md-6 p-5 mt-lg-5">
				<h1 class="display-5 animated fadeIn mb-4">
					<span class="text-secondary">WELCOME ADMIN</span> 
				</h1><h1>To Live Your Dream Build Your Own Dream</h1>

				<p class="animated fadeIn mb-4 pb-2"></p>
				<a href="" class="btn btn-dark py-3 px-5 me-3 animated fadeIn">Get
					Started</a>
			</div>
		</div>
	</div>
<div><%@include file="footer.jsp" %></div>
</main>
</div>
</html>