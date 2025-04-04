<%@page import="com.entity.upcome"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DAOimpl"%>
<%@page import="com.DAO.DAOconnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Upcoming Project</title>
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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
	integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<style>
body {
	 background-color: #FAF9F6; 
	margin: 0px;
	min-height: 100vh;
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center;
	font-family: serif;
}

.cat-item div {
	background: #FFFFFF;
	border: 1px dashed rgba(0, 185, 142, .3);
	transition: .5s;
}

.cat-item:hover div {
	background: var(--primary);
	border-color: transparent;
}

.cat-item div * {
	transition: .5s;
}

.cat-item:hover div * {
	color: black !important;
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

a {
	color: #00b383;
}
.card {
	height: 300px;
	width: 150px;
	padding: 20px
}

.box {
	display: flex;
	align-items: center;
	margin-left: 70px;
	margin-right: 320px
}

.box1 {
	display: flex;
	align-items: center;
	margin-left: 70px;
	margin-right: 360px;
	margin-top: 15px
}

.box-group {
	display: flex;
	align-items: center;
	padding: 10px;
	margin-top: 15px
}

i {
	font-size: 25px
}

h3 {
	padding-top: 13px;
	padding-left: 10px
}
.kc{
height: 300px;
width: 40px;
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
<body>
	<div><%@include file="nav.jsp"%></div>

	<!-- Category Start -->
	<%
			DAOconnect dao = new DAOconnect(DAOimpl.getConnection());
			List<upcome> list = dao.getupcome();
			for (upcome w : list) {
			%>
	<div class="container-xxl py-5">
		<div class="container">
			<div class="text-center mx-auto mb-5 wow fadeInUp"
				data-wow-delay="0.1s" style="max-width: 600px;">
				<h1 class="mb-3">Upcoming Project  <%=w.getProjectid() %></h1>
				<p><%=w.getLandmark()%>,&emsp; <%=w.getAdd()%>)</p>
				<p>DIVERSE WORKPLACE</p>
			</div>
			<br> <br>
			<div class="row g-0">
				<div class="col-md-8">
					<div class="card-body ">
						<h1><%=w.getProject()%></h1>
						<h5 class="card-title"><%=w.getLandmark()%></h5>
						<p class="card-text m-0 mt-3"><%=w.getDics()%></p>
					</div>
				</div>
				<div class="col-md-4">
					<img src="img/<%=w.getImg1()%>" class="img-fluid rounded-start rounded-end"
						alt="...">
				</div>
			</div>
		</div>
	</div>

	<div class="card-group">
		<div class="card">
			<img src="img/<%=w.getImg2()%>" class="kc card-img-top" alt="...">
			<div class="card-body">
				<h6 class="card-title">Living Room</h6>
			</div>
		</div>
		<div class="card">
			<img src="img/<%=w.getImg3()%>" class="kc card-img-top" alt="...">
			<div class="card-body">
				<h6 class="card-title">Kitchen</h6>
			</div>
		</div>
		<div class="card">
			<img src="img/<%=w.getImg4()%>" class="kc card-img-top" alt="...">
			<div class="card-body">
				<h6 class="card-title">Bedroom</h6>
			</div>
		</div>
		<div class="card">
			<img src="img/<%=w.getImg5()%>" class="kc card-img-top" alt="...">
			<div class="card-body">
				<h6 class="card-title">Bathroom</h6>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<div class="card-body">
		<h3 style="margin-left: 50px">AMINITIES</h3>
		<div class="box-group">
			<div class="box1">
				<i class="fa-solid fa-person-walking"></i>
				<h3>Jogging</h3>
			</div>
			<div class="box1">
				<i class="fa-solid fa-person-swimming"></i>
				<h3>Swimming</h3>
			</div>
			<div class="box1" style="margin-left: 30px">
				<i class="fa-solid fa-dumbbell"></i>
				<h3>Gymnasium</h3>
			</div>
		</div>
		<br>
		<div class="box-group">
			<div class="box">
				<i class="fa-solid fa-house"></i>
				<h3>ClubHouse</h3>
			</div>
			<div class="box">
				<i class="fa-solid fa-martini-glass-citrus"></i>
				<h3>PartyHouse</h3>
			</div>
			<div class="box" style="margin-left: 50px">
				<i class="fa-solid fa-droplet"></i>
				<h3>WaterFeatures</h3>
			</div>
		</div>
	</div>
	<div class="card-body1" style="margin-top: 80px">
	<h2 style="margin-left: 50px">BLUEPRINT</h2>
	<img src="img/<%=w.getImg6()%>" style="width: 90%; height: 700px; margin: 50px">
	</div>
	<%
			}
	%>
		</marquee>
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