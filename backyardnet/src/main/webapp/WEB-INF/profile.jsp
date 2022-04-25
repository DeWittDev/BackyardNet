<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:jsptag>

	<h2>
		<p></p>
		Welcome:
		<c:out value="${currentUser.firstName}" />
	</h2>

	<h2>Profile</h2>


	<div class="row">
		<div class="col">
			<p></p>
			<h3>First Name: ${currentUser.firstName}</h3>
			<p></p>
			<!-- Force next columns to break to new line -->
			<div class="w-100"></div>
			<p></p>
			<h3>Last Name: ${currentUser.lastName}</h3>
			<p></p>
			<p></p>
			<h3>City: ${currentUser.city}</h3>
			<p></p>
			<p></p>
			<h3>State: ${currentUser.state}</h3>
			<p></p>
			<p></p>
		</div>

		<div class="col">
			<p></p>
			<h3>Username: ${currentUser.userName}</h3>
			<p></p>
			
			<p></p>
			<h3>Email: ${currentUser.email}</h3>
			<p></p>
			
			<!-- Force next columns to break to new line -->
			<div class="w-100"></div>
			<p></p>
			<%-- <h3>Password: ${currentUser.password}</h3>
	<p></p>
	 <p></p>
	<h3>Confirm: ${currentUser.confirm}</h3> --%>
			<p></p>
		</div>


	</div>
	<p></p>
<div class=editProfile>
	<a class="btn btn-primary" href="/user/edit/${currentUser.id}">Edit
		Profile</a>
	<p></p>

</div>

	<h2>My Listed Items</h2>
	<p></p>



	<table class="table table-striped">
		<thead>
			<tr>
				<th scope="col">Item For Sale</th>
				<th scope="col">Description</th>
				<th scope="col">Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${items}" var="item">

				<tr>

					<td>${item.item}</td>
					<td>${item.user.name}</td>
					<td class="linkcolor"><a href="item/edit/${item.id}">Edit</a></td>
					<!-- need to add in the path to edit -->

				</tr>
			</c:forEach>
		</tbody>
	</table>

</t:jsptag>



