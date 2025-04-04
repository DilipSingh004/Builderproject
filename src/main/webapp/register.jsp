<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
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
<script src="main.js"></script>
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
	width: 600px;
	height: 550px;
	background: transparent;
	border: 2px solid black;
	border-radius: 20px;
	backdrop-filter: blur(20px);
	box-shadow: 0 0 30px
}

.wrapper .form-box {
	width: 100%;
	padding: 10px;
}

.input-box {
	position: relative;
	width: 45%;
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
}

.input-box .icon {
	position: absolute;
	right: 30px;
	bottom: 1px;
}

.btn:hover {
	border: 2px;
	border-style: solid;
	border-color: black;
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
<script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>
</head>
<body>
	<div><%@include file="nav.jsp"%></div>
	<br>
	<br>
	<center>
		<div class="wrapper">
			<br> <br>
			<div class="form-box login">
				<h2>Register</h2>
				<form action="Signup" method="post">
					<br>
					<div class="input-box">
						<span class="icon"><ion-icon name="person"></ion-icon></span> <input
							type="text" name="name" id="name" placeholder="Full-Name"
							pattern="[A-Za-z\s]+" required>
					</div>

					<div class="input-box">
						<span class="icon"></span> <input type="date" id="date"
							name="date" placeholder="Date Of Birth" required>
					</div>

					<div class="input-box">
						<span class="icon"><ion-icon name="mail"></ion-icon></span> <input
							type="email" name="email" id="email" placeholder="Email" required>
					</div>

					<div class="input-box">
						<span class="icon" style="margin-left: 4px"><ion-icon
								name="lock"></ion-icon></span> <input type="password" name="pwd"
							placeholder="Password" id="pwd"
							pattern="(?m)^((?=.*\\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[\\W]).{8,})$"
							required>
					</div>

					<div class="input-box">
						<span class="icon" style="margin-left: 4px"><ion-icon
								name="lock"></ion-icon></span> <input type="password" name="repwd"
							placeholder="Re-Password" id="repwd"
							pattern="(?m)^((?=.*\\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[\\W]).{8,})$"
							required>
					</div>
					<br>

					<button class="btn" type="submit" class="btn" onclick="return showalert()">Register</button>

				</form>
			</div>
		</div>
	</center>
	<script>
		function showalert() {
			let name = document.getElementById("name").value;
			let email = document.getElementById("email").value;
			let phone = document.getElementById("phone").value;
			let pwd = document.getElementById("pwd").value;
			let repwd = document.getElementById("repwd").value;

			if (name === "" || email === "" || phone === "" || pwd === ""
					|| repwd === "") {
				alert("Fields cannot be empty..", 3000);
				return false;
			} else {
				alert("Registered Successfully", 3000);

			}
		}
	</script>
</body>
</html>
