<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tag" %>

<t:jsptag>
 
	


<div class="container">
  <div class="col1">
   <p></p>
	<h3>First Name: ${item.users.firstName}</h3>
	<p></p>
    <!-- Force next columns to break to new line -->
    <div class="w-100"></div>
 	<p></p>
	<h3>Last Name: ${item.users.Lastname}</h3>
	<p></p>
	 <p></p>
	<h3>City: ${item.users.city}</h3>
	<p></p>
	 <p></p>
	<h3>State: ${item.users.state}</h3>
	<p></p>
	 <p></p>
  </div>
  
  <div class="col2">
   <p></p>
	<h3>Username: ${item.users.userName}</h3>
	<p></p>
    <!-- Force next columns to break to new line -->
    <div class="w-100"></div>
 	<p></p>
	<h3>Password: ${item.users.password}</h3>
	<p></p>
	 <p></p>
	<h3>Confirm: ${item.users.confirm}</h3>
	<p></p>
	</div>
	  
  
</div>

	<c:if test="${item.users.id==currentUser.id}">
		<a class="btn btn-primary" href="/user/edit/${currentUser.id}">Edit Profile</a>
		
	
	</c:if>

<h2>My Listed Items</h2>



	<table class="table table-striped">
		<thead>
			<tr>
				<th scope="col">Item For Sale</th>
				<th scope="col">Description</th>
				<th scope="col">Action </th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${items}" var="item">

				<tr>
					
					<td>${item.item}</td>
					<td>${item.user.name}</td>
					<td class="linkcolor"> <a href="items">Edit</a></td> <!-- need to add in the path to edit -->


				</tr>
			</c:forEach>
		</tbody>
	</table>

</t:jsptag>   



