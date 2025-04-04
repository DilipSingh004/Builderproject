<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
}

.about-section {
  padding: 50px;
  text-align: center;
  background-color: #720026;
  color: white;
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}
.footer .btn.btn-social {
	margin-right: 5px;
	width: 35px;
	height: 35px;
	display: flex;
	align-items: center;
	justify-content: center;
	color: var(--light);
	border: 1px solid rgba(255, 255, 255, 0.5);
	border-radius: 35px;
	transition: .3s;
}

.footer .btn.btn-social:hover {
	color: var(--primary);
	border-color: var(--light);
}

.footer .btn.btn-link {
	display: block;
	margin-bottom: 5px;
	padding: 0;
	text-align: left;
	font-size: 15px;
	font-weight: normal;
	text-transform: capitalize;
	transition: .3s;
}
.footer .btn.btn-link::before {
	position: relative;
	content: "\f105";
	font-family: "Font Awesome 5 Free";
	font-weight: 900;
	margin-right: 10px;
}

.footer .btn.btn-link:hover {
	letter-spacing: 1px;
	box-shadow: none;4266
}

.footer .form-control {
	border-color: rgba(255, 255, 255, 0.5);
}

.footer .copyright {
	padding: 25px 0;
	font-size: 15px;
	border-top: 1px solid rgba(256, 256, 256, .1);
}

.footer .copyright a {
	color: var(--light);
}

.footer .footer-menu a {
	margin-right: 15px;
	padding-right: 15px;
	border-right: 1px solid rgba(255, 255, 255, .1);
}

.footer .footer-menu a:last-child {
	margin-right: 0;
	padding-right: 0;
	border-right: none;
}
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
<h1></h1>
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
<div class="about-section">
  <h1>About Us Page</h1>
  <p>Some text about who we are and what we do.</p>
  <p>Resize the browser window to see that this page is responsive by the way.</p>
</div>

<h2 style="text-align:center">Our Team</h2>
<div class="row">
  <div class="column">
    <div class="card">
      <img src="img1/DM1.jpg" alt="Jane" style="width:100%; height: 350px">
      <div class="container">
        <h2>Ms.Dharti Narwani</h2>
        <p class="title">CEO & Founder</p>
        <p>...................................</p>
        <p>dharti@gmail.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>
  <div class="column">
    <div class="card">
      <img src="img/arjun.jpg" alt="John" style="width:100%; height: 350px">
      <div class="container">
        <h2>Mr.Arjun Sheth</h2>
        <p class="title">Vice President</p>
        <p>...................................................</p>
        <p>arjun@gmail.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>
  <div class="column">
    <div class="card">
      <img src="img1/HM.jpg" alt="Mike" style="width:100%; height: 350px">
      <div class="container">
        <h2>Mr.Himanshu Thakur</h2>
        <p class="title">Art Director</p>
        <p>...................................</p>
        <p>himanshu@gmail.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="img1/NM.jpg" alt="John" style="width:100%; height: 350px">
      <div class="container">
        <h2>Ms.Nehal Naik</h2>
        <p class="title">Designer</p>
        <p>...................................................</p>
        <p>nehal@gmail.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>
  <div class="column">
    <div class="card">
      <img src="img1/bj1.jpg" alt="John" style="width:100%; height: 350px">
      <div class="container">
        <h2>Mr.Brijesh Yadav</h2>
        <p class="title">IT Support</p>
        <p>...................................................</p>
        <p>brijesh@gmail.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="img1/mk.jpg" alt="John" style="width:100%; height: 350px">
      <div class="container">
        <h2>Mr.Makesh Kumar</h2>
        <p class="title">FINANCER</p>
        <p>...................................................</p>
        <p>mk.666@gmail.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>
</div>

<!-- Footer Start -->
	<div
		class="container-fluid bg-transparent text-black footer pt-1 mt-1 wow fadeIn"
		data-wow-delay="0.1s">
		<div class="container py-5">
			<div class="row g-5">
				<div class="col-lg-3 col-md-6">
					<h5 class="text-black mb-4">Get In Touch</h5>
					<p class="mb-2">
						<i class="fa fa-map-marker-alt me-3"></i>AGRIPADA MUMBAI(E) INDIA
					</p>
					<p class="mb-2">
						<i class="fa fa-phone-alt me-3"></i>+022 345 67890
					</p>
					<p class="mb-2">
						<i class="fa fa-envelope me-3"></i>GAMANBuilders@gmail.com
					</p>
					<div class="d-flex pt-2">
						<a class="btn btn-outline-light btn-social" href=""><i
							class="fab fa-twitter"></i></a> <a
							class="btn btn-outline-light btn-social" href=""><i
							class="fab fa-facebook-f"></i></a> <a
							class="btn btn-outline-light btn-social" href=""><i
							class="fab fa-youtube"></i></a> <a
							class="btn btn-outline-light btn-social" href=""><i
							class="fab fa-linkedin-in"></i></a>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<h5 class="text-black mb-4">Quick Links</h5>
					<a class="btn btn-link text-black" href="">About Us</a> <a
						class="btn btn-link text-black" href="contact.jsp">Contact Us</a> <a
						class="btn btn-link text-black" href="">Our Services</a> <a
						class="btn btn-link text-black" href="">Privacy Policy</a> <a
						class="btn btn-link text-black" href="">Terms & Condition</a>
				</div>
				<div class="col-lg-3 col-md-6">
					<h5 class="text-black mb-4">Photo Gallery</h5>
					<div class="row g-2 pt-2">
						<div class="col-2">
							<img class="img-fluid rounded bg-light p-1"
								src="img/aman.jpg" alt="">
						</div>
						<div class="col-2">
							<img class="img-fluid rounded bg-light p-1"
								src="img/arjun.jpg" alt="">
						</div>
						<div class="col-2">
							<img class="img-fluid rounded bg-light p-1"
								src="img/aman.jpg" alt="">
						</div>
						<div class="col-2">
							<img class="img-fluid rounded bg-light p-1"
								src="img/arjun.jpg" alt="">
						</div>
						<div class="col-2">
							<img class="img-fluid rounded bg-light p-1"
								src="img/property-5.jpg" alt="">
						</div>
						<div class="col-">
							<img class="img-fluid rounded bg-light p-1"
								src="img/property-6.jpg" alt="">
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-5">
					<h5 class="text-black mb-4">Newsletter</h5>
					<p>Most properties hold current or potential monetary value and are therefore considered to be assets.</p>
					<div class="position-relative mx-auto" style="max-width: 450px;">
						<input class="form-control bg-transparent w-100 py-3 ps-4 pe-5"
							type="text" placeholder="Your email">
						<button type="button"
							class="btn btn-outline-dark py-2 position-absolute top-0 end-0 mt-2 me-2">SignUp</button>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="copyright">
				<div class="row">
					<div class="col-md-5 text-center text-md-start mb-3 mb-md-0">
						<a class="border-bottom" href="#">GAMAN INDUSTRIES</a>, All Right
						Reserved.


					</div>
					<div class="col-md-6 text-center text-md-end">
						<div class="footer-menu">
							<a href="">Home</a> <a href="">Cookies</a> <a href="">Help</a> <a
								href="">FQAs</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>