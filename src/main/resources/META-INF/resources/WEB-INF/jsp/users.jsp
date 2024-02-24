<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>index page</title>
<!-- <link rel="stylesheet" -->
<!-- 	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" -->
<!-- 	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" -->
<!-- 	crossorigin="anonymous"> -->
<!-- <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" -->
<!-- 	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" -->
<!-- 	crossorigin="anonymous"></script> -->
<!-- <script -->
<!-- 	src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" -->
<!-- 	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" -->
<!-- 	crossorigin="anonymous"></script> -->
<!-- <script -->
<!-- 	src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" -->
<!-- 	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" -->
<!-- 	crossorigin="anonymous"></script> -->

</head>
<body>

	<c:if test="${id=='error'}">


	</c:if>
	
	<c:if test="${id=='success'}">

		<h1>test success</h1>

	</c:if>


	<c:choose>
	    <c:when test="${id=='error'}">
	        
		<div>
			<p>${error}</p>
			<p>${errorInfo}</p>

		</div>
	    </c:when>    
	    <c:otherwise>
	      
	      <c:forEach items="${userList}" var="user">
	      		<tr>
	      			<td>Name ${user.name}</td>
	      			<br>
	      			<td>${user.age}</td>
	      			<br>
	      			<td>${user.phoneNumber}</td>
	      			<br>
	      			<td>${user.address}</td>
	      			<br>
	      		</tr>
	      
	      </c:forEach>
	      
	      
	    </c:otherwise>
	</c:choose>



</body>
</html>