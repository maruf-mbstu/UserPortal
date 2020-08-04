<%@page import="org.springframework.web.bind.annotation.ModelAttribute"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<%@ page isELIgnored="false"%>

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<title>User Portal</title>

</head>

<body>
	<a href="changepass?id=${user.id}">Change Password</a>
	<br>
	<a href="logout">Log Out</a>

	<div class="row justify-content-center">
			<table class="table table-bordered table-striped text-center">
				<tbody>
					<tr>
						<td>First Name : ${user.firstName}</td>
					</tr>
					<tr>
						<td>Last Name : ${user.lastName}</td>
					</tr>
					<tr>
						<td>Address : ${user.address}</td>
					</tr>
					<tr>
						<td>Phone : ${user.phone}</td>
					</tr>
					<tr>
						<td>Email : ${user.email}</td>
					</tr>
					<tr>
						<td>Birthdate : ${user.birthDate}
					</tr>
				</tbody>
			</table>
		</div>

</body>
</html>
