<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class="container">
          <!-- Sub Navigation Begin -->
		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
				<ul class="nav nav-pills">
					<li>
					  	<a class="small button secondary" href="${createLink(uri: '/')}">
					  		<span class="glyphicon glyphicon-home"></span>
					 		<g:message code="default.home.label"/>
					 	</a>
				  	</li>
					<li>
						<g:link class="small button secondary" action="index">
					    	<span class="glyphicon glyphicon-list"></span>
					     	<g:message code="default.list.label" args="[entityName]" />
						</g:link>
					</li>
				</ul>
			</div>
		</div>
		<!-- Sub Navigation End -->
		<div id="create-book" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${bookInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${bookInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form action="save" class="form-horizontal" enctype="multipart/form-data">
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>
	</div>
	</body>
</html>
