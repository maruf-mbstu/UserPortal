<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<%@ page isELIgnored="false"%>
</head>
<body>

	<h1>Users List</h1>
	<table border="2" width="70%" cellpadding="2">
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Address</th>
			<th>Phone</th>
			<th>Email</th>
			<th>Birthdate</th>
		</tr>
		<c:forEach var="user" items="${list}">
			<tr>
				<td>${user.firstName}</td>
				<td>${user.lastName}</td>
				<td>${user.address}</td>
				<td>${user.phone}</td>
				<td>${user.email}</td>
				<td>${user.birthDate}</td>
			</tr>
		</c:forEach>
	</table>

</body>

</html>