<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Controller test</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script defer src="https://use.fontawesome.com/releases/v5.7.2/js/all.js" integrity="sha384-0pzryjIRos8mFBWMzSSZApWtPl/5++eIfzYmTgBBmXYdhvxPc+XcFEk+zJwDgWbP" crossorigin="anonymous"></script>

<!--<link type="text/css"

rel="stylesheet"

href="${pageContext.request.contextPath}/resources/css/style.css"/>-->
</head>
<body>

<div class="container">

<h1 class="display-4">List of customers</h1>


<form:form action="search" class="form-inline" method="GET">
  <div class="form-group mb-2">
    <label for="theSearchName">Search customer: </label>
  </div>
  <div class="form-group mx-sm-3 mb-2">
    <input type="text" class="form-control" id="theSearchName" name="theSearchName">
  </div>
  <button type="submit" class="btn btn-outline-primary mb-2"><i class="fas fa-search"></i></button>
</form:form>



<table class="table">
  <thead>
    <tr>
      <th scope="col">First Name</th>
      <th scope="col">Last Name</th>
      <th scope="col">E-mail</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  
  <c:forEach var="temp" items="${customers}">
  <tr>
      <td>${temp.firstName }</td>
      <td>${temp.lastName }</td>
      <td>${temp.email }</td>
      <td>
      <c:url var="updateLink" value="/customer/showFormForUpdate">
      	<c:param name="customerId" value="${temp.id}"/>
      </c:url>
      <c:url var="deleteLink" value="/customer/delete">
      	<c:param name="customerId" value="${temp.id}"/>
      </c:url>
      <a href="${updateLink}"><i class="fas fa-user-edit"></i> Update</a> | 
      <a href="${deleteLink}" onclick="return confirm('Are you sure you want to delete this customer?');" class="text-danger"><i class="far fa-trash-alt"></i> Delete</a>
      </td>
    </tr>
  </c:forEach>
  
  </tbody>
</table>


<button type="button" class="btn btn-outline-primary" onclick="window.location.href='showFormForAdd'; return false;"><i class="fas fa-user-plus"></i> Add customer</button>



</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>