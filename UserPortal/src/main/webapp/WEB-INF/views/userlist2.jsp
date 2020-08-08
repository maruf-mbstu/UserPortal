<%@page import="org.springframework.web.bind.annotation.ModelAttribute"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html lang="en">
<head>
<title>User List</title>
<%@ page isELIgnored="false"%>

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<!--  <script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Fonts -->
<link rel="dns-prefetch" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600"
	rel="stylesheet" type="text/css">


<link rel="icon" href="Favicon.png">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

<style>
h1 {
	text-align: center;
}

#button {
	margin-left: 50px
}
</style>

</head>
<body>

	<div class="container">
		<h1>User List</h1>
		<a class="btn btn-primary" href="fulluserlist" role="button">All
			Users</a><br><br>
		<table class="table table-striped">
			<thead>
				<tr>
					<th scope="col">First Name</th>
					<th scope="col">Last Name</th>
					<th scope="col">Address</th>
					<th scope="col">Phone</th>
					<th scope="col">Email</th>
					<th scope="col">Birthdate</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="user" items="${list}">
					<tr>
						<th scope="row">${user.firstName}</th>
						<td>${user.lastName}</td>
						<td>${user.address}</td>
						<td>${user.phone}</td>
						<td>${user.email}</td>
						<td>${user.birthDate}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

	</div>


	<!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script> !-->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>