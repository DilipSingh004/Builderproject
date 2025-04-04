<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Propety-Type</title>
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
</head>
<style>
body {
 background-color:#FAF9F6;	margin: 0px;
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
a{
color:#00b383; 
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
h6,span{
text-decoration: none;
color: black;
font-weight: bolder;
}
</style>
</head>
<body>
<div><%@include file="nav.jsp" %></div>

	<!-- Category Start -->
	<div class="container-xxl py-5">
		<div class="container">
			<div class="text-center mx-auto mb-5 wow fadeInUp"
				data-wow-delay="0.1s" style="max-width: 600px;">
				<h1 class="mb-3">Property Types</h1>
				<p>Most properties hold current or potential monetary value and are therefore considered to be assets.</p>
			</div>
			<div class="row g-4">
				<div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.1s">
					<a class="cat-item d-block bg-light text-center rounded p-3"
						href="">
						<div class="rounded p-4">
							<div class="icon mb-3">

								<img class="img-fluid" src="img/icon-apartment.png" alt="Icon">
							</div>
							<h6>Apartment</h6>
							<span>123 Properties</span>
						</div>
					</a>
				</div>
				<div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.3s">
					<a class="cat-item d-block bg-light text-center rounded p-3"
						href="">
						<div class="rounded p-4">
							<div class="icon mb-3">
								<img class="img-fluid" src="img/villa.png" alt="Icon">
							</div>
							<h6>Villa</h6>
							<span>123 Properties</span>
						</div>
					</a>
				</div>
				<div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.5s">
					<a class="cat-item d-block bg-light text-center rounded p-3"
						href="">
						<div class="rounded p-4">
							<div class="icon mb-3">
								<img class="img-fluid" src="img/house.png" alt="Icon">
							</div>
							<h6>Home</h6>
							<span>123 Properties</span>
						</div>
					</a>
				</div>
				<div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.7s">
					<a class="cat-item d-block bg-light text-center rounded p-3"
						href="">
						<div class="rounded p-4">
							<div class="icon mb-3">
								<img class="img-fluid" src="img/office-building.png" alt="Icon">
							</div>
							<h6>Office</h6>
							<span>123 Properties</span>
						</div>
					</a>
				</div>
				<div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.1s">
					<a class="cat-item d-block bg-light text-center rounded p-3"
						href="">
						<div class="rounded p-4">
							<div class="icon mb-3">
								<img class="img-fluid" src="img/skyline.png" alt="Icon">
							</div>
							<h6>Building</h6>
							<span>123 Properties</span>
						</div>
					</a>
				</div>
				<div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.3s">
					<a class="cat-item d-block bg-light text-center rounded p-3"
						href="">
						<div class="rounded p-4">
							<div class="icon mb-3">
								<img class="img-fluid" src="img/house.png" alt="Icon">
							</div>
							<h6>Townhouse</h6>
							<span>123 Properties</span>
						</div>
					</a>
				</div>
				<div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.5s">
					<a class="cat-item d-block bg-light text-center rounded p-3"
						href="">
						<div class="rounded p-4">
							<div class="icon mb-3">
								<img class="img-fluid" src="img/shop.png" alt="Icon">
							</div>
							<h6>Shop</h6>
							<span>123 Properties</span>
						</div>
					</a>
				</div>
				<div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.7s">
					<a class="cat-item d-block bg-light text-center rounded p-3"
						href="">
						<div class="rounded p-4">
							<div class="icon mb-3">
								<img class="img-fluid" src="img/garage.png" alt="Icon">
							</div>
							<h6>Garage</h6>
							<span>123 Properties</span>
						</div>
					</a>
				</div>
			</div>
		</div>
	</div>
	<!-- Category End -->
		
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