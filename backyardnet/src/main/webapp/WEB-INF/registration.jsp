<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
	crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="/css/style.css">
<title>BackyardNet Login</title>
</head>
<body>

	Phong Test Registration Page


	<div class="row">


		<h1>Seller Registration</h1>
		<form:form method="POST" action="/registerUser"
			modelAttribute="newlyCreatedUser">

			<div class="form-group">
				<form:label path="firstName">First Name:</form:label>
				<form:errors class="text-danger" path="firstName" />
				<form:input class="form-control" path="firstName" />
			</div>
			<div class="form-group">
				<form:label path="lastName">Last Name:</form:label>
				<form:errors class="text-danger" path="lastName" />
				<form:input class="form-control" path="lastName" />
			</div>
			<div class="form-group">
				<form:label path="city">City:</form:label>
				<form:errors class="text-danger" path="city" />
				<form:input class="form-control" path="city" />
			</div>
			<div class="form-group">
				<form:label path="state">State:</form:label>
				<form:errors class="text-danger" path="state" />
				<form:input class="form-control" path="state" />
			</div>
			<div class="form-group">
				<form:label path="userName">Username:</form:label>
				<form:errors class="text-danger" path="userName" />
				<form:input class="form-control" path="userName" />
			</div>
			<div class="form-group">
				<form:label path="email">Email:</form:label>
				<form:errors class="text-danger" path="email" />
				<form:input class="form-control" path="email" />
			</div>
			<div class="form-group">
				<form:label path="password">Password:</form:label>
				<form:errors class="text-danger" path="password" />
				<form:password class="form-control" path="password" />
			</div>
			<div class="form-group">
				<form:label path="confirm">Password Confirmation:</form:label>
				<form:errors class="text-danger" path="confirm" />
				<form:password class="form-control" path="confirm" />
			</div>
			<p></p>
			<button type="submit" class="btn btn-primary">Register</button>

		</form:form>
	</div>













</body>
</html>