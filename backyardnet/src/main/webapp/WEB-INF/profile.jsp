<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:jsptag>


 <img src="/img/Profile.jpeg" class="supportImgProfile" alt="Image Not Found">


	

	<h2>User Profile</h2>


	<div class="row">
		<div class="col">
			<p></p>
			<h3>First Name: ${user.firstName}</h3>
			<p></p>
			<!-- Force next columns to break to new line -->
			<div class="w-100"></div>
			<p></p>
			<h3>Last Name: ${user.lastName}</h3>
			<p></p>
			<p></p>
			<h3>City: ${user.city}</h3>
			<p></p>
			<p></p>
			<h3>State: ${user.state}</h3>
			<p></p>
			<p></p>
		</div>

		<div class="col">
			<p></p>
			<h3>Username: ${user.userName}</h3>
			<p></p>
			
			<p></p>
			<h3>Email: ${user.email}</h3>
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
	<c:if test="${currentUser.id == user.id}">
	<a class="btn btn-primary" href="/user/edit/${user.id}">Edit
		Profile</a>
	<p></p>
	</c:if>

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
			<c:forEach items="${item}" var="item">
				<c:if test="${user.id == item.users.id}">
				<tr>
					<td>${item.itemName}</td>
					<td>${item.description}</td>
					<c:if test="${currentUser.id == item.users.id}">
						<td class="linkcolor"><a class="btn btn-secondary" href="/item/edit/${item.id}">Edit</a></td>
						<!-- need to add in the path to edit -->
					</c:if>
				</tr>
				</c:if>
			</c:forEach>
		</tbody>
	</table>

</t:jsptag>



