<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %> 

<t:jsptag>


	<div class="row">


		<h1>Update Information <c:out value="${currentUser.userName}"></c:out></h1>
		
		<form:form method="post" action="/user/edit/${currentUser.id}"
			modelAttribute="updateUser">
			<form:input type="hidden" value="${currentUser.id}" path="id"/>

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
			
			<button type="submit" class="btn btn-primary">Update</button>

		</form:form>
		
	<a href="/delete/${item.id}">Delete</a>
	</div>

</t:jsptag>





