
<%@ page import="com.ilibellus.library.Book" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="container-fluid">
            <div class="nav" role="navigation">
                <ul class="nav nav-pills">
                    <li class="active"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                    <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                    <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                </ul>
        </div>
		<div id="show-book" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="alert alert-success" role="status">${flash.message}</div>
			</g:if>
			<ul class="property-list book">
			
				<g:if test="${bookInstance?.titel}">
				<dl class="dl-horizontal">
                        <dt id="titel-label"><g:message code="book.titel.label" default="Titel" /></dt>
                        
                            <dd class="property-value" aria-labelledby="titel-label"><g:fieldValue bean="${bookInstance}" field="titel"/></dd>
                        
                    </dl>
				</g:if>
			
				<g:if test="${bookInstance?.language}">
				<dl class="dl-horizontal">
                        <dt id="language-label"><g:message code="book.language.label" default="Language" /></dt>
                        
                            <dd class="property-value" aria-labelledby="language-label"><g:fieldValue bean="${bookInstance}" field="language"/></dd>
                        
                    </dl>
				</g:if>
			
				<g:if test="${bookInstance?.origLanguage}">
				<dl class="dl-horizontal">
                        <dt id="origLanguage-label"><g:message code="book.origLanguage.label" default="Orig Language" /></dt>
                        
                            <dd class="property-value" aria-labelledby="origLanguage-label"><g:fieldValue bean="${bookInstance}" field="origLanguage"/></dd>
                        
                    </dl>
				</g:if>
			
				<g:if test="${bookInstance?.editionYear}">
				<dl class="dl-horizontal">
                        <dt id="editionYear-label"><g:message code="book.editionYear.label" default="Edition Year" /></dt>
                        
                            <dd class="property-value" aria-labelledby="editionYear-label"><g:fieldValue bean="${bookInstance}" field="editionYear"/></dd>
                        
                    </dl>
				</g:if>
			
				<g:if test="${bookInstance?.publishedYear}">
				<dl class="dl-horizontal">
                        <dt id="publishedYear-label"><g:message code="book.publishedYear.label" default="Published Year" /></dt>
                        
                            <dd class="property-value" aria-labelledby="publishedYear-label"><g:fieldValue bean="${bookInstance}" field="publishedYear"/></dd>
                        
                    </dl>
				</g:if>
			
				<g:if test="${bookInstance?.publisher}">
				<dl class="dl-horizontal">
                        <dt id="publisher-label"><g:message code="book.publisher.label" default="Publisher" /></dt>
                        
                            <dd class="property-value" aria-labelledby="publisher-label"><g:fieldValue bean="${bookInstance}" field="publisher"/></dd>
                        
                    </dl>
				</g:if>
			
				<g:if test="${bookInstance?.rating}">
				<dl class="dl-horizontal">
                        <dt id="rating-label"><g:message code="book.rating.label" default="Rating" /></dt>
                        
                            <dd class="property-value" aria-labelledby="rating-label"><g:fieldValue bean="${bookInstance}" field="rating"/></dd>
                        
                    </dl>
				</g:if>
			
				<g:if test="${bookInstance?.photo}">
				<dl class="dl-horizontal">
                        <dt id="photo-label"><g:message code="book.photo.label" default="Photo" /></dt>
                        
                    </dl>
				</g:if>
			
				<g:if test="${bookInstance?.owner}">
				<dl class="dl-horizontal">
                        <dt id="owner-label"><g:message code="book.owner.label" default="Owner" /></dt>
                        
                            <dd class="property-value" aria-labelledby="owner-label"><g:link controller="owner" action="show" id="${bookInstance?.owner?.id}">${bookInstance?.owner?.encodeAsHTML()}</g:link></dd>
                        
                    </dl>
				</g:if>
			
				<g:if test="${bookInstance?.author}">
				<dl class="dl-horizontal">
                        <dt id="author-label"><g:message code="book.author.label" default="Author" /></dt>
                        
                            <dd class="property-value" aria-labelledby="author-label"><g:link controller="author" action="show" id="${bookInstance?.author?.id}">${bookInstance?.author?.encodeAsHTML()}</g:link></dd>
                        
                    </dl>
				</g:if>
			
			</ul>
			<g:form>
	            <fieldset class="buttons">
	                <g:hiddenField name="id" value="${bookInstance?.id}" />
	                <g:link class="btn btn-primary" action="edit" id="${bookInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
	                <g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
	            </fieldset>
           </g:form>
		</div>
	</div>
	</body>
</html>
