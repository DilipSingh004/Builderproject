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
<title>INFO</title>
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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
	integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@48,400,0,0" />
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
	padding-left: 5px
}

.container {
	max-width: 400px;
	width: 80%;
}

.slider-wrapper {
	position: relative;
}

.slider-wrapper .slide-button {
	position: absolute;
	top: 50%;
	outline: none;
	border: none;
	height: 50px;
	width: 50px;
	z-index: 5;
	color: #fff;
	display: flex;
	cursor: pointer;
	font-size: 2.2rem;
	background: #000;
	align-items: center;
	justify-content: center;
	border-radius: 50%;
	transform: translateY(-50%);
}

.slider-wrapper .slide-button:hover {
	background: #404040;
}

.slider-wrapper .slide-button#prev-slide {
	left: -25px;
	display: none;
}

.slider-wrapper .slide-button#next-slide {
	right: -25px;
}

.slider-wrapper .image-list {
	display: grid;
	grid-template-columns: repeat(10, 1fr);
	gap: 18px;
	font-size: 0;
	list-style: none;
	margin-bottom: 30px;
	overflow-x: auto;
	scrollbar-width: none;
}

.slider-wrapper .image-list::-webkit-scrollbar {
	display: none;
}

.slider-wrapper .image-list .image-item {
	width: 290px;
	height: 260px;
	object-fit: cover;
}

.container .slider-scrollbar {
	height: 19px;
	width: 100%;
	display: flex;
	align-items: center;
}

.slider-scrollbar .scrollbar-track {
	background: #ccc;
	width: 100%;
	height: 2px;
	display: flex;
	align-items: center;
	border-radius: 4px;
	position: relative;
}

.slider-scrollbar:hover .scrollbar-track {
	height: 4px;
}

.slider-scrollbar .scrollbar-thumb {
	position: absolute;
	background: #000;
	top: 0;
	bottom: 0;
	width: 50%;
	height: 100%;
	cursor: grab;
	border-radius: inherit;
}

.slider-scrollbar .scrollbar-thumb:active {
	cursor: grabbing;
	height: 8px;
	top: -2px;
}

.slider-scrollbar .scrollbar-thumb::after {
	content: "";
	position: absolute;
	left: 0;
	right: 0;
	top: -10px;
	bottom: -10px;
}

/* Styles for mobile and tablets */
@media only screen and (max-width: 1023px) {
	.slider-wrapper .slide-button {
		display: none !important;
	}
	.slider-wrapper .image-list {
		gap: 10px;
		margin-bottom: 15px;
		scroll-snap-type: x mandatory;
	}
	.slider-wrapper .image-list .image-item {
		width: 280px;
		height: 380px;
	}
	.slider-scrollbar .scrollbar-thumb {
		width: 20%;
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
<script src="script.js" defer></script>
</head>
<body>
	<div><%@include file="nav.jsp"%></div>

	<!-- Category Start -->
	<div class="container-xxl py-5">
		<div class="container">
			<div class="text-center mx-auto mb-5 wow fadeInUp"
				data-wow-delay="0.1s" style="max-width: 600px;">
				<%
				Integer id = Integer.parseInt(request.getParameter("id"));
				DAOconnect dao = new DAOconnect(DAOimpl.getConnection());
				house hd = dao.getHousebyId(id);
				%>
				<h1 class="mb-3"></h1>
				<h1><%=hd.getAdd()%></h1>
				<p>DIVERSE WORKPLACE</p>
			</div>
			<br> <br>
			<div class="row g-0">
				<div class="col-md-4 mt-1">
					<div class="card-body ">
						<h2><%=hd.getHouse()%></h2>
						<h4 class="card-title">City</h4>
						<p class="card-text m-0 mt-1 ">
						<h6>Address:</h6>
						<p><%=hd.getAdd()%></p>
						</p>
						<p class="card-text m-0 ">
						<h6>Landmark:</h6>
						<p><%=hd.getArea()%></p>
						</p>
						<p class="card-text m-0 ">
						<h6>Area Sqft:</h6>
						<p><%=hd.getLandmark()%></p>
						</p>
						<p class="card-text m-0 ">
						<h6>Price:</h6>
						<p>
							<i class="fa-solid fa-indian-rupee-sign" style="font-size: 15px"></i><%=hd.getPrice()%></p>
						</p>

					</div>

				</div>
				<div class="col-md-4">
					<div class="card-body ">
						<h1>&emsp;</h1>
						<h5 class="card-title">&emsp;</h5>
						<p class="card-text m-0 mt-1 ">
						<h6>Bath:</h6>
						<p><%=hd.getBath()%></p>
						</p>
						<p class="card-text m-0 ">
						<h6>Bed:</h6>
						<p><%=hd.getBed()%></p>
						</p>
						<p class="card-text m-0 ">
						<h6>Type:</h6>
						<p><%=hd.getType()%></p>
						</p>
					</div>

				</div>
				<div class="col-md-4">
					<img src="img/<%=hd.getpImage()%>"
						class="img-fluid rounded-start rounded-end" alt="...">
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="slider-wrapper">
			<button id="prev-slide" class="slide-button material-symbols-rounded">
				chevron_left</button>
			<ul class="image-list">
				<img class="image-item" src="img/h2.jpg" alt="img-1" />
				<img class="image-item" src="img/h10.jpg" alt="img-2" />
				<img class="image-item" src="img/h11.jpg" alt="img-3" />
				<img class="image-item" src="img/h5.jpg" alt="img-4" />
				<img class="image-item" src="img/h6.jpg" alt="img-5" />

			</ul>
			<button id="next-slide" class="slide-button material-symbols-rounded">
				chevron_right</button>
		</div>
		<div class="slider-scrollbar">
			<div class="scrollbar-track">
				<div class="scrollbar-thumb"></div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>


	<div class="card-body">
		<h3 style="margin-left: 50px">AMINITIES</h3>
		<div class="box-group">
			<div class="box1">
				<i class="fa-solid fa-person-walking"></i>
				<h3>Bedding</h3>
			</div>
			<div class="box1">
				<i class="fa-solid fa-person-swimming"></i>
				<h3>Baths</h3>
			</div>
			<div class="box1" style="margin-left: 30px">
				<i class="fa-solid fa-dumbbell"></i>
				<h3>Sauna</h3>
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
		<img src="img/blp.png" style="width: 90%; height: 700px; margin: 50px">
	</div>
	<br>
	<br>
	<br>
	<br>
	<div class="container">
		<c:if test="${not empty userobj }">
			<div>
				<a href="appointment.jsp"><input type="submit"
					class="btn btn-grey " style="background-color: #720026;color:white" value="Fix Appointment"></a>
			</div>
		</c:if>
		<c:if test="${empty userobj }">
			<div>
				<a href="login.jsp"><input type="submit" class="btn btn-grey "style="background-color: #720026;color:white"
					value="Fix Appointment"></a>
			</div>
		</c:if>
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