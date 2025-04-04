<%@page import="com.db.DAOimpl"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.Employee"%>
<%@page import="com.DAO.DAOconnect"%>
<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADD EMPLOYEE</title>
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
.t {
	background: #00b383;
	color: white;
	margin-left: 650px;
}

.s {
	width: 100px;
}
h1{text-align: center;}
.btn{color:white}
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
	<center><h2>Add Employee</h2></center>
	<form method="Post" action="employee1">
		<br> 
		<div class="row">
		
			<div class="col-md-4 mx-auto">
				<label for="name">NAME</label> <input type="text" id="name"
					name="name" class="form-control"  required="required">
			</div>

			<div class="col-md-4 mx-auto">
				<label for="add">ADDRESS</label> <input type="text" id="add"
					name="add" class="form-control" required="required">
			</div>
		</div>
		<div class="row">
			<div class="col-md-4 mx-auto">
				<label for="dob">DATE OF BIRTH</label> <input type="text" id="dob"
					name="dob" class="form-control" required="required">
			</div>

			<div class="col-md-4 mx-auto">
				<label for="mno">MOBILE NO.</label> <input type="text" id="mno"
					name="mno" class="form-control" pattern="[789][0-9]{9}" required="required">
			</div>
		</div>
		<div class="row">
			<div class="col-md-4 mx-auto">
				<label for="email">EMAIL</label> <input type="text" id="email"
					name="email" class="form-control" required="required">
			</div>

			<div class="col-md-4 mx-auto">
				<label for="doj">DATE-OF-JOINING</label> <input type="text" id="doj"
					name="doj" class="form-control" required="required">
			</div>
		</div>
		<div class="row">
			<div class="col-md-4 mx-auto">
				<label for="posi">POSITION</label> <select class="form-control"
					id="posi" name="posi">
					<option value="STAFF">STAFF</option>
					<option value="RECEPTION">RECEPTION</option>
					<option value="CLEANER">CLEANER</option>
					<option value="ACCOUNTANT">ACCOUNTANT</option>
					<option value="AGENT">AGENT</option>
					<option value="LABOUR">LABOUR</option>
				</select>
			</div>
			<div class="col-md-4 mx-auto">
				<label for="status">STATUS</label> <select class="form-control"
					id="status" name="status">
					<option value="ACTIVE">ACTIVE</option>
					<option value="INACTIVE">INACTIVE</option>
				</select>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4 mx-auto">
				<label for="pass">PASSWORD</label> <input type="password" id="pass"
					name="pass" class="form-control" pattern="(?m)^((?=.*\\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[\\W]).{8,})$" required="required">
			</div>


			<div class="col-md-4 mx-auto">
				<label for="repass">RE-PASSWORD</label> <input type="password"
					id="repass" name="repass" class="form-control" pattern="(?m)^((?=.*\\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[\\W]).{8,})$" required="required">
			</div>
		</div>

		<br> <br>
		<div class="row">
			<div class="col-md-2 mx-auto">
				&emsp;&emsp;&emsp;&emsp;<input type="reset"
					class="btn btn-outline-dark" style="background:#720026" value="Reset-Form">
					
			</div>
			&emsp;&emsp;&emsp;
			<div class="col-md-2 mx-auto">
				<input type="submit" class="btn btn-outline-dark" style="background:#720026" onclick="showalert()" value="Register">
			</div>
		</div>
		<br>
	</form>
	<h1>Employee Table</h1>
	<br>
	<br>
	<table class="table table-striped">
		<thead>
			<tr>
				<th>NAME</th>
				<th>DATE OF BIRTH</th>
				<th>EMAIL</th>
				<th>POSITION</th>
				<th>ADDRESS</th>
				<th>MOBILE NO.</th>
				<th>DATE-OF-JOINING</th>
				<th>STATUS</th>
				<th>MODIFY</th>
			</tr>
		</thead>
		<tbody>
			<%
			DAOconnect dao = new DAOconnect(DAOimpl.getConnection());
			List<Employee> list = dao.getEmployees();
			for (Employee k: list) {
			%>
			<tr>
				<td><%=k.getName() %></td>
				<td><%=k.getDob() %></td>
				<td><%=k.getEmail() %></td>
				<td><%=k.getPosi() %></td>
				<td><%=k.getAdd() %></td>
				<td><%=k.getMno() %></td>
				<td><%=k.getDoj() %></td>
				<td><%=k.getStatus() %></td>
				<%if(k.getStatus().equals("ACTIVE")){ %>
				<td><a href="inactive?id=<%=k.getId()%>" style="text-decoration: none">INACTIVE</a></td>
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