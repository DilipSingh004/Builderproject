<%@page import="com.entity.upcome"%>
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
<title>Add Upcoming Projects</title>
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
	margin-left: 500px;
}

.s {
	width: 100px;
}
.btn{color:white;}
h1{text-align: center;}
</style>
</head>
<body>
	<%@include file="nav1.jsp"%>
	<div class="main-content">
		<main>
			<br> <br> <br> <br>
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
			<form method="post" action="upcomings" enctype="multipart/form-data">
				<br>
				<H1>Add Upcoming Project</H1>
				<div class="row">
					<div class="col-md-4 mx-auto">
						<label for="project">PROJECT NAME</label> <input type="text"
							id="project" name="project" class="form-control">
					</div>
					<div class="col-md-4 mx-auto">
						<label for="city">CITY</label> <input type="text" id="add"
							name="add" class="form-control">
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
						<label for="bed">BED</label> <input type="text" id="bed"
							name="bed" class="form-control">
					</div>
					<div class="col-md-4 mx-auto">
						<label for="bath">BATH</label> <input type="text" id="bath"
							name="bath" class="form-control">
					</div>
				</div>


				<div class="row">
					<div class="col-md-4 mx-auto">
						<label for="price">PRICE</label> <input type="text" id="price"
							name="price" class="form-control">
					</div>

					<br>

					<div class="col-md-4 mx-auto">
						<label for="pImg1">INSERT IMAGE</label> <input type="file"
							class="form-control" id="pImage1" name="img1">
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 mx-auto">
						<label for="pImg2">INSERT IMAGE</label> <input type="file"
							class="form-control" id="pImage2" name="img2">
					</div>

					<br>

					<div class="col-md-4 mx-auto">
						<label for="pImg3">INSERT IMAGE</label> <input type="file"
							class="form-control" id="pImage3" name="img3">
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 mx-auto">
						<label for="pImg4">INSERT IMAGE</label> <input type="file"
							class="form-control" id="pImage4" name="img4">
					</div>
					<br>
					<div class="col-md-4 mx-auto">
						<label for="pImg5">INSERT IMAGE</label> <input type="file"
							class="form-control" id="pImage5" name="img5">
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-4 mx-auto">
						<label for="pImg6">INSERT IMAGE</label> <input type="file"
							class="form-control" id="pImage6" name="img6">
					</div>
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
				<div class="row">
				<div class="col-md-4 mx-auto">
				<label for="status">STATUS</label> <select class="form-control"
					id="stat" name="stat">
					<option value="ONGOING">ONGOING</option>
					<option value="COMPLETED">COMPLETED</option>
				</select>
			</div>
			<div class="col-md-4 mx-auto">
						<label for="desc">DESCRIPTIONS</label> 
						<textarea rows="5" cols="2" id="dics" name="dics" class="form-control"></textarea>
						
					</div>
				</div>
				<br> <br>
				<div class="row">
					<div class="col-md-2 mx-auto">
						<input type="submit" class="btn btn-outline-dark" style="background:#720026" onclick="showalert()" value="Add Product">
					</div>
					<div class="col-md-2 mx-auto">
						<input type="reset" class="btn btn-outline-dark" style="background:#720026" value="Reset Form">
					</div>
				</div>
				<br>
			</form>
			<h1>Upcoming Project Table</h1> <br>
			<br>
			<table class="table table-striped">
				<thead>
					<tr>
						<th>PROJECT NAME</th>
						<th>CITY</th>
						<th>AREA</th>
						<th>LANDMARK</th>
						<th>BED</th>
						<th>BATH</th>
						<th>PRICE</th>
						<th>TYPE</th>
						<th>DESCRIPTION</th>
						<th>STATUS</th>
						<th>MODIFY</th>
					</tr>
				</thead>
				<tbody>

					
						<%
			DAOconnect dao = new DAOconnect(DAOimpl.getConnection());
			List<upcome> list = dao.getupcome();
			for (upcome w : list) {
			%><tr>
			
				<td><%=w.getProject() %></td>
				<td><%=w.getAdd()%></td>
				<td><%=w.getArea()%></td>
				<td><%=w.getLandmark()%></td>
				<td><%=w.getBed()%></td>
				<td><%=w.getBath()%></td>
				<td><%=w.getPrice()%></td>
				<td><%=w.getType()%></td>
				<td><%=w.getDics()%></td>
				<td><%=w.getStat()%></td>
				 <%if(w.getStat().equals("ONGOING")){ %> 
				<td><a href="completed?id=<%=w.getProjectid()%>" style="text-decoration: none">ONGOING</a></td>
				 <% }else{ %>
				<td>NULL</td>
				<%} %>
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