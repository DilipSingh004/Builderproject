<%@page import="com.entity.house"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DAOimpl"%>
<%@page import="com.DAO.DAOconnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Building</title>
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
	background-color: #FAF9F6; 
	margin: 0px;
	min-height: 100vh;
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center;
	font-family: serif;
}

.wrapper {
	position: relative;
	width: 400px;
	height: 440px;
	background: transparent;
	border: 2px solid black;
	border-radius: 20px;
	backdrop-filter: blur(20px);
	box-shadow: 0 0 30px
}

.wrapper .form-box {
	width: 100%;
	padding: 40px;
}

.nav-pills .nav-item .btn {
	color: var(--dark);
}

.nav-pills .nav-item .btn:hover, .nav-pills .nav-item .btn.active {
	color: #FFFFFF;
}

.property-item {
	box-shadow: 0 0 30px rgba(0, 0, 0, .08);
}

.property-item img {
	transition: .5s;
}

.property-item:hover img {
	transform: scale(1.1);
}

.property-item .border-top {
	border-top: 1px dashed rgba(0, 185, 142, .3) !important;
}

.property-item .border-end {
	border-right: 1px dashed rgba(0, 185, 142, .3) !important;
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

.fa{
	color:#720026;
	font-weight: bolder;
}
h5,p{
	color:black;
	font-weight: bolder;
}
.d-block {
	color: black;
	font-weight: bolder;
}

.flex-fill {
	color: black;
	font-weight: 20px;
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
	box-shadow: none;
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

</style>
</head>
<div><%@include file="nav.jsp"%></div>

<!-- Property List Start -->
<div class="container-xl py-3">
	<div class="container">
		<div class="row g-0 gx-5 align-items-end">
			<div class="col-lg-6">
				<div class="text-start mx-auto mb-5 wow slideInLeft"
					data-wow-delay="0.1s">
					<h1 class="mb-3">Property Listing</h1>
				</div>
			</div>
			
		</div></div>
		<div class="tab-content">
			<div id="tab-1" class="tab-pane fade show p-0  active">
				<div class="row  g-4">
					<%
					DAOconnect dao = new DAOconnect(DAOimpl.getConnection());
					List<house> list = dao.getHouse();
					for (house hd : list) {
					%>
					<div class="col-lg-3 col-md-6  wow fadeInUp" data-wow-delay="0.1s">
						<div class="property-item rounded bg-light overflow-hidden">
							<div class="position-relative overflow-hidden">
								<a href="info.jsp?id=<%=hd.getId() %>"><img class="img-fluid"
									src="img/<%=hd.getpImage()%>" style="height: 260px" alt=""></a>
								
								<div
									class="bg-white rounded-top text-grey position-absolute start-0 bottom-0 mx-4 pt-1 px-3" style="color: #720026; font-weight: bolder;"><%=hd.getType()%></div>
							</div>
							<div class="p-4 pb-0">
								<h4 class="text-grey mb-3"style="color: #720026;  font-weight: bolder;">
									$<%=hd.getPrice()%></h4>
								<a class="d-block h5 mb-2" name="house"style="color: #720026; text-decoration: none" href=""><%=hd.getHouse()%></a>
								<p>
									<i class="fa fa-map-marker-alt text-grey me-2"style="color: #720026;" name="add"></i><%=hd.getAdd()%>
								</p>
							</div>
							<div class="d-flex border-top">
								<small class="flex-fill text-center border-end py-2"><i
									class="fa fa-ruler-combined text-grey me-2"style="color: #720026;" name="area"></i><%=hd.getArea()%></small>
								<small class="flex-fill text-center border-end py-2"><i
									class="fa fa-bed text-grey me-2"style="color: #720026;" name="bed"></i><%=hd.getBed()%>
									Bed</small> <small class="flex-fill text-center py-2"><i
									class="fa fa-bath text-grey me-2"style="color: #720026;" name="bath"></i><%=hd.getBath()%>
									Bath</small>
							</div>
						</div>
					</div>
					<%
					}
					%>
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
</html>