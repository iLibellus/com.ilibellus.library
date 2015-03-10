<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title><g:layoutTitle default="Grails"/></title>
<!-- Bootstrap core CSS-->
		<asset:stylesheet src="application.css"/>
		    
		<g:layoutHead/>
</head>
<body>
<g:render template="/header/mainHeader"></g:render>
<g:layoutBody/>
<g:render template="/footer/mainFooter"></g:render>
<asset:javascript src="application.js"/>
</body>
</html>