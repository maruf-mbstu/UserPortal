<%@page import="org.springframework.web.bind.annotation.ModelAttribute"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html lang="en">
<head>
<title>User Registration Form</title>
<%@ page isELIgnored="false"%>

<style>
#result {
  margin-left:300px;
}
</style>

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
<script type="text/javascript">
$(document).ready(function(){
	$('#email').blur(function() {
		var email = $('#email').val();
		$.ajax({
			type: 'GET',
			url:'checkEmail/' + email + '.html',
			success: function(result){
				$('#result').html(result);
			}
		});
	});
});
</script>

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


</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-light navbar-laravel">
		<div class="container">
			<a class="navbar-brand" href="#">User Registration</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link" href="userprofile">Login</a></li>
					<li class="nav-item"><a class="nav-link" href="regform">Register</a>
					</li>
				</ul>

			</div>
		</div>
	</nav>

	<main class="my-form">
	<div class="cotainer">
		<div class="row justify-content-center">
			<div class="col-md-8">
				<div class="card">
					<div class="card-header">Register</div>
					<div class="card-body">
						<form:form method="post" action="save" modelAttribute="user">
							<div class="form-group row">
								<label for="firstname"
									class="col-md-4 col-form-label text-md-right">First
									Name</label>
								<div class="col-md-6">
									<form:input path="firstName" class="form-control" />
								</div>
							</div>

							<div class="form-group row">
								<label for="lastname"
									class="col-md-4 col-form-label text-md-right">Last Name</label>
								<div class="col-md-6">
									<form:input path="lastName" class="form-control" />
								</div>
							</div>

							<div class="form-group row">
								<label for="address"
									class="col-md-4 col-form-label text-md-right">Address</label>
								<div class="col-md-6">
									<form:input path="address" class="form-control" />
								</div>
							</div>

							<div class="form-group row">
								<label for="phnoe" class="col-md-4 col-form-label text-md-right">Phone</label>
								<div class="col-md-6">
									<form:input path="phone" class="form-control" />
								</div>
							</div>

							<div class="form-group row">
								<label for="email" class="col-md-4 col-form-label text-md-right">Email</label>
								<div class="col-md-6">
									<form:input path="email" class="form-control" id="email" />
							    </div>
							</div>
							<span class="alert alert-primary" id="result"></span>
								

								<div class="form-group row">
									<label for="birthdate"
										class="col-md-4 col-form-label text-md-right">Birthdate</label>
									<div class="col-md-6">
										<form:input path="birthDate" class="form-control" />
									</div>
								</div>

								<div class="form-group row">
									<label for="password"
										class="col-md-4 col-form-label text-md-right">Password</label>
									<div class="col-md-6">
										<form:input path="password" class="form-control" />
									</div>
								</div>

								<div class="col-md-6 offset-md-4">
									<button type="submit" class="btn btn-primary">Register
									</button>
								</div>
							</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>

	</main>

	<!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script> !-->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>