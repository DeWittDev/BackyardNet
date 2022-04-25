<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:jsptag>

<h3>Available items for sale:</h3>
<div>
<table class="table table-success table-striped">
      		<thead>
				<tr>
					<th>Item for Sale</th>
					<th>Description</th>
					<th>Price ($USD)</th>
					<th>Seller</th>
					<th>ZipCode</th>
					<th>Picture</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${item}" var="item">
				<tr>
					<td><a href="/item/${item.id}">${item.itemName}</a></td>
					<td>${item.description}</td>
					<td>${item.price}</td>
					<td><a href="/user/${item.users.id}">${item.users.userName}</a></td>
					<td>${item.zipCode}</td>
					<td>${item.imgurl}</td>
				</tr>
				</c:forEach>	
			</tbody>
	</table>
</div>
<a href="/item/new">Add an item</a>

</t:jsptag>   