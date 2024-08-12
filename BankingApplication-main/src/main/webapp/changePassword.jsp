<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Banking Application - Change Password</title>
 <link rel="stylesheet" href="adminLogin.css" />
</head>
<body>
	<%
	if (request.getSession(false).getAttribute("user-type") != null) {
		if (request.getSession().getAttribute("user-type").equals("Customer"))
			response.sendRedirect("CustomerDashboard.jsp");
		if (request.getSession().getAttribute("user-type").equals("admin"))
			response.sendRedirect("AdminDashboard.jsp");
	}
	%>
	<div class="wrapper">
	<h1>Change Password</h1>
	<p> This is because you're a first time user.</p>
	<form action="ChangeCustomerPasswordServlet" method="post">
		<input type="text" name="acc-no"
			placeholder="Enter your Account Number"> <input
			type="password" name="pwd" placeholder="Enter new password">
		<input type="submit" value="change password">
	</form>
	</div>
</body>
</html>