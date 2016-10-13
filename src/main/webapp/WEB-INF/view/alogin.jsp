<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>alogin</title>
</head>
<body>
<div class="container">
<h2 class="form-signin-heading">Sign In</h2>
<form name='f' action='/scart/login' method='POST' class="form-signin">
              <label for="inputEmail" class="sr-only">Email address</label>
              <input type='text' name='username' id="inputEmail" class="form-control" placeholder="Email address" required autofocus><br/>
              <label for="inputPassword" class="sr-only">Password</label>
              <input type='password' name='password' id="inputPassword" class="form-control" placeholder="Password" required/>
                           <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> Remember me
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
        New User? click <a href="UserRegister" >here</a>
</form>
</div>

<!-- <div class="main-login main-center">
                                                                    <form:form class="form-horizontal" method="post" commandName="applicationUser" action="addUser">
                                                      
                                                                                  <div class="form-group">"src/main/webapp/WEB-INF/views/login.jsp"
                                                                                                <label for="username" class="cols-sm-2 control-label">Write your user name</label>
                                                                                                <div class="cols-sm-10">
                                                                                                             <div class="input-group">
                                                                                                                           <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                                                                                                                           <form:input type="text" class="form-control" path="username" id="username"  placeholder="Enter your Username"/>
                                                                                                             </div>
                                                                                                </div>
                                                                                  </div>
                                                                                  <div class="form-group">
                                                                                                <label for="password" class="cols-sm-2 control-label">Type your password</label>
                                                                                                <div class="cols-sm-10">
                                                                                                             <div class="input-group">
                                                                                                                           <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                                                                                                           <form:input type="password" class="form-control" path="password" id="password"  placeholder="Enter your Password"/>
                                                                                                             </div>
                                                                                                </div>
                                                                                  </div>
                                                                                  <div class="form-group ">
                                                                                                <input type="submit" class="btn btn-primary btn-lg btn-block login-button" value="Sign In Me!!!"/>
                                                                                  </div>
                                                                    </form:form>
                                                       </div>
 -->                                                       </body>
<%-- <body onload='document.f.j_username.focus();'>
 
<div>
 
<center><img src="<c:url value="/resources/images/auth.jpg"/>" style="width: 400px"; height="300px"></center>
<hr></hr> 
<c:if test="${SPRING_SECURITY_LAST_EXCEPTION !=null}">
<div>
<center>Your login attempt was not successful, try again!!
caused:${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}</center>
</div>
</c:if>
<div>
<br></br>
</div>
    <div align="center" class="form">
   <form name='f' action="<c:url value="j_spring_security_check"/>" method='POST' >
      <table>
         <tr>
           <td style="font-size: 20px">Enter email:</td> <td><input type='text' name='j_username' style="width:300px;height: 40px" placeholder="UserName Required"  required="required"/></td><td><br></br></td>
         </tr>
         <tr><td><br></br></td></tr>
         <tr>
           <td style="font-size: 20px">Enter Password:</td> <td><input type='password' name='j_password' style="width: 300px;height: 40px" placeholder="Password Required" required="required"/></td><td><br></br></td>
         </tr>
          <tr><td><br></br></td></tr>
         <tr>
            <td><input name="submit" type="submit" value="submit" /></td>
         </tr>
      </table>
  </form>
  
</div>
</div>

</body>
 --%>
<%--  <center>
		   <div id="email_form">
		   <form name='f' action="<c:url value='j_spring_security_check'/>" method='POST' >
     <input type='text' name='j_username' />
           <input type='password' name='j_password' />
           <input name="submit" type="submit" value="submit" />
  </form>
          
	</center>
	</center>

	
	        <div class="footer">
		         <%@include file="footer.jsp"%>
	<!--  --></div>
 --%>
</html>