<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:jsptag>

	<div class="col">
		<h1>Login</h1>
		<form:form action="/login" modelAttribute="newLogin" method="Post">
			<div class="form-group">
				<form:label for="email" path="userName">Username:</form:label>
				<form:input type="text" class="form-control" path="userName" />
				<form:errors class="text-danger" path="userName" />
			</div>
			<div class="form-group">
				<form:label for="password" path="password">Password:</form:label>
				<form:password class="form-control" path="password" />
				<form:errors class="text-danger" path="password" />
			</div>

			<p></p>
			<button type="submit" class="btn btn-primary">Login</button>

			<p></p>


		</form:form>
			<a class="btn btn-warning" href="/register">Create An Account To Sell You Items</a>



			<p></p>

	</div>


 <img src="/img/Benefits.jpeg" class="supportImg" alt="Image Not Found">


</t:jsptag>