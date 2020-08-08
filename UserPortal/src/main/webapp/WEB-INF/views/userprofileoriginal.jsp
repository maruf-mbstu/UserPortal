<%@page import="org.springframework.web.bind.annotation.ModelAttribute"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<%@ page isELIgnored="false"%>
<style>
h1{
  text-align:center;
}
.mydiv {
	margin-left:350px;
}
p {
  white-space: pre;
  font-family: monospace;
}

</style>
</head>

<body>

	<a href="changepass?email=${user.email}">Change Password</a>
	<br>
	<a href="logout">Log Out</a>

	<h1>User Profile</h1>
	<div class="mydiv">
		<p>First Name : ${user.firstName}</p>
		<p>Last Name  : ${user.lastName}</p>
		<p>Address    : ${user.address}</p>
		<p>Phone      : ${user.phone}</p>
		<p>Email      : ${user.email}</p>
		<p>Birthdate  : ${user.birthDate}</p>
	</div>

</body>

</html>