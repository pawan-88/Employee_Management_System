<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>/</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Employee Management System</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">Home</a></li>
						
						<li class="nav-item"><a class="nav-link" href="register">Register
					</a></li>

					<li class="nav-item"><a class="nav-link" href="login">Login
					</a></li>
	</ul>
			</div>
		</div>
	</nav>
	<div class="conatiner p-4">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-header text-center">
						<h3>Register Page</h3>
						<c:if test="${not empty msg }">
							<h5 class="text-success">${msg }</h5>
							<c:remove var="msg" />
						</c:if>
					</div>
					<div class="card-body">
						<form action="createUser" method="post">
							<div class="mb-3">
								<label>Full Name</label> <input type="text"
									name="fullname" class="form-control">
							</div>
							<div class="mb-3">
								<label>Email</label> <input type="email" name="email"
									class="form-control">
							</div>

							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Contact
									No. </label> <input type="text" class="form-control"
									name="contactNumber" id="exampleInputEmail1"
									aria-describedby="emailHelp">

							</div>

							<div class="mb-3">
								<label>Password</label> <input type="password" name="password"
									class="form-control">
							</div>

							<button class="btn btn-primary col-md-12">Register</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%-- ------------------------------------------------------------------------------------------
	<div class="container p-4">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-header text-center fs-3">Registration Page</div>
					<c:if test="${not empty msg }">
							<h5 class="text-success">${msg }</h5>
							<c:remove var="msg" />
						</c:if>
					<p class="fs-bold text-center">${msg }</p>
					<div class="card-body">
						<form action="createUser" method="post">

							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Full
									Name </label> <input type="text" class="form-control" name="fullName"
									id="exampleInputEmail1" aria-describedby="emailHelp">

							</div>

							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Email
									address</label> <input type="email" class="form-control" name="email"
									id="exampleInputEmail1">

							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Contact
									No. </label> <input type="text" class="form-control"
									name="contactNumber" id="exampleInputEmail1"
									aria-describedby="emailHelp">

							</div>
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Password</label>
								<input type="password" class="form-control" name="password"
									id="exampleInputPassword1">
							</div>
							<!-- <div class="mb-3 form-check">
								<input type="checkbox" class="form-check-input" name="check"
									id="exampleCheck1"> <label class="form-check-label"
									for="exampleCheck1">Check</label>
							</div> -->
							<button type="submit" class="btn btn-primary col-md-12">Register</button>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
 --%>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>