<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
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

.center {
	margin-top: 200px;
}

.wrapper {
	position: relative;
	width: 400px;
	height: 440px;
	background: #FAF9F6;
	border: 2px solid black;
	border-radius: 20px;
	backdrop-filter: blur(20px);
	box-shadow: 0 0 30px;
	overflow: hidden;
}

.wrapper .icon-close {
	position: absolute;
	top: 0;
	right: 0;
	width: 45px;
	height: 45px;
	font-size: 20px;
	display: flex;
	justify-content: center;
	align-items: center;
	border-bottom-left-radius: 20px;
	cursor: pointer;
	z-index: 1;
}

.wrapper .icon-close:hover {
	background: #00b383;
}

.wrapper .form-box {
	width: 100%;
	padding: 10px;
}

.input-box {
	position: relative;
	width: 80%;
	height: 40px;
	border-bottom: 2px solid black;
	margin: 5px
}

.input-box label {
	position: absolute;
	top: 40px;
	left: 40px;
	transform: translateY(-50px);
	font-size: 1em;
	color: black;
	font-weight: 500;
	pointer-events: none;
}

.input-box input {
	width: 82%;
	height: 100%;
	background: transparent;
	border: none;
	outline: none;
	color: black;
}

.input-box .icon {
	position: absolute;
	right: 8px;
	bottom: 1px;
	font-size: 1.2em;
	color: black;
	line-height: 57px;
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

.forgot-password {
	color: black;
}

.forgot-password:hover {
	color: black;
}

.remember-forget {
	font-size: .9em;
	color: black;
	font-weight: 500;
	margin: -15px 0 15px;
	display: flex;
	margin-left: 40px;
	margin-right: 20%;
}

.remember-forget {
	accent-color: #162938;
	margin-right: 3px;
}

.remember-forget {
	color: black;
	text-decoration: none;
}

.remember-forget a:hover {
	text-decoration: underline;
}

.login {
	width: 80%;
	height: 45px;
	border-radius: 6px;
	border: 1px solid;
	cursor: pointer;
	font-size: 1em;
	font-weight: 500;
	color: black;
}

.login:hover {
	border: 2px;
	border-style: solid;
	color: white;
	font-size: 16;
	background-color: #00b383;
}

.register-link {
	color: black;
}

.register-link:hover {
	color: #00b383;
}

.h:hover {
	color: white;
}

.h {
	color: black;
}

h2 {
	color: black;
}

.login-register {
	color: black;
}
</style>
<script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>
</head>
<body>
	<div><%@include file="nav.jsp"%></div>
	<br>
	<br>
	<br>
	<center>
		<div class="wrapper">
			<br> <br>
			<div>
				<a href="index.jsp" class="h"><span class="icon-close"><ion-icon
							name="close"></ion-icon></span></a>
			</div>
			<div class="form-box">
				<h2>LOGIN</h2>
				<form action="loginserv" method="post">
					<br> <br>
					<div class="input-box">
						<span class="icon"><ion-icon name="mail"></ion-icon></span> <input
							type="email" name="email" id="email" placeholder="Email" required>
					</div>
					<br>

					<div class="input-box">
						<span class="icon" style="margin-left: 4px"><ion-icon
								name="lock"></ion-icon></span> <input type="password"
							placeholder="Password" name="pass" id="pass" required>
					</div>
					<br>
					<div class="remember-forget">
						<label><input type="checkbox">Remember me</label>
						&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; <a
							href="forgotpass.jsp" class="forgot-password">Forget
							password?</a>
					</div>
					<button class="login" type="submit" onclick="login()">Login</button>
					<br>
					<div class="login-register">
						<p>
							Don't have an account!!?<a href="register.jsp"
								class="register-link">Register</a>
						</p>
					</div>
				</form>
			</div>
		</div>
	</center>

</body>
</html>