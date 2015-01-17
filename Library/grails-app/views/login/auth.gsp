<html>
<head>
    <meta name='layout' content='main'/>
    <r:require modules="bootstrap"/>
    <title><g:message code="springSecurity.login.title"/></title>
</head>
<div class='container'>
	<g:if test='${flash.message}'>
		<div class='alert alert-error'>${flash.message}</div>
    </g:if>
	<div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">

            	<div class="row centered-form">
            		<div class="col-sm-6-md6-lg6">
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

</html>