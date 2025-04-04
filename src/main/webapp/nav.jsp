<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
.navbar {
	background-color: white;
	height: 70px;
	margin: 0px;
	border-radius: 16px;
	padding: 0.5rem;
	position: fixed;
}

.navbar a::after {
	content: '';
	position: absolute;
	left: 0;
	bottom: -6px;
	width: 100%;
	height: 3px;
	background: black;
	border-radius: 5px;
	transform: scaleX(0);
	transition: transform .5s;
}

.navbar a:hover::after {
	transform: scaleX(1);
}

.login-button {
	background-color: #720026;
	color: #fff;
	font-size: 14px;
	padding: 8px 20px;
	border-radius: 50px;
	text-decoration: none;
	transition: 0.3s background-color;
	font-weight: bolder;
}

.login-button:hover {
	background-color: black;
}

.login-button2 {
	background-color: #720026;
	color: #fff;
	font-size: 14px;
	padding: 8px 20px;
	border-radius: 50px;
	text-decoration: none;
	transition: 0.3s background-color;
	font-weight: bolder;
}

.login-button2:hover {
	background-color: black;
}

.navbar-brand {
	font-weight: 500;
	color: #720026;
	font-size: 24px;
	transition: 0.3s color;
}

.navbar-toggler {
	border: none;
	font-size: 1.25rem;
}

.navbar-toggler:focus, .btn-close:focus {
	box-shadow: none;
	outline: none;
}

.nav-link {
	color: #720026;
	position: relative;
	font-weight: bolder;
	font-size: 16px;
}

.nav-link:hover, .nav-link:active {
	color: black;
}

.navbar .dropdown-toggle::after {
	border: none;
	content: "\f107";
	font-family: "Font Awesome 5 Free";
	font-weight: 900;
	vertical-align: middle;
	margin-left: 5px;
	transition: .5s;
}

.navbar .dropdown-toggle[aria-expanded=true]::after {
	transform: rotate(-180deg);
}

.navbar-light .navbar-nav .nav-link {
	margin-right: 30px;
	padding: 25px 0;
	color: black;
	font-size: 15px;
	text-transform: uppercase;
	outline: none;
}

.navbar .dropdown-toggle::after {
	border: none;
	content: "\f107";
	font-family: "Font Awesome 5 Free";
	font-weight: 900;
	vertical-align: middle;
	margin-left: 5px;
	transition: .5s;
}

.navbar .dropdown-toggle[aria-expanded=true]::after {
	transform: rotate(-180deg);
}

.navbar-light .navbar-nav .nav-link {
	margin-right: 30px;
	padding: 25px 0;
	color: black;
	font-size: 15px;
	text-transform: uppercase;
	outline: none;
}
</style>
</head>
<body>
	<iframe height="80px" width="99.8%"></iframe>
	<nav class="navbar navbar-expand-lg fixed-top">
		<div class="container-fluid">
			<img src="img/LOGO2.png" style="width: 80px; height: 50px;" /> <a
				class="navbar-brand me-auto" href="index.jsp">GAMAN BUILDERS</a>
			<div class="offcanvas offcanvas-end" tabindex="-1"
				id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
				<div class="offcanvas-header">
					<h5 class="offcanvas-title" id="offcanvasNavbarLabel">GAMAN
						BUILDERS</h5>
					<button type="button" class="btn-close" data-bs-dismiss="offcanvas"
						aria-label="Close"></button>
				</div>
				<div class="offcanvas-body">
					<ul class="navbar-nav justify-content-center flex-grow-1 pe-3">
						<li class="nav-item"><a class="nav-link mx-lg-2 "
							aria-current="page" href="index.jsp">Main</a></li>
						<li class="nav-item"><a class="nav-link mx-lg-2"
							href="homes.jsp">Homes</a></li>
						<li class="nav-item"><a class="nav-link mx-lg-2"
							href="property-types.jsp">Property Type</a></li>
							<li class="nav-item"><a class="nav-link mx-lg-2"
							href="upcoming.jsp">Upcoming Project</a></li>
						<li class="nav-item"><a class="nav-link mx-lg-2"
							href="property-agents.jsp">Agent</a></li>
						<li class="nav-item"><a class="nav-link mx-lg-2"
							href="contacts.jsp">contact</a></li>
							<li class="nav-item"><a class="nav-link mx-lg-2"
							href="new.jsp">About Us</a></li>
							<c:if test="${not empty userobj }">
							<li class="nav-item"><a class="nav-link mx-lg-2"
							href="appo.jsp">Appointment</a></li></c:if>
							<c:if test="${empty userobj }">
							<li class="nav-item"><a class="nav-link mx-lg-2"
							href="login.jsp"></a></li></c:if>
					</ul>
				</div>
			</div>
			<c:if test="${not empty userobj}">
				<a href="#" class="login-button">${userobj.name}</a>
				<a href="log" class="login-button2" style="margin-left: 10px;">Logout</a>
			</c:if>
			<c:if test="${empty userobj}">
				<a href="login.jsp" class="login-button">Login</a>
			</c:if>
			<button class="navbar-toggler pe-0" type="button"
				data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar"
				aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
		</div>
	</nav>
	<script>
	document.querySelectorAll(".nav-link").forEach((link) => {
	    if (link.href === window.location.href) {
	        link.classList.add("active");
	        link.setAttribute("aria-current", "page");
	    }
	});
	</script>
</body>
</html>
