<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Result</title>
</head>
<body>
	<c:forEach items="{list}" var="customer">
id:${customer.id}
name:${customer.name}
type:${customer.type}
phone: ${customer.phone}
street: ${customer.street}
city: ${customer.city}
country: ${customer.country}
</c:forEach>
	<a href="addCustomer">Add New Customer</a>
	<br>
	<a href="update">Edit Customer</a>
	<br>
	<a href="search">Search Customer</a>
	<br>
	<a href="delete">Delete Customer</a>
	<br>
</body>
</html>

