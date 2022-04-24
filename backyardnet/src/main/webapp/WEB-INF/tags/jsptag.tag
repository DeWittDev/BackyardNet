<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%> --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%-- <%@ page isErrorPage="true"%> --%>
<link 
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
	crossorigin="anonymous"></script>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
	
<!DOCTYPE html>
<html> 
<head>
<meta charset="ISO-8859-1">
<title> </title>
</head>
<body>

<h1>Welcome to BackyardNet</h1>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="nav justify-content-end">
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="/home">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="/item/new">List An
							Item</a></li>
					<li class="nav-item"><a class="nav-link" href="/user/${currentUser.id}">Profile</a></li>
					<li class="nav-item"><a class="nav-link" href="/logout">Login Out</a></li>
					
					</ul>
					
			</div>
		</div>
	</nav>

	<h2>
		Welcome: <c:out value="${currentUser.firstName}"/>
	</h2>
	
	<jsp:doBody/> 
	
	
	
	
	
	
	
	


</body>
</html>