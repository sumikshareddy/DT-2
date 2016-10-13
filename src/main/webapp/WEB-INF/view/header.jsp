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
<title>kars</title>

<style>
.my-navbar{
    background-color:black;
    color:#FFFAF0;
    border-radius:0;
} 
 .open > .dropdown-menu {
  -webkit-transform: scale(1, 1);
  transform: scale(1, 1);  
  opacity:1;
}
.container-fluid ul li{
		padding: 0px 15px 0px 15px;
	}
	#custom-search-input{
    padding: 2px;
    border: solid 1px #E4E4E4;
    border-radius: 6px;
    background-color: #fff;
    width: 400px;
    
}
#custom-search-input input{
    border: 0;
    box-shadow: none;
}
#custom-search-input button{
    margin: 2px 0 0 0;
    background: none;
    box-shadow: none;
    border: 0;
    color: #666666;
    padding: 0 8px 0 10px;
    border-left: solid 1px #ccc;
}
#custom-search-input button:hover{
    border: 0;
    box-shadow: none;
    border-left: solid 1px #ccc;
}
#custom-search-input .glyphicon-search{
    font-size: 23px;
}
.container{
	margin: 10px auto;
	text-align: justify;
	background-color: #093d2f;
	padding: 15px 15px 15px 15px;
	box-shadow: 0px 0px 10px #cccccc;
}
.container table tr td{
	padding: 15px 15px 15px 15px;
} 
  
/* .dropdown-menu {
  opacity:.3;
  -webkit-transform-origin: top;
  transform-origin: top;
  -webkit-animation-fill-mode: forwards;  
  animation-fill-mode: forwards; 
  -webkit-transform: scale(1, 0);
  transition: all 0.3s linear;
  -webkit-transition: all 0.3s linear;
}
    */
 </style>
 </head>
   <body>

 <div class="continer"> 
   <div id="header">
		<h2 style="text-align:center;">Kars</h2>
	</div>	
	<ul class="nav nav-tabs my-navbar">
       <li><a href="home">Home</a></li>
       <li><a href="aboutUs">About us</a></li>
       <li><a href="contactUs">contact us</a></li>
    
     <!-- <ul class="nav navbar-nav" style="float: right;">  -->  
      <li>
      	<div id="custom-search-input">
                <div class="input-group col-md-12">
                    <input type="text" class="form-control input-lg" placeholder="Search Products" />
                    <span class="input-group-btn">
                        <button class="btn btn-info btn-lg" type="button">
                            <i class="glyphicon glyphicon-search"></i>
                        </button>
                    </span>
          
                </div>
          </div>
          
      </li>
      </ul>

	<c:if test="${empty Welcome}">
	   <div style="float: right; position: absolute; top: 0px; right: 90px;"><a href="login"><span class="glyphicon glyphicon-log-in"></span>Login</a><br></div>
	   <div style="float: right; position: absolute; top: 0px; right: 20px;"><a href="register"><span class="glyphicon glyphicon-user"></span>Register</a></div>
	</c:if>
    <c:if test="${not empty Welcome}">
    	<div style="float:right; position:fixed; top: 75px; right:180px; left:280px;"><a href="storecart"><span class="glyphicon glyphicon-shopping-cart"></span>cart</a></div>
	   <div style="float: right; position: absolute; top: 75px; right:135px;"><a href="login"><span class="glyphicon glyphicon-user"></span>Welcome ${Welcome.firstname} ${Welcome.lastname}!!</a><br></div>
	   <!-- <div style="float: right; position: absolute; top: 75px; right:70px;"><a href="index"><span class="glyphicon glyphicon-log-in"></span>Logout</a><br></div> -->
	  <div style="float: right; position: absolute; top: 75px; right:70px;"> 
   <li class="dropdown "><a href="#" id="drop1" data-toggle="dropdown" class="dropdown-toggle" role="button">Profile <b class="caret"></b></a>
            <ul role="menu" class="dropdown-menu" aria-labelledby="drop1">
                <li role="presentation"><a href="myProfile" role="menuitem">Myprofile</a></li>
                <li role="presentation"><a href="storecart"><span class="glyphicon glyphicon-shopping-cart"></span>cart</a><br></li>
                <li role="presentation"><a href="home"><span class="glyphicon glyphicon-log-out"></span>Logout</a><br></li>
            </ul>
            
        </li>
        
       
</div>

	   
	</c:if>
	
	
  
</div> 
<script>
$(function(){
    $(".dropdown").hover(            
            function() {
                $('.dropdown-menu', this).stop( true, true ).fadeIn("fast");
                $(this).toggleClass('open');
                $('b', this).toggleClass("caret caret-up");                
            },
            function() {
                $('.dropdown-menu', this).stop( true, true ).fadeOut("fast");
                $(this).toggleClass('open');
                $('b', this).toggleClass("caret caret-up");                
            });
    });</script>
	
</body>
</html>