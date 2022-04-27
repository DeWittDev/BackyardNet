<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:jsptag>



<h3> Here is <c:out value="${item.users.userName}"></c:out>'s item: </h3>
<p>Item for sale: <c:out value="${item.itemName}"></c:out></p>
<p>Description: <c:out value="${item.description}"></c:out></p>
<p>Price: <c:out value="${item.price}"></c:out></p>
<p>Seller: <c:out value="${item.users.userName}"></c:out></p>
<p>ZipCode: <c:out value="${item.zipCode}"></c:out></p>
<%-- <p>Picture: <c:out value="${item.imgurl}"></c:out></p> --%>
<c:if test="${item.users.id==currentUser.id}">
<a class="btn btn-secondary" href="/item/edit/${item.id}">Edit</a>
</c:if>

 
  <a class="btn btn-primary" href="mailto:SellerName@aol.com" >Email Seller </a> <!--  Phong to figure out how to launch email client repopulate with seller dummy email later -->



	
 <p></p>
 <img src="/img/online_store.jpeg" class="supportImg" alt="Image Not Found">


</t:jsptag>  