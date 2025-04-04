<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1,maximum-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script> 
	
	
<style type="text/css">
* {
	font-family: 'Poppins', sans-serif;
	margin: 0;
	text-decoration: none;
	list-style-type: none;
	box-sizing: border-box;
}
#sidebar-toggle {
	display: none;
}
.sidebar {
	height: 100%;
	width: 240px;
	position: fixed;
	left: 0;
	top: 0;
	z-index: 100;
	background:   #720026;
	color: #efefef;
	overflow-y: auto;
	transition: width 500ms;
}
.sidebar-header {
	display: flex;
	justify-content: space-between;
	align-items: center;
	height: 60px;
	padding: 0rem 1rem;
	margin-top: 18px;
}
.header1 {
    width: 100%;
    height: 100vh;
    background: #fff;
}
.nav-links {
    list-style: none;
    position: relative;
    margin-top: 50px;
    text-align: center;
}
.nav-links li {
padding:0px ;
}
.nav-links li a {
    color: #fff;
    text-decoration: none;
    padding: 5px 7px;
    display: flex;
    align-items: center;
}
.nav-links li a i {
    font-size: 20px;
    margin-right: 10px;
}
.active {
    background:  #fff;
    width: 100%;
    height: 47px;
    position: absolute;
    left: 0;
    top: 2.6%;
    z-index: -1;
    border-radius: 6px;
    box-shadow: 0 5px 10px rgba(255, 255, 255, 0.4);
    display: none;
    transition: top 0.5s;
}
.nav-links li:hover a {
    color: black;
    transition: 0.5s;
}
.nav-links li:hover~.active {
    display: block;
}
.nav-links li:nth-child(1):hover~.active {
    top: 2.4%;
}
.nav-links li:nth-child(2):hover~.active {
    top: 18.2%;
}
.nav-links li:nth-child(3):hover~.active {
    top: 35.8%;
    }
.nav-links li:nth-child(4):hover~.active {
    top: 52.4%;
}
.nav-links li:nth-child(5):hover~.active {
    top: 69%;
}
.nav-links li:nth-child(6):hover~.active {
    top: 85.6%;
}
 #sidebar-toggle:checked ~ .sidebar {
	width: 60px;
}
#sidebar-toggle:checked ~ .sidebar .sidebar-header h3 span,
	#sidebar-toggle:checked ~ .sidebar  li span:last-child {
	display: none;
}
#sidebar-toggle:checked ~ .sidebar .sidebar-header, #sidebar-toggle:checked 
	 ~ .sidebar i {
	display: flex;
	justify-content: center;
}
#sidebar-toggle:checked ~ .main-content {
	margin-left: 60px;
}
#sidebar-toggle:checked ~ .main-content header {
	left: 60px;
	width: calc(100% - 60px);
}
.main-content {
	position: relative;
	margin-left: 240px;
	transition: margin-left 500ms;
}
header {
	position: fixed;
	left: 240px;
	top: 0;
	z-index: 100;
	width: calc(100% - 240px);
	height: 60px;
	background: #fff;
	padding: 0rem 1rem;
	display: flex;
	align-items: center;
	justify-content: space-between;
	border-bottom: 1px solid #ccc;
	transition: left 500ms;
}
.search-wrapper {
	display: flex;
	align-items: center;	
}
.social-icons {
	display: flex;
	align-items: center;
}
.social-icons span, .social-icons div {
	margin-left: 1.2rem;
}
.social-icons img {
	height: 38px;
	width: 38px;
	background-size: cover;
	background-repeat: no-repeat;
	border-radius: 50%;
}
.search-wrapper input {
	border: 0;
	outline: 0;
	padding: 1rem;
	height: 38px;
}
p{
padding-top: 15px
}
</style>
</head>
<body>

	<input type="checkbox" id="sidebar-toggle">
	<div class="sidebar">
		<div class="sidebar-header">
			<h3 class="brand">
				<span class="ti-unlink"></span> <span>Welcome, Admin</span>
			</h3>
			<label for="sidebar-toggle" class="ti-menu-alt"></label>
		</div>
		
		<div class="side-nav">
			
			<ul class="nav-links">
				<li><a href="admin.jsp"><i class="fa-solid fa-user-tie"></i>
						<p>Admin</p>
				</a></li>
				<li><a href="addhouse.jsp"><i class="fa-solid fa-house"></i>
						<p>Add House</p>
				</a></li>
				<li><a href="addemployee.jsp"><i class="fa-regular fa-address-book"></i>
						<p>Add Employee</p>
				</a></li>
				<li><a href="upcome.jsp"> <i class="fa-solid fa-bars-progress"></i>
						<p>Upcoming Projects</p>
				</a></li>
				<li><a href="appointment1.jsp"> <i class="fa-solid fa-user-plus"></i>
						<p>Add Appointment</p>
				</a></li>
				<li><a href="token.jsp"><i class="fa-solid fa-calendar-check"></i>
						<p>Appointment</p>
				</a></li>
				<div class="active"></div>
			</ul>
		</div>
	
	</div>
	<div class="main-content">
		<header>
			<div class="search-wrapper">
				<!-- span class="ti-search"></span> <input type="search"
					placeholder="Search"> -->
			</div>
			<div class="social-icons">
				<span class="ti-bell"></span> <span class="ti-comment"
					style="margin-right: 1.2rem;"></span><a href="login.jsp"><img src="img/LOGO2.png" 
					alt="logo"></a>
			</div>
		</header>
	</div>
</body>
</html>
