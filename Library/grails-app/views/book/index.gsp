
<%@ page import="com.ilibellus.library.Book" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-book" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-book" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="titel" title="${message(code: 'book.titel.label', default: 'Titel')}" />
					
						<g:sortableColumn property="language" title="${message(code: 'book.language.label', default: 'Language')}" />
					
						<th><g:message code="book.owner.label" default="Owner" /></th>
					
						<g:sortableColumn property="editionYear" title="${message(code: 'book.editionYear.label', default: 'Edition Year')}" />
					
						<g:sortableColumn property="origLanguage" title="${message(code: 'book.origLanguage.label', default: 'Orig Language')}" />
					
						<g:sortableColumn property="publishedYear" title="${message(code: 'book.publishedYear.label', default: 'Published Year')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${bookInstanceList}" status="i" var="bookInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${bookInstance.id}">${fieldValue(bean: bookInstance, field: "titel")}</g:link></td>
					
						<td>${fieldValue(bean: bookInstance, field: "language")}</td>
					
						<td>${fieldValue(bean: bookInstance, field: "owner")}</td>
					
						<td>${fieldValue(bean: bookInstance, field: "editionYear")}</td>
					
						<td>${fieldValue(bean: bookInstance, field: "origLanguage")}</td>
					
						<td>${fieldValue(bean: bookInstance, field: "publishedYear")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${bookInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
