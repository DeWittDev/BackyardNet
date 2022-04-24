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
	<h3>Seller First Name: ${item.users.firstName}</h3>
	<p></p>
    <!-- Force next columns to break to new line -->
    <div class="w-100"></div>
 	<p></p>
	<h3>Seller Last Name: ${item.users.Lastname}</h3>
	<p></p>
	 <p></p>
	<h3>Seller City: ${item.users.city}</h3>
	<p></p>
	 <p></p>
	<h3>Seller State: ${item.users.state}</h3>
	<p></p>
	<p></p>
	<%-- <h3>Seller Average Rating: ${item.seller.rating}</h3> <!-- Stretch Goals  -->
	<p></p>
	<p></p>
	<h3>Seller Feedback: ${item.seller.feedback}</h3> <!-- Stretch Goals  -->
	<p></p> --%>
	 <p></p>
  </div>
  </div>
  
  <a class="btn btn-primary" href="/user/edit/${currentUser.id}">Edit</a>
  
  <a class="btn btn-primary" href="Email Seller">Email Seller </a> <!--  Phong to figure out how to launch email client repopulate with seller dummy email later -->
  
</t:jsptag>