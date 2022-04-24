<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:jsptag>

<h1 class="headline">Welcome <c:out value="${currentUser.userName}"></c:out>!!!!</h1>
<h3>Available items for sale:</h3>
<div>
<table class="table table-success table-striped">
      		<thead>
				<tr>
					<th>Item for Sale</th>
					<th>Description</th>
					<th>Condition (New/Used)</th>
					<th>Price ($USD)</th>
					<th>Seller</th>
					<th>Zipcode</th>
					<th>Picture</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${items}" var="items">
				<tr>
					<td><a href="/item${items.id}">${items.itemName}</a></td>
					<td>${items.description}</td>
					<td>${items.condition} </td>
					<td>${items.price}</td>
					<td><a href="/user/${items.users.id}">${items.users.userName}</a></td>
					<td>${items.zipcode}</td>
					<td>${items.image}</td>
				</tr>
				</c:forEach>	
			</tbody>
	</table>
</div>
<a href="/item/new">Add an item</a>

</t:jsptag>   