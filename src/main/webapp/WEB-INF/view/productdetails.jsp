<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script
	src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<title> product details</title><head>
<style>
</style>

</head>
<body>
<%@include file="header.jsp"%>
<c:forEach var="p" items="${productdetails}"></c:forEach>
<div class="container-fluid">
    <div class="content-wrapper">	
		<div class="item-container">	
			<div class="container">	
			<div class="container">
    <div class="row">
        <div class="col-sm-12 col-md-10 col-md-offset-1">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Product</th>
                        <th class="text-center">Price</th>
                        <th> </th>
                    </tr>
                    
                </thead>
                
               
                    <tr>
                        <td class="col-sm-8 col-md-6">
                        <div class="media">
                            <a class="thumbnail pull-left" href="#"> <img class="media-object" src="<c:url value="/resources/project/${p.pname}.jpg"/>" style="width: 72px; height: 72px;"> </a>
                            <div class="media-body">
                                <h4 class="media-heading"><a href="#">${p.pname}</a></h4>
                                <h5 class="media-heading"> by <a href="#">${p.desc}</a></h5>
                                
                            </div>
                        </div></td>
                        <td class="col-sm-1 col-md-1 text-center"><strong>${p.price}</strong></td>
                        <td class="col-sm-1 col-md-1">
                       <div class="btn-group cart">
						<a href="storecart?p=${p.pid}" class="btn btn-primary btn-sm" role="button">Add To Cart</a>
					</div>
					
                    </tr>
                   </table>
                   </div>
                   </div>
                   </div>
                   </div>
                   </div>
                   </div>
                   </div>
                   
                   	<div class="footer">
		<%@include file="footer.jsp"%>
	</div>
				</body>
				</html>