<%@page import="org.springframework.web.bind.annotation.ModelAttribute"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html lang="en">
<head>
<title>Change Password</title>
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


</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-light navbar-laravel">
		<div class="container">
			<a class="navbar-brand" href="#">Change Password</a>
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
					<div class="card-header">Change Password</div>
					<div class="card-body">
						<form:form method="post" action="newpass?email=${useremail}">


							<div class="form-group row">
								<label for="password"
									class="col-md-4 col-form-label text-md-right">Current
									Password</label>
								<div class="col-md-6">
									<input type="password" name="prepass">
								</div>
							</div>
							<div class="form-group row">
								<label for="password"
									class="col-md-4 col-form-label text-md-right">New
									Password</label>
								<div class="col-md-6">
									<input type="password" name="newpass">
								</div>
							</div>
							<div class="form-group row">
								<label for="password"
									class="col-md-4 col-form-label text-md-right">Confirm
									Password</label>
								<div class="col-md-6">
									<input type="password" name="conpass">
								</div>
							</div>

							<div class="col-md-6 offset-md-4">
								<button type="submit" class="btn btn-primary">Change
									Password</button>
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