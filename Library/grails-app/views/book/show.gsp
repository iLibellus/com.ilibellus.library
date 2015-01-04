
<%@ page import="com.ilibellus.library.Book" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-book" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-book" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list book">
			
				<g:if test="${bookInstance?.titel}">
				<li class="fieldcontain">
					<span id="titel-label" class="property-label"><g:message code="book.titel.label" default="Titel" /></span>
					
						<span class="property-value" aria-labelledby="titel-label"><g:fieldValue bean="${bookInstance}" field="titel"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.language}">
				<li class="fieldcontain">
					<span id="language-label" class="property-label"><g:message code="book.language.label" default="Language" /></span>
					
						<span class="property-value" aria-labelledby="language-label"><g:fieldValue bean="${bookInstance}" field="language"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.owner}">
				<li class="fieldcontain">
					<span id="owner-label" class="property-label"><g:message code="book.owner.label" default="Owner" /></span>
					
						<span class="property-value" aria-labelledby="owner-label"><g:link controller="owner" action="show" id="${bookInstance?.owner?.id}">${bookInstance?.owner?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.editionYear}">
				<li class="fieldcontain">
					<span id="editionYear-label" class="property-label"><g:message code="book.editionYear.label" default="Edition Year" /></span>
					
						<span class="property-value" aria-labelledby="editionYear-label"><g:fieldValue bean="${bookInstance}" field="editionYear"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.origLanguage}">
				<li class="fieldcontain">
					<span id="origLanguage-label" class="property-label"><g:message code="book.origLanguage.label" default="Orig Language" /></span>
					
						<span class="property-value" aria-labelledby="origLanguage-label"><g:fieldValue bean="${bookInstance}" field="origLanguage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.publishedYear}">
				<li class="fieldcontain">
					<span id="publishedYear-label" class="property-label"><g:message code="book.publishedYear.label" default="Published Year" /></span>
					
						<span class="property-value" aria-labelledby="publishedYear-label"><g:fieldValue bean="${bookInstance}" field="publishedYear"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.publisher}">
				<li class="fieldcontain">
					<span id="publisher-label" class="property-label"><g:message code="book.publisher.label" default="Publisher" /></span>
					
						<span class="property-value" aria-labelledby="publisher-label"><g:fieldValue bean="${bookInstance}" field="publisher"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.rating}">
				<li class="fieldcontain">
					<span id="rating-label" class="property-label"><g:message code="book.rating.label" default="Rating" /></span>
					
						<span class="property-value" aria-labelledby="rating-label"><g:fieldValue bean="${bookInstance}" field="rating"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:bookInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${bookInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
