<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<r:require modules="bootstrap"/>
		<r:layoutResources/>
		<g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class="container">
		
			<a href="#create-book" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
			<g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
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
			
			<g:form url="[resource:bookInstance, action:'save']" role="form" class='form-horizontal' enctype="multipart/form-data">
				<fieldset class="form-horizontal">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="form-actions">
					<g:submitButton name="create" class="btn btn-success" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
