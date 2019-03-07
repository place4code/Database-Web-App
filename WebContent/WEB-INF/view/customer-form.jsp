<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Controller form</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script defer src="https://use.fontawesome.com/releases/v5.7.2/js/all.js" integrity="sha384-0pzryjIRos8mFBWMzSSZApWtPl/5++eIfzYmTgBBmXYdhvxPc+XcFEk+zJwDgWbP" crossorigin="anonymous"></script>

<!--<link type="text/css"

rel="stylesheet"

href="${pageContext.request.contextPath}/resources/css/style.css"/>-->
</head>
<body>

<div class="container">

<h1 class="display-4">Customer</h1>

<form:form action="saveCustomer" modelAttribute="customer" method="POST">
<form:hidden path="id"/>
<div class="form-group">
    <label for="firstName">First Name</label>
    <form:input path="firstName" type="text" class="form-control" id="firstName" placeholder="First name"/>
  </div>
  <div class="form-group">
    <label for="lastName">Last Name</label>
    <form:input path="lastName" type="text" class="form-control" id="lastName" placeholder="Last name"/>
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <form:input path="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="email"/>
    
  </div>
  <a class="btn btn-outline-secondary" href="${pageContext.request.contextPath}/customer/list" role="button"><i class="fas fa-arrow-left"></i> Back to list</a> <button type="submit" class="btn btn-outline-success"><i class="far fa-save"></i> Save</button>
</form:form>



</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>