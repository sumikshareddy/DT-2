<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>Register</title>
<style type="text/css">
body{
    background-image: linear-gradient(#79a06d, #79a06d); 
}

#box{
    border: 11px solid rgb(200, 200, 200);
    box-shadow: rgba(0, 0, 0, 0.1) 50px 5px 5px 2px;
    background: rgba(200, 200, 200, 0.1);
    border-radius: 1px;
    top:50px;
    width: 500px;
    height:500px;
}

h2{
    text-align:center;
    color:black;
}
</style> 
<body>
<form:form action="store" method="post">	 
 <c:forEach var="e" items="${errors}">
		<li>${e.getDefaultMessage()}" </li>
	</c:forEach> 
	<div class="container-fluid">
                <div class="row-fluid" >
                   
                      
                     <div class="col-md-offset-4 col-md-4" id="box">
                      <h2>Sign Up!</h2>
                       
                            <hr>
                           

                               
                                    <fieldset>
                                        <!-- Form Name -->


                                        <!-- Text input-->

                                        <div class="form-group">
                                             <div class="row nav"></div>
                                             <div class="col-md-4"></div>
                                            <div class="col-md-12 col-xs-12" style="margin:0px;padding:0px;">
                                           <div class="col-md-18 col-xs-12 well"><i class=" "></i> tyuuuu</div>
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                                    <form:input path='firstname' name="fieldUser" placeholder="firstname"  class="input" required="true" readOnly="true"/>
                                                </div>
                                            </div>
                                        </div>
                                        
                                         <div class="form-group">
                                        <div class="col-md-12">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                                    <form:input path='lastname' name="fieldUser" placeholder="lastname"  class="input" required="true" readOnly="true" />
                                                </div>
                                            </div>
                                        </div>
                                         <div class="form-group">

                                            <div class="col-md-12">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                                      <form:input path='mail' name="fieldUser" placeholder="email"  class="input" required="true" readOnly="true"/>
                                                </div>
                                            </div>
                                        </div>


                                  
                                        <!-- Text input-->
                                        <div class="form-group">

                                            <div class="col-md-12">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                                     <form:input path='pwd' name="fieldPassword"  type="password" placeholder="password" class="input" required="true" />
                                                </div>
                                            </div>
                                        </div>


                                        <!-- Text input-->

                                        <div class="form-group">

                                            <div class="col-md-12">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                                                   <form:input path='ph' name="fieldUser" placeholder="mobile"  class="input" required="true" />

                                                </div>
                                            </div>
                                        </div>

                                       

                                        <div class="form-group">

                                            <div class="col-md-12">
										<a href="updateUser?u=${command.uid}">Update User</a>                                     
      								 </div>
                                        </div>

                                    </fieldset>
                                </form>
                    </div> 
</div>
     <%-- <div class="container">
      <div class="profile">
     <button class="profile__siri" id="toggleProfile">
            Register
      </button>
      <div class="profile__form">
        <div class="profile__fields">
          <div class="field">
           <label for="fieldUser" class="label" ></label>
        <form:input path='firstname' name="fieldUser" placeholder="firstname"  class="input" required="true" />
   </div>
   <div class="field">
           <label for="fieldUser" class="label" ></label>
        <form:input path='lastname' name="fieldUser" placeholder="lastname"  class="input" required="true" />
   </div>
   <div class="field">
           <label for="fieldUser" class="label" ></label>
        <form:input path='mail' name="fieldUser" placeholder="email"  class="input" required="true" />
   </div>
    <div class="field">   
    <label for="fieldUser" class="label" ></label>       
      <form:input path='pwd' name="fieldPassword"  type="password" placeholder="password" class="input" required="true" />
       </div>
       <div class="field">
           <label for="fieldUser" class="label" ></label>
        <form:input path='address' name="fieldUser" placeholder="address"  class="input" required="true" />
   </div>
   <div class="field">
           <label for="fieldUser" class="label" ></label>
        <form:input path='ph' name="fieldUser" placeholder="mobile"  class="input" required="true" />
   </div>
       <div class="profile__footer">
      <button type="submit" class="btn btn-success btn-sm">Register</button>
       
       <!--  <button class="btn">Login</button> -->
       </div>
     </div>
     </div>
    </div>
   </div>
 --%>
</form:form>

<div class="footer">
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>