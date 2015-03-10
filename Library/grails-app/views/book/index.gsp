
<%@ page import="com.ilibellus.library.Book" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
        <div class="container">
        <!-- Sub Navigation Begin -->
	    <div class="row">
			<div class="col-xs-12 col-sm-12 col-md-12">
				<ul class="nav nav-pills">
				  <li>
				  	<a class="small button secondary" href="${createLink(uri: '/')}">
				  		<span class="glyphicon glyphicon-home"></span>
				 		<g:message code="default.home.label"/>
				 	</a>
				  </li>
				  <li>
				  	<g:link class="small button secondary" action="create">
				  		<span class="glyphicon glyphicon-save"></span>
				  		<g:message code="default.new.label" args="[entityName]" />
				  	</g:link>
				  </li>
				</ul>
			</div>
		</div>
		<!-- Sub Navigation End -->
            
        <!-- Dataset -->
		<div class="row">
  			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
  			
  				<!-- Panel Header Begin -->
				<div class="content-box-header">
				 	<div class="panel-title"><g:message code="default.list.label" args="[entityName]" /></div>
				    <div class="panel-options">
				   		<a href="#" data-rel="collapse"><i class="glyphicon glyphicon-refresh"></i></a>
				        <a href="#" data-rel="reload"><i class="glyphicon glyphicon-cog"></i></a>
				   	</div>
				</div>
				<!-- Panel Header End -->
		<div class="content-box-large box-with-header">	
  				
	  				<div class="table-responsive">  
						<g:if test="${flash.message}">
							<div class="alert alert-warning">
								${flash.message}
							</div>
						</g:if>
						<table class="table table-striped table-bordered table-hover">
							<thead>
					<tr>
					
						<g:sortableColumn property="titel" title="${message(code: 'book.titel.label', default: 'Titel')}" />
					
						<g:sortableColumn property="language" title="${message(code: 'book.language.label', default: 'Language')}" />
					
						<g:sortableColumn property="origLanguage" title="${message(code: 'book.origLanguage.label', default: 'Orig Language')}" />
					
						<g:sortableColumn property="editionYear" title="${message(code: 'book.editionYear.label', default: 'Edition Year')}" />
					
						<g:sortableColumn property="publishedYear" title="${message(code: 'book.publishedYear.label', default: 'Published Year')}" />
					
						<g:sortableColumn property="publisher" title="${message(code: 'book.publisher.label', default: 'Publisher')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${bookInstanceList}" status="i" var="bookInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${bookInstance.id}">${fieldValue(bean: bookInstance, field: "titel")}</g:link></td>
					
						<td>${fieldValue(bean: bookInstance, field: "language")}</td>
					
						<td>${fieldValue(bean: bookInstance, field: "origLanguage")}</td>
					
						<td>${fieldValue(bean: bookInstance, field: "editionYear")}</td>
					
						<td>${fieldValue(bean: bookInstance, field: "publishedYear")}</td>
					
						<td>${fieldValue(bean: bookInstance, field: "publisher")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${bookInstanceCount ?: 0}" />
			</div>
		</div>
	</div>
	</div>
	</div>
	</body>
</html>
