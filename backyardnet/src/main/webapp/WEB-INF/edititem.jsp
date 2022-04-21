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
<link rel="stylesheet" href="/style.css">
<title>Update Item</title>
</head>
<body>
<h1>Update the details below </h1>
<form:form action="/updateitem" method="put" modelAttribute="newItem">
	<p>
 		<form:errors path="itemName"/>
        <form:label path="itemName">Item for sale:</form:label>
        <form:input path="itemName"/>
    </p>
    <p>
        <form:label path="description">Description</form:label>
        <form:errors path="description"/>
        <form:textarea path="description"/>
    </p>
    <p>
        <form:label path="condition">Condition</form:label>
        <form:errors path="condition"/>     
        <form:textarea path="condition"/>
    </p> 
    <p>
        <form:label path="price">Price:</form:label>
        <form:errors path="price"/>     
        <form:textarea path="price"/>
    </p>
    <p>
        <form:label path="zipcode">Zipcode:</form:label>
        <form:errors path="zipcode"/>     
        <form:textarea path="zipcode"/>
    </p>
    <form:input type="hidden" value="${loggedInUser.id}" path="user"/>
    
	<button class="btn btn-primary">Update Item</button>
</form:form>
</body>
</html>