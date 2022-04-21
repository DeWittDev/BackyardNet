<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>Item View</title>
</head>
<body>
<h3> Here is <c:out value="${oneItem.user.userName}"></c:out>'s item: </h3>
<p>Item for sale: <c:out value="${oneItem.itemName}"></c:out></p>
<p>Description: <c:out value="${oneItem.description}"></c:out></p>
<p>Condition: <c:out value="${oneItem.condition}"></c:out></p>
<p>Price: <c:out value="${oneItem.price}"></c:out></p>
<p>Seller: <c:out value="${oneItem.user.userName}"></c:out></p>
<p>Zipcode: <c:out value="${oneItem.zipcode}"></c:out></p>
<p>Picture: <c:out value="${oneItem.image}"></c:out></p>
<c:if test="${oneItem.user.id==loggedInUser.id}">
<a>Edit</a>
<a>Delete</a>
</c:if>
</body>
</html>