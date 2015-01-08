<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>iLibillus - your on-line book organizer</title>
<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.css')}" type="text/css">
<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap-responsive.css')}" type="text/css">
<r:external uri="/js/jquery.js"/>
<r:external uri="/js/bootstrap.min.js"/>
</head>
<body>
<div class="container">
    <div class="jumbotron">
        <h1>iLibillus <small>- your on-line book organizer</small></h1>
        <p>iLibillus allows you to store and organize your homelibrary on-line, browse your friends libraries, rate books, write comments
        and buy and sell books in the on-line iLibillus atinquarium! 
        </p>
    </div>
    <div class="row">
        <div class="col-xs-6 col-md-6 col-lg-6">
            <h2>${message(code: 'user.register.ask.label', default: 'Need an account?')}</h2>
            
            <p><h4>Sign up now</h4> to start your own personal library.</p>
            <p><a href="${createLink(uri: '/register')}" target="_blank" class="btn btn-success">${message(code: 'user.register.label', default: 'Register')} &raquo;</a></p>
            <a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
        </div>
        <div class="col-xs-6-md-6 col-lg-2">
            <h2>${message(code: 'user.already.member.label', default: 'Already a member')}</h2>
            <p>Log in to your iLibellus account.</p>
            <p><a href="http://www.tutorialrepublic.com/css-tutorial/" target="_blank" class="btn btn-success">${message(code: 'user.login.label', default: 'Login')}</a></p>
            
            
            <div class='login'>
            <g:if test='${flash.message}'>
                <div class='alert alert-error'>${flash.message}</div>
            </g:if>
            <div class="row span12">
                <legend><g:message code="springSecurity.login.header"/></legend>
                <div class="span6">
                    <form action='${postUrl}' method='POST' id='loginForm' class='form-horizontal' autocomplete='off'>
                        <div class="control-group">
                            <label class="control-label" for='username'><g:message code="springSecurity.login.username.label"/>:</label>
                            <div class="controls">
                                <input type='text' class='text_' name='j_username' id='username'/>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for='password'><g:message code="springSecurity.login.password.label"/>:</label>
                            <div class="controls">
                                <input type='password' class='text_' name='j_password' id='password'/>
                            </div>
                        </div>
                        <div class="control-group" id="remember_me_holder">
                            <div class="controls">
                                <label class="checkbox" for='remember_me'><g:message code="springSecurity.login.remember.me.label"/>
                                    <input type='checkbox' name='${rememberMeParameter}' id='remember_me'
                                           <g:if test='${hasCookie}'>checked='checked'</g:if>/>
                                </label>
                                <input class="btn btn-primary" type='submit' id="submit" value='${message(code: "springSecurity.login.button")}'/>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
    </div>
        </div>
	</div>
</div>
</body>
</html>