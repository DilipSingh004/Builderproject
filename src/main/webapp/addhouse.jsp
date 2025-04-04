<%@page import="com.entity.house"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DAOimpl"%>
<%@page import="com.DAO.DAOconnect"%>
<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Main</title>
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

.search {
	align-content: center;
}

.table {
	margin-left: 20px;
	margin-right: 20px;
}

.t {
	background: #00b383;
	color: white;
	margin-left: 650px;
}

.s {
	width: 100px;
}
h1{text-align: center;}
.btn{color:white;}
</style>
</head>
<body>
	<%@include file="nav1.jsp"%>
	<div class="main-content">
<main>
<br>
<br>
<br>
<br>
	<c:if test="${not empty succMSG}">
		<p class="MSG">${succMSG}</p>
		<p class="MSG">${bidMSG }</p>
		<c:remove var="bidMSG" scope="session" />
		<c:remove var="succMSG" scope="session" />
	</c:if>
	<c:if test="${not empty failMSG}">
		<p class="MSG">${failMSG}</p>
		<c:remove var="failMSG" scope="session" />
	</c:if>
	<center><h2>Add House</h2></center>
	<form method="Post" action="homes2" enctype="multipart/form-data">
		<br>
		<div class="row">
			<div class="col-md-4 mx-auto">
				<label for="house">HOUSE</label> <input type="text" id="house"
					name="house" class="form-control">
			</div>

			<div class="col-md-4 mx-auto">
				<label for="add">ADDRESS</label> <input type="text" id="add"
					name="add" class="form-control">
			</div>
		</div>
		<div class="row">
			<div class="col-md-4 mx-auto">
				<label for="bed">BED</label> <input type="text" id="bed" name="bed"
					class="form-control">
			</div>

			<div class="col-md-4 mx-auto">
				<label for="bath">BATH</label> <input type="text" id="bath"
					name="bath" class="form-control">
			</div>
		</div>
		<div class="row">
			<div class="col-md-4 mx-auto">
				<label for="area">AREA</label> <input type="text" id="area"
					name="area" class="form-control">
			</div>

			<div class="col-md-4 mx-auto">
				<label for="landmark">LANDMARK</label> <input type="text"
					id="landmark" name="landmark" class="form-control">
			</div>
		</div>
		<div class="row">
			<div class="col-md-4 mx-auto">
				<label for="price">PRICE</label> <input type="text" id="price"
					name="price" class="form-control">
			</div>

			<br>

			<div class="col-md-4 mx-auto">
				<label for="pImage">INSERT IMAGE</label> <input type="file"
					class="form-control" id="pImage" name="pImage">
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-md-4 mx-auto">
				<label for="type">HOUSE TYPE</label> <select class="form-control"
					id="type" name="type">
					<option value="villa">VILLA</option>
					<option value="apt">APPARTMENT</option>
					<option value="house">HOUSE</option>
					<option value="farmhouse">FARMHOUSE</option>
					<option value="studio">STUDIO</option>
					<option value="office">OFFICE</option>
				</select>
			</div>

		</div>
		<br> <br>
		<div class="row">
			<div class="col-md-2 mx-auto">
				<input type="submit" class="btn btn-outline-dark" style="background:#720026" onclick="showalert()" value="Add Property">
			</div>
			<div class="col-md-2 mx-auto">
				<input type="reset" class="btn btn-outline-dark" style="background:#720026" value="Reset Form">
			</div>
		</div>
		<br>
	</form>
	<h1>House Table</h1>
	<br>
	<br>
	<table class="table table-striped">
		<thead>
			<tr>
				<th>HOUSE</th>
				<th>BED</th>
				<th>AREA</th>
				<th>PRICE</th>
				<th>ADDRESS</th>
				<th>BATH</th>
				<th>LANDMARK</th>
				<th>TYPE</th>
			</tr>
		</thead>
		<tbody>
			<%
			DAOconnect dao = new DAOconnect(DAOimpl.getConnection());
			List<house> list = dao.getHouse();
			for (house hd : list) {
			%>
			<tr>
				<td><%=hd.getHouse()%></td>
				<td><%=hd.getBed()%></td>
				<td><%=hd.getArea()%></td>
				<td><%=hd.getPrice()%></td>
				<td><%=hd.getAdd()%></td>
				<td><%=hd.getBath()%></td>
				<td><%=hd.getLandmark()%></td>
				<td><%=hd.getType()%></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
	</main>
	</div>
	<script>
		function showalert() {
			alert("Data Added Successfully",3000);
			
		}
	</script>
</body>
</html>