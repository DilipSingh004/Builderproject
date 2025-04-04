<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact</title>
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
</style>
</head>
<body>
	<div><%@include file="nav.jsp"%></div>
	<!-- Contact Start -->
	<div class="container-xxl py-5">
		<div class="container">
			<div class="text-center mx-auto mb-5 wow fadeInUp"
				data-wow-delay="0.1s" style="max-width: 600px;">
				<h1 class="mb-3">Contact Us</h1>
				<p>For Housing Related More Enquiry</p>
			</div>
			<div class="row g-4">
				<div class="col-12">
					<div class="row gy-4">
						<div class="col-md-6 col-lg-4 wow fadeIn" data-wow-delay="0.1s">
							<div class="bg-light rounded p-3">
								<div class="d-flex align-items-center bg-white rounded p-3"
									style="border: 1px dashed rgba(0, 185, 142, .3)">
									<div class="icon me-3" style="width: 45px; height: 45px;">
										<i class="fa fa-map-marker-alt text-primary"></i>
									</div>
									<span>AGRIPADA MUMBAI(E) INDIA</span>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-lg-4 wow fadeIn" data-wow-delay="0.3s">
							<div class="bg-light rounded p-3">
								<div class="d-flex align-items-center bg-white rounded p-3"
									style="border: 1px dashed rgba(0, 185, 142, .3)">
									<div class="icon me-3" style="width: 45px; height: 45px;">
										<i class="fa fa-envelope-open text-primary"></i>
									</div>
									<span>GAMANBuilders@gmail.com</span>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-lg-4 wow fadeIn" data-wow-delay="0.5s">
							<div class="bg-light rounded p-3">
								<div class="d-flex align-items-center bg-white rounded p-3"
									style="border: 1px dashed rgba(0, 185, 142, .3)">
									<div class="icon me-3" style="width: 45px; height: 45px;">
										<i class="fa fa-phone-alt text-primary"></i>
									</div>
									<span>+022 345 6789</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 wow fadeInUp" data-wow-delay="0.1s">
					<iframe class="position-relative rounded w-100 h-100"
						src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7545.979234963719!2d72.82087309120521!3d18.976065928831876!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7ce680f565cc5%3A0x5090677704145ae3!2sAgripada%2C%20Mumbai%2C%20Maharashtra!5e0!3m2!1sen!2sin!4v1721638831461!5m2!1sen!2sin"
						frameborder="0"
						style="min-height: 300px; min-width: 600px; margin-left: 17px; border: 0;"
						allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
				</div>
				<div class="col-md-6">
					<div class="wow fadeInUp" data-wow-delay="0.5s">

						<form action="https://api.web3forms.com/submit" method="POST">
						 <input type="hidden" name="access_key" value="8f5adbe7-86e0-43d0-906b-b658a0d9d102">
						 <input type="hidden" name="from_name" value="GAMAN BUILDERS">
							<div class="row g-3">
								<div class="col-md-6">
									<div class="form-floating">
										<input type="text" class="form-control" id="name"
											placeholder="Your Name" name="name" required="required"> <label for="name">Your
											Name</label>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-floating">
										<input type="email" class="form-control" id="email"
											placeholder="Your Email" name="email" required="required"> <label for="email">Your
											Email</label>
									</div>
								</div>
								<div class="col-12">
									<div class="form-floating">
										<input type="text" class="form-control" id="subject"
											placeholder="Subject" name="subject" required="required"> <label for="subject">Subject</label>
									</div>
								</div>
								<div class="col-12">
									<div class="form-floating">
										<textarea class="form-control"
											placeholder="Leave a message here" id="message"
											style="height: 150px" name="message" required="required"></textarea>
										<label for="message">Message</label>
									</div>
								</div>
								<div class="col-12">
									<button class="btn btn-outline-dark w-100 py-3" type="submit">Send
										Message</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Contact End -->
</body>
</html>