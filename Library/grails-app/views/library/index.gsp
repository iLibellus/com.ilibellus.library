
<%@ page import="com.ilibellus.library.Library" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-type" content="text/html; charset=utf-8">
		<meta name="layout" content="main">
		<title>iLibellus Library</title>
	</head>
    <body id="body">
        <h1>Your online antiquarian and storage service!</h1>
        <p>Manage your own library, browse used books and purchase books as they
           become available</p>
	</body>
		
	<!-- Login -->
	<div id="loginBox" class="loginBox">
	  <g:if test="${session?.user}">
	    <div style="margin-top:20px">
	      <div style="float:right;">
	        <a href="#">Profile</a> | <g:link controller="user"
	                                   action="logout">Logout</g:link><br>
	      </div>
	      Welcome back
	      <span id="userFirstName">
	        ${session?.user?.userName}!
	      </span><br><br>
	      You have 
		<!-- Add here info about recieved messages and notifications about books under watch-->



	    </div>
	  </g:if>
	  <g:else>
	    <g:form
	      name="loginForm"
	      url="[controller:'user',action:'login']">
	      <div>Username:</div>
	      
	      <!--  
	      <g:textField name="login"
	                   value="
	                  
	      </g:textField>
	      -->
	      <div>Password:</div>
	      <g:passwordField name="password"></g:passwordField>
	      <br/>
	      <input  type="image"
	          src="${createLinkTo(dir:'images', file:'login-button.gif')}"
	          name="loginButton" id="loginButton" border="0"></input>
	    </g:form>
	    <!--  
	    <g:renderErrors bean=></g:renderErrors>
	  	-->
	  </g:else>
	</div>
	
	<!-- Register -->
	<div id="navPane">
      <g:if test="${session.user}">
        <ul>
          <li><g:link controller="user"
                      action="books">My Library</g:link></li>
          <li><g:link controller="marketplace"
                      action="browse">The Marketplace</g:link></li>
        </ul>
      </g:if>
      <g:else>
        <div id="registerPane">
          Need an account?
            <g:link controller="user"
                    action="register">Signup now</g:link>
          to start your own personal Library!
        </div>
      </g:else>
</div>
</html>
