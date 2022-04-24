<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:jsptag>

<h1>Fill out the details below concerning your item: </h1>
<form:form action="/item/add" method="post" modelAttribute="newItem">
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
        <form:label path="price">Price:</form:label>
        <form:errors path="price"/>     
        <form:textarea path="price"/>
    </p>
    <p>
        <form:label path="zipCode">Zipcode:</form:label>
        <form:errors path="ziCcode"/>     
        <form:textarea path="zipCode"/>
    </p>
    <p>
        <form:label path="imgurl">Image:</form:label>
        <form:errors path="imgurl"/>     
        <form:textarea path="imgurl"/>
    </p>
    <form:input type="hidden" value="${currentUser.id}" path="user"/>
    
	<button class="btn btn-primary">List Item</button>
</form:form>

</t:jsptag>   
