<%@page import="com.entity.apoint"%>
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
<title>Appointment Table</title>
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
<style>
.activity-card {
	background: #fff;
	border-radius: 7px;
}

.activity-card .title {
	display: flex;
	align-items: center;
}

.activity-card .title a {
	background: yellow;
	color: black;
	font-weight: 700;
	margin-left: 745px;
	padding: .5rem;
}

.activity-card h3 {
	color: var(--text-black);
	margin: 2rem;
}

.activity-card table {
	width: 95%;
	margin-left: 1.7rem;
	border-collapse: collapse;
}

.activity-card thead {
	background: #efefef;
	text-align: center;
}

th, td {
	font-size: .9rem;
	text-align: center;
	padding: 1rem .5rem;
	color: var(--color-dark);
	padding: 1rem .5rem;
}

tbody tr:nth-child(even) {
	background: #f9fafc;
}

.td-team {
	display: flex;
	align-items: center;
	justify-content: center;
}

.but-1 {
	background: #007bff;
	padding: .5rem;
	margin-right: .5rem;
}

.but-2 {
	background: red;
	padding: .5rem;
}

.td-team a {
	color: white;
}
</style>
</head>
<body>
	<div><%@include file="nav1.jsp"%></div>
	<div class="main-content">
		<main>
			<div class="activity-card">
				<div class="title">
					<h3>APPOINTMENTS</h3>
				</div>
				<table>
					<thead>
						<tr>

							<th>Token ID</th>
							<th>Name</th>
							<th>Email</th>
							<th>Mobile NO.</th>
							<th>Date</th>
							<th>Time</th>
							<th>Modify</th>

						</tr>
					</thead>
					<tbody>
						<%
						DAOconnect dao = new DAOconnect(DAOimpl.getConnection());
						List<apoint> list = dao.getapoints();
						for (apoint j : list) {
						%>
						<tr>
							<td><%=j.getId()%></td>
							<td><%=j.getName()%></td>
							<td><%=j.getEmail()%></td>
							<td><%=j.getMobileno()%></td>
							<td><%=j.getDate()%></td>
							<td><%=j.getTime()%></td>
							<td class="td-team">
								<div class="but-1">
									<a href="updatetoken.jsp?id=<%=j.getId()%>">Update</a>
								</div>
								<div class="but-2">
									<a href="deletetoken?id=<%=j.getId()%>">Delete</a>
								</div>
							</td>
							
						</tr>
						<%
						}
						%>
					</tbody>
				</table>
			</div>
		</main>
	</div>
</body>

</html>
