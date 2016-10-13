<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<title>Book Store</title>
<style>
li a:hover {
    background-color: #555;
    color: white; 
</style>


<body>
	
		
		<%@include file="header.jsp" %>
	<%-- <c:if test="${not empty Welcome}">
		Welcome ${Welcome.firstname} ${Welcome.lastname}!!
	</c:if> --%>
	
		<c:if test="${userRole=='isAdmin'}">
			<%@include file="adminpg.jsp" %>
		</c:if>
		<c:if test="${userRole=='isSupplier'}">
			<%@include file="confirm.jsp" %>
		</c:if>
	 <c:if test="${login==true}">
		<%@include file="login.jsp" %>
	</c:if>
	<c:if test="${register==true}">
		<%@include file="register.jsp" %>
	</c:if> 
		
	
			 <c:forEach var="c" items="${Categorys}">
					<a href="products?c=${c.cid}" class="list-group-item"> ${c.cname}</a> 
				</c:forEach>  

</body>
</head>
</html>