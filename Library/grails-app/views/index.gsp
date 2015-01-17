<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>iLibellus - your on-line book organizer</title>
<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.css')}" type="text/css">
<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap-responsive.css')}" type="text/css">
<r:external uri="/js/jquery.js"/>
<r:external uri="/js/bootstrap.min.js"/>
<g:javascript library="jquery"/>
</head>
<body>
<div class="container">
    <div class="jumbotron">
        <h1>iLibellus <small>- your on-line book organizer</small></h1>
        <p>iLibellus allows you to store and organize your homelibrary on-line, browse your friends libraries, rate books, write comments
        and buy and sell books in the on-line iLibellus atinquarium! 
        </p>
    </div>

    <div class="row">
    	<div class="col-xs-6 col-md-6 col-lag-6">
    		<h2>${message(code: 'user.register.ask.label', default: 'Need an account?')}</h2>           
            <p><b>Sign up now</b> to start your own personal library.</p>
            <g:link action="register" controller="user">
				<input type="button" class="btn btn-success" value="${message(code: 'user.register.label', default: 'Register')} &raquo;"/>
			</g:link>
		</div>
        <div class="col-xs-6 col-md-6 col-lg-2 col-lg-push">
            <h2>${message(code: 'user.already.member.label', default: 'Already a member')}</h2>
            <p>Log in to your iLibellus account.</p>
          
            <div class='login'>
            <g:if test='${flash.message}'>
                <div class='alert alert-error'>${flash.message}</div>
            </g:if>
            <div>
         
                <div>
                <fieldset>
                    <form action='${postUrl}' role="form" method='POST' id='loginForm' class='form-horizontal' autocomplete='off' >               
                        <div style="margin-bottom: 10px" class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
							<input id="username" type="text" class="form-control" name="j_username" value="" placeholder="${message(code: "springSecurity.login.username.label")}">                                        
                       </div>
                       <div style="margin-bottom: 10px" class="input-group">
                       		<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                            <input id="password" type="password" class="form-control" name="j_password" placeholder="${message(code: "springSecurity.login.password.label")}">
						</div>
                        <div class="checkbox">
    					<label>
      						<input type="checkbox"> 
      						<g:message code="springSecurity.login.remember.me.label"/>
      						<g:if test='${hasCookie}'>checked='checked'</g:if>
    					</label>
    					 <input class="btn btn-success pull-right" type='submit' id="submit" value='${message(code:"springSecurity.login.button")}'/>
  						</div>
                    </form>
                    </fieldset>
        		</div>
        	</div>
        </div>
	</div>
</div>
</body>
</html>