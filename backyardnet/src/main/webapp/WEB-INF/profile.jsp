<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile</title>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
        </div>
        </div>
        

 

<h2>
		 <c:out value="${loggedInUser.name}"/>'s Profile
		
</h2>
 


<div class="container">
  <div class="col1">
  <!-- <div class="row row-cols-2"> -->
    <h3>First Name: ${Item.User.name}</h3>
    <h3>Last Name: ${Item.User.name} </h3>
    <h3>City: ${Item.User.city} </h3>
    <h3>State: ${Item.User.state}  </h3>
    
  </div>
  
   <div class="col2">
  <!-- <div class="row row-cols-2"> -->
    <h3>Username: ${Item.User.username}</h3>
    <h3>Email: ${Item.User.username} </h3>
    <h3>Password: ${Item.User.password} </h3>
    <h3>Confirm Password: ${Item.User.confirmpassword}  </h3>
    
  </div>
  
  <!--  <c:if test="${item.user.id==loggedInUser.id}">
		<a class="btn btn-primary" href="/item/${item.id}/edit">Edit</a>
	</c:if> -->  
  
  
  <table class="table table-striped">
		<thead>
			<tr>
				<th scope="col">Item for Sale</th>
				<th scope="col">Description</th>
				<th scope="col">Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${items}" var="item">

				<tr>
					<td>${item.item}</td>
					<td>${item.description}</td>
					<%-- 	<td class="linkcolor"> href="/item/${item.id}/edit">Edit</td> --%>
				</tr>
			</c:forEach>
		</tbody>
	</table>
  
  
</div>

</body>
</html>