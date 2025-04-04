<%@page import="com.entity.User"%>
<%@page import="com.entity.apoint"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DAOimpl"%>
<%@page import="com.DAO.DAOconnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Appo</title>
<style type="text/css">
body {
	 background: grey 
}

.title {
	width: 100%
}

.activity-card {
	background: #fff;
	border-radius: 7px;
}

.activity-card .title {
	display: flex;
	align-items: center;
}

.activity-card .title a {
	background: gray;
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
	<div><%@include file="nav.jsp"%></div>
	<br>
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
				User us = (User) session.getAttribute("userobj");
				DAOconnect dao = new DAOconnect(DAOimpl.getConnection());
				List<apoint> list = dao.getapoint(us.getId());
				for (apoint v : list) {
				%>
				<tr>
					<td><%=v.getId()%></td>
					<td><%=v.getName()%></td>
					<td><%=v.getEmail()%></td>
					<td><%=v.getMobileno()%></td>
					<td><%=v.getDate()%></td>
					<td><%=v.getTime()%></td>
					<td class="td-team">
						<div class="but-2">
									<a href="deletetoken1?id=<%=v.getId()%>">Delete</a>
								</div>
					</td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
	</div>
</body>
</html>