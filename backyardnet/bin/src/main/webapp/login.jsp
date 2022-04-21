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


<title>Insert title here</title>
</head>
<body>

<div class="col">
			<h1>Login</h1>
			<form:form action="/login" modelAttribute="newActiveUser">
				<div class="form-group">
					<form:label for="email" path="email">Username:</form:label>
					<form:input type="text" class="form-control" path="email" />
					<form:errors class="text-danger" path="email" />
				</div>
				<div class="form-group">
					<form:label for="password" path="password">Password:</form:label>
					<form:password class="form-control" path="password" />
					<form:errors class="text-danger" path="password" />
				</div>
				
				<a  class="btn btn-danger" href="/registration">Seller Registration</a> 
				
				
				
				<p></p>
				<button type="submit" class="btn btn-primary">Login</button>


			</form:form>
		</div>

</body>
</html>