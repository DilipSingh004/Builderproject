<%@page import="com.entity.apoint"%>
<%@page import="com.db.DAOimpl"%>
<%@page import="com.DAO.DAOconnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
main {
	margin-top: 60px;
	background: #f1f5f9;
	min-height: 91.8vh;
	padding: 1rem 3rem;
}

.recent {
	margin-top: 2rem;
	margin-bottom: 3rem;
}

.activity-grid {
	display: grid;
	grid-template-columns: 100%;
	grid-column-gap: 1.5rem;
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
	background: #720026;
	color: white;
	font-weight: 700;
	margin-left: 800px;
	padding: .5rem;
	text-decoration: none
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

th, td {
	font-size: .9rem;
	text-align: left;
	padding: .6rem .5rem;
	color: var(--color-dark);
}

tbody tr:nth-child(even) {
	background: #f9fafc;
}

tr:nth-child(odd) {
	background: #efefef;
}

form input[type="checkbox"] {
	margin-left: 10px;
}

form input[type="number"], input[type="text"] {
	width: 50px;
	height: 25px;
	padding-left: 15px;
	outline: none;
	border-radius: 5px;
	border: 1px solid #ccc;
}

form select {
	width: 150px;
	height: 25px;
	padding-left: 15px;
	outline: none;
	border-radius: 5px;
	border: 1px solid #ccc;
}

#class {
	margin-left: 10px;
}

form .button {
	height: 45px;
	margin: 35px 0 0 0;
	display: flex;
	align-items: center;
}

form .button #submit, form .button #reset {
	height: 100%;
	width: 10%;
	outline: none;
	border: none;
	border-radius: 6px;
	font-size: 16px;
	cursor: pointer;
	margin-bottom: 2rem;
}

form .button #submit {
	background: #007bff;
	color: white;
	margin-left: 250px;
}

form .button #submit:hover {
	background: #0069d9;
}

form .button #reset {
	background: red;
	color: white;
	margin-left: 50px;
}

form .button #reset:hover {
	background: #dc1104;
}
</style>
</head>
<body>
<div><%@include file="nav.jsp" %></div>
	<input type="hidden" id="status"
		value="<%=request.getAttribute("status")%>">
	<div class="main-content">
		<main>
			<section class="recent">
				<div class="activity-grid">
					<div class="activity-card">
						<div class="title">
							<h3>UPDATE APPOINTMENT</h3>
							<a href="token.jsp">Back</a>
						</div>
						<%
						Integer id=Integer.parseInt(request.getParameter("id"));
						DAOconnect dao = new DAOconnect(DAOimpl.getConnection());
						apoint a=dao.getapointsById(id);
						%>
						<form method="post" action="edit_token">
							<input type="hidden" name="id"
								value="<%=a.getId()%>">
							<table>
								<tr>
									<td><span>Name</span></td>
									<td>:</td>
									<td><input type="text" name="name"
										value="<%=a.getName()%>" readonly style="width: 200px;"></td>
								</tr>
								<tr>
									<td><span>Email</span></td>
									<td>:</td>
									<td><input type="email" name="email" placeholder=""
										style="width: 200px;"
										value="<%=a.getEmail()%>" required></td>
								</tr>
								<tr>
									<td><span>Mobile No</span></td>
									<td>:</td>
									<td><input type="number" name="mobileno" placeholder=""
										style="width: 200px;"
										value="<%=a.getMobileno()%>" required></td>
								</tr>
								<tr>
									<td><span>Date</span></td>
									<td>:</td>
									<td><input type="date" name="date" id="Date"
										placeholder=""
										value="<%=a.getDate()%>" required></td>
								</tr>
								<tr>
									<td><span>Time</span></td>
									<td>:</td>
									<td><input type="time" name="time" id="Time"
										placeholder="" 
										value="<%=a.getTime()%>" required></td>
								</tr>
							</table>
							<div class="button">
								<input type="submit" value="Submit" id="submit">
							</div>
						</form>
					</div>
				</div>
			</section>
		</main>
	</div>
</body>
</html>