<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<title>Book Store</title>
<style>
.carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      
      margin: auto;
       width:100%;
  max-height: 400px;
  }
  
  img.resize{
   width:200px;
   height:200px;
}
img.resize{
   max-width:200%;
   max-height:200%;
}
.col-md-3 {
    background-color:#ffffff;
	padding:60px;
	margin-bottom:10px;
	 -webkit-box-shadow: 0 8px 6px -6px  #999;
	   -moz-box-shadow: 0 8px 6px -6px  #999;
	        box-shadow: 0 8px 6px -6px #999; 
}
  }

</style>
</head>
<body>
   <div id="header">
		<h2 style="text-align: center;">
			Book Store
		</h2>
		</div>
	<div style="float: right; position: fixed; top: 0px; right: 20px;">
		<a href="logout"><span class="glyphicon glyphicon-user"></span>logout</a>
	</div>
	<ul class="nav nav-tabs my-navbar">
    <li><a href="home">Home</a></li>
    <li><a href="aboutUs">About us</a></li>
    <li><a href="contactUs">contact us</a></li>
   
</ul>
	<div style="float: right; position: fixed; top: 80px; right: 70px;">
	<c:if test="${not empty Welcome}">
		Welcome ${Welcome.firstname} ${Welcome.lastname}!!
	</c:if>
	</div>
	<div style="float: right; position: fixed; top: 75px; right: 50px;">
	<a href="cart">
          <span class="glyphicon glyphicon-shopping-cart"></span>
        </a>
        </div>
        <div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="C:\Users\sumiksha reddy\shopkhoj\scart\src\main\webapp\resources\project\carose\30.jpg" alt="Chania" width="460" height="345">
      </div>

      <div class="item">
        <img src="C:\Users\sumiksha reddy\shopkhoj\scart\src\main\webapp\resources\project\carose\33.jpg" alt="Chania" width="460" height="345">
      </div>
    
      <div class="item">
        <img src="C:\Users\sumiksha reddy\shopkhoj\scart\src\main\webapp\resources\project\carose\34.jpg" alt="Flower" width="460" height="345">
      </div>

      <div class="item">
        <img src="C:\Users\sumiksha reddy\shopkhoj\scart\src\main\webapp\resources\project\carose\40.jpg" alt="Flower" width="460" height="345">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
  </div>	<div class="col-md-3 column productbox">
	<a class="mod-content" href="horror">
    <img class="resize"src="C:\Users\sumiksha reddy\shopkhoj\scart\src\main\webapp\resources\project\product\52.jpg" class="img-responsive">
   </a>
    <div class="producttitle">HORROR</div> 
   
</div>
<div class="col-md-3 column productbox">
 <a class="mod-content" href="poetry"> 
    <img class="resize"src="C:\Users\sumiksha reddy\shopkhoj\scart\src\main\webapp\resources\project\product\53.jpg" class="img-responsive">
   </a>
    <div class="producttitle"> POETRY</div> 
   
</div>
<div class="col-md-3 column productbox">
 <a class="mod-content" href="fiction"> 
    <img class="resize"src="C:\Users\sumiksha reddy\shopkhoj\scart\src\main\webapp\resources\project\product\54.jpg" class="img-responsive">
   </a>
   
	  <div class="producttitle">FICTION</div>
   
</div>
<div class="col-md-3 column productbox">
 <a class="mod-content" href="history"> 
    <img class="resize"src="C:\Users\sumiksha reddy\shopkhoj\scart\src\main\webapp\resources\project\product\55.jpg" class="img-responsive">
   </a>
     <div class="producttitle">HISTORY</div> 
   
</div>
<div class="col-md-3 column productbox">
 <a class="mod-content" href="comic">
    <img class="resize"src="C:\Users\sumiksha reddy\shopkhoj\scart\src\main\webapp\resources\project\product\56.jpg" class="img-responsive">
 </a>
    <div class="producttitle">COMIC</div>
    
</div>
        
	
</body>
</html>