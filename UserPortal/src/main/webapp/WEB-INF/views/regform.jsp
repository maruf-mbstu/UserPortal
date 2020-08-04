<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Add New User</h1>
<form:form method="post" action="save" modelAttribute="user">
	<table>
		<tr>
			<td>First Name :</td>
			<td><form:input path="firstName" /></td>
		</tr>
		<tr>
			<td>Last Name :</td>
			<td><form:input path="lastName" /></td>
		</tr>
		<tr>
			<td>Address :</td>
			<td><form:input path="address" /></td>
		</tr>
		<tr>
			<td>Phone :</td>
			<td><form:input path="phone" /></td>
		</tr>
		<tr>
			<td>Email :</td>
			<td><form:input path="email" /></td>
		</tr>
		<tr>
			<td>Birthdate :</td>
			<td><form:input path="birthDate" /></td>
		</tr>
		<tr>
			<td>Password :</td>
			<td><form:input path="password" /></td>
		</tr>
		<tr>
			<td></td>
			<td><input type="submit" value="Register" /></td>
		</tr>
	</table>
</form:form>