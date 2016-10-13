<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Kars</title>
 <style>
 body {
 background: linear-gradient(to bottom, #68EACC 0%, #497BE8 100%);
 }
.carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      
      margin: auto;
       width:100%;
  max-height: 400px;
 
    
   right:100px;
  }
  
  .btn-link{
  	padding :20px 20px 20px 20px;
  }
  img.resize{
   width:300px;
   height:200px;
}
img.resize{
   max-width:80%;
   max-height:40%;
}

marquee>a, marquee>a:hover{color:#000; text-decoration:none;}
.productbox {
    width:250px;
    height:auto;
    background-color:#ffffff;
    padding:10px;
	margin-bottom:10px;
	 padding: 10px;
        -webkit-border-radius: 3px;
        -moz-border-radius: 3px;
        border-radius: 3px;
        background-color: #fff;
        border: solid 1px #cbcbcb;
        transition: all .20s ease-in-out;
}
.productbox img{
    width:235px;
    height:214px;
    }
.producttitle {
    font-weight:bold;
	padding:5px 0 5px 0; 
   width: 235px;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
    
}
.producttitle a{
   color:#000;
   text-decoration:none;
    }
.producttitle .btn{
    background-color:#EDEEF0;
}  </style>
</head>
<body >

<%@include file="header.jsp"%>
	
	<%-- <div class="container-fluid" >
				<div style="width:100%;background-color:grey;">
					<c:forEach var="c" items="${Categorys}">
						<a href="products?c=${c.cid}" class="btn-link">${c.cname}</a> | 
					</c:forEach>
				</div>
	</div> --%>
			

<div class="col-mid-8">
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
        <img src="<c:url value="resources\project\60.jpg"/>" alt="" width="460" height="345">
      </div>

      <div class="item">
        <img src="<c:url value="resources\project\61.jpg"/>" alt="" width="460" height="345">
      </div>
    
      <div class="item">
        <img src="<c:url value="resources\project\62.jpg"/>" alt="" width="460" height="345">
      </div>

      <div class="item">
        <img src="<c:url value="resources\project\63.jpg"/>" alt="" width="460" height="345">
      </div>
    </div>


    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" arial-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
  </div>
  <marquee style="  scrollamount="" scrolldelay="90" direction="left" onmouseover="this.stop()" onmouseout="this.start()">
						<a href="products?c=${c.cid}" class="btn-link">${c.cname}</a> |  
					
 <ul class="list-inline list-unstyled r">
<li class="productbox">
    <img src="<c:url value="resources\project\70.jpg"/>"  class="img-responsive">
    <div class="producttitle">BUGATTI</div> 
</li>
<li class="productbox">
    <img src="<c:url value="resources\project\71.jpg"/>" class="img-responsive">
    <div class="producttitle"> FERRARI</div> 
</li> 
<li class="productbox">
    <img src="<c:url value="resources\project\72.jpg"/>" class="img-responsive">
    <div class="producttitle"> INFINITI</div> 
</li>
<li class="productbox">
    <img src="<c:url value="resources\project\73.jpg"/>" class="img-responsive">
    <div class="producttitle">ROLLS ROYACE</div> 
</li>
<li class="productbox">
    <img src="<c:url value="resources\project\74.jpg"/>" class="img-responsive">
    <div class="producttitle"> lambhorgini</div> 
</li>
</ul><br>
</marquee>


 <div class="footer">
<%@include file="footer.jsp"%>
</div>
 
</body>
</html>