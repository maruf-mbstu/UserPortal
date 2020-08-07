<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<%@ page isELIgnored="false"%>
</head>
<body>
<h1>Change Password</h1>
	<form:form method="post" action="newpass?email=${useremail}">
		<table>
			<tr>
				<td>Previous Password :</td>
				<td><input type="password" name="prepass"></td>
			</tr>
			<tr>
				<td>New Password :</td>
				<td><input type="password" name="newpass"></td>
			</tr>
			<tr>
				<td>Confirm Password :</td>
				<td><input type="password" name="conpass"></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Change Password" /></td>
			</tr>
		</table>
	</form:form>

</body>

</html>