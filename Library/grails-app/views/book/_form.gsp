<%@ page import="com.ilibellus.library.Book" %>

<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'titel', 'error')} required">
	<label for="titel">
		<g:message code="book.titel.label" default="Titel" />
		<span class="required-indicator">*</span>
	</label>
	<input type="text" class="form-control" name="name" id="title" value="${bookInstance?.titel}">
</div>
</div>

<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'author', 'error')}">
	<label for="author">
		<g:message code="book.author.label" default="Author" />
		<span class="required-indicator">*</span>
	</label>
	<input type="text" class="form-control" id="author" name="author" value="${bookInstance?.author}">
</div>
</div>

<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'language', 'error')} required">
	<label for="language">
		<g:message code="book.language.label" default="Language" />
		<span class="required-indicator">*</span>
	</label>
	<input type="text" name="language" class="form-control" value="${bookInstance?.language}">
</div>
</div>

<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'origLanguage', 'error')}">
	<label for="origLanguage">
		<g:message code="book.origLanguage.label" default="Orig Language" />
		
	</label>
	<input type="text" name="origLanguage" class="form-control" value="${bookInstance?.origLanguage}">
</div>
</div>

<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'editionYear', 'error')}">
	<label for="editionYear">
		<g:message code="book.editionYear.label" default="Edition Year" />
		
	</label>
	<input type="text" name="editionYear" class="form-control" value="${bookInstance?.editionYear}">
</div>
</div>

<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'publishedYear', 'error')}">
	<label for="publishedYear">
		<g:message code="book.publishedYear.label" default="Published Year" />
	</label>
	<input type="text" name="publishedYear" class="form-control" value="${bookInstance?.publishedYear}">
</div>
</div>

<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'publisher', 'error')}">
	<label for="publisher">
		<g:message code="book.publisher.label" default="Publisher" />
		
	</label>
	<input type="text" name="publisher" class="form-control" value="${bookInstance?.publisher}">
</div>
</div>

<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'rating', 'error')}">
	<label for="rating">
		<g:message code="book.rating.label" default="Rating" />
	</label>
	<input name="rating" type="number" class="form-control" value="${bookInstance.rating}">
</div>
</div>

<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'photo', 'error')}">
	<label for="photo">
		<g:message code="book.photo.label" default="Photo" />
	</label>
	<input type="file" id="photo" name="photo" class="form-control"/>
</div>
</div>

<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'owner', 'error')} required" >
	<label for="owner">
		<g:message code="book.owner.label" default="Owner" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="owner" name="owner.id" from="${com.ilibellus.library.Owner.list()}" optionKey="id" required="" value="${bookInstance?.owner?.id}" class="many-to-one"/>
</div>
</div>