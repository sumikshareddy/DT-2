<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head></head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>about us</title>
<style type="text/css">
html,body {
    height:100%;
    width:100%;
    position:relative;
}
#background-carousel{
	position:fixed;
	width:100%;
	height:100%;
	z-index:-1;
}
.carousel,
.carousel-inner {
	width:100%;
	height:100%;
	z-index:0;
	overflow:hidden;
}
.item {
	width:100%;
	height:100%;
	background-position:center center;
	background-size:cover;
	z-index:0;
}


</style>

<body>

	<div class="header">
		<%@include file="header.jsp"%>
	</div>
	<div id="background-carousel">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <div class="carousel-inner">
        <div class="item active" style="background-image:url(http://lorempixel.com/1200/800/food/1/)"></div>
        <div class="item" style="background-image:url(http://lorempixel.com/1200/800/food/2/)"></div>
        <div class="item" style="background-image:url(http://lorempixel.com/1200/800/food/3/)"></div>  
      </div>
    </div>
</div>
	
	<h2>Its About Us</h2>
	
	<div class="footer">
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>