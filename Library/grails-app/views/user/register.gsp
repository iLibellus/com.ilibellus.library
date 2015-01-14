<%@ page import="com.ilibellus.library.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<r:require modules="bootstrap"/>
	</head>
<div class="container">
        <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title">Sign up for iLibellus <small>It's free!</small></h3>
			 			</div>
			 			<div class="panel-body">
			    		<form role="form" action="handleRegistration" method="post">
			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			                <input type="text" name="firstName" id="firstName" class="form-control input-sm" placeholder="First Name" value="${user?.firstName}">
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="text" name="lastName" id="lastName" class="form-control input-sm" placeholder="Last Name" value="${user?.lastName}">
			    					</div>
			    				</div>
			    			</div>
							
							<div class="row">
								<div class="col-xs-6 col-sm-6 col-md-6">
				    				<div class="form-group">
				    					<input type="text" name="username" id="username" class="form-control input-sm" placeholder="Username" value="${user?.username}">
				    				</div>
								</div>
								<div class="col-xs-6 col-sm-6 col-md-6">
				    				<div class="form-group">
				    					<input type="email" name="email" id="email" class="form-control input-sm" placeholder="Email Address" value="${user?.email}">
				    				</div>
								</div>
							</div>
							
			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="password" name="password" id="password" class="form-control input-sm" placeholder="Password" value="${user?.password}">
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="password" name="confirm" id="confirm" class="form-control input-sm" placeholder="Confirm Password" value="${user?.confirm}">
			    					</div>
			    				</div>
			    			</div>
			    			<g:link action="handleRegistration" controller="user">
			    				<input type="submit" name="handleRegistration" id="submit_register" class="btn btn-info btn-block" value="${message(code: 'user.register.label', default: 'Register')}">
			    			</g:link>
			    		</form>
			    	</div>
	    		</div>
    		</div>
    	</div>
    </div>
</html>