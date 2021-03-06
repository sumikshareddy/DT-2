<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<title>poetry</title>
<head>
<style>
.col-md-3 {
    background-color:#ffffff;
	padding:60px;
	margin-bottom:10px;
	 -webkit-box-shadow: 0 8px 6px -6px  #999;
	   -moz-box-shadow: 0 8px 6px -6px  #999;
	        box-shadow: 0 8px 6px -6px #999; 
}

.producttitle {
    font-weight:bold;
	padding:5px 0 5px 0;
}

.productprice {
	border-top:1px solid #dadada;
	padding-top:5px;
}

.pricetext {
	font-weight:bold;
	font-size:1.4em;
}
img.resize{
   width:300px;
   height:200px;
}
img.resize{
   max-width:80%;
   max-height:40%;
}
</style>
</head>
<body>
<%@include file="header.jsp" %>

<div class="col-md-3 column productbox">
    <img class="resize"src="C:\Users\sumiksha reddy\shopkhoj\scart\src\main\webapp\resources\project\poetry\22.jpg" class="img-responsive">
    <div class="producttitle">The Odyssey</div>
    <div class="productprice"><div class="pricetext">�18.95</div></div>
    <div class="pull-left"><a href="productdetails" class="btn btn-danger btn-sm" role="button">More Details</a></div>
    <div class="pull-right"><a href="productdetails" class="btn btn-danger btn-sm" role="button">BUY</a></div>
</div>
<div class="col-md-3 column productbox">
    <img class="resize"src="C:\Users\sumiksha reddy\shopkhoj\scart\src\main\webapp\resources\project\poetry\23.jpg" class="img-responsive">
    <div class="producttitle"> The Aeined</div>
    <div class="productprice"><div class="pricetext">�20.95</div></div>
    <div class="pull-left"><a href="productdetails" class="btn btn-danger btn-sm" role="button">More Details</a></div>
    <div class="pull-right"><a href="productdetails" class="btn btn-danger btn-sm" role="button">BUY</a></div>
</div>
<div class="col-md-3 column productbox">
    <img class="resize"src="C:\Users\sumiksha reddy\shopkhoj\scart\src\main\webapp\resources\project\poetry\24.jpg" class="img-responsive">
    <div class="producttitle">pruf rocks</div>
    <div class="productprice"><div class="pricetext">�10.95</div></div>
    <div class="pull-left"><a href="productdetails" class="btn btn-danger btn-sm" role="button">More Details</a></div>
    <div class="pull-right"><a href="productdetails" class="btn btn-danger btn-sm" role="button">BUY</a></div>
</div>
<div class="col-md-3 column productbox">
    <img class="resize"src="C:\Users\sumiksha reddy\shopkhoj\scart\src\main\webapp\resources\project\poetry\25.jpg" class="img-responsive">
    <div class="producttitle">Leaves Of Grass</div>
    <div class="productprice"><div class="pricetext">�9.95</div></div>
    <div class="pull-left"><a href="productdetails" class="btn btn-danger btn-sm" role="button">More Details</a></div>
    <div class="pull-right"><a href="productdetails" class="btn btn-danger btn-sm" role="button">BUY</a></div>
</div>
<div class="col-md-3 column productbox">
    <img class="resize"src="C:\Users\sumiksha reddy\shopkhoj\scart\src\main\webapp\resources\project\poetry\26.jpg" class="img-responsive">
    <div class="producttitle">cats</div>
    <div class="productprice"><div class="pricetext">�8.95</div></div>
    <div class="pull-left"><a href="productdetails" class="btn btn-danger btn-sm" role="button">More Details</a></div>
    <div class="pull-right"><a href="productdetails" class="btn btn-danger btn-sm" role="button">BUY</a></div>
</div>
<div class="col-md-3 column productbox">
    <img class="resize"src="C:\Users\sumiksha reddy\shopkhoj\scart\src\main\webapp\resources\project\poetry\27.jpg" class="img-responsive">
    <div class="producttitle">The Flowers Of Evil</div>
    <div class="productprice"><div class="pricetext">�20.95</div></div>
        <div class="pull-left"><a href="productdetails" class="btn btn-danger btn-sm" role="button">More Details</a></div>
        <div class="pull-right"><a href="productdetails" class="btn btn-danger btn-sm" role="button">BUY</a></div>
</div>
<div class="col-md-3 column productbox">
    <img class="resize"src="C:\Users\sumiksha reddy\shopkhoj\scart\src\main\webapp\resources\project\poetry\28.jpg" class="img-responsive">
    <div class="producttitle">Four Quaters</div>
    <div class="productprice"><div class="pricetext">�30.95</div></div>
     <div class="pull-left"><a href="productdetails" class="btn btn-danger btn-sm" role="button">More Details</a></div>
        <div class="pull-right"><a href="productdetails" class="btn btn-danger btn-sm" role="button">BUY</a></div>
</div>
<div class="col-md-3 column productbox">
    <img class="resize"src="C:\Users\sumiksha reddy\shopkhoj\scart\src\main\webapp\resources\project\poetry\29.jpg" class="img-responsive">
    <div class="producttitle">The Waste Land</div>
    <div class="productprice"><div class="pricetext">�39.95</div></div>
     <div class="pull-left"><a href="productdetails" class="btn btn-danger btn-sm" role="button">More Details</a></div>
        <div class="pull-right"><a href="productdetails" class="btn btn-danger btn-sm" role="button">BUY</a></div>
</div>

<%@include file="footer.jsp" %>
</body>


</html>