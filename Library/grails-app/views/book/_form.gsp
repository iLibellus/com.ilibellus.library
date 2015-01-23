<%@ page import="com.ilibellus.library.Book" %>



<div class="control-group fieldcontain ${hasErrors(bean: bookInstance, field: 'titel', 'error')} required">
	<label class="control-label" for="titel">
		<g:message code="book.titel.label" default="Titel" />
		<span class="required-indicator">*</span>
	</label>
	<span class="controls"><g:textField name="titel" required="" value="${bookInstance?.titel}"/>
</span>
</div>

<div class="control-group fieldcontain ${hasErrors(bean: bookInstance, field: 'language', 'error')} required">
	<label class="control-label" for="language">
		<g:message code="book.language.label" default="Language" />
		<span class="required-indicator">*</span>
	</label>
	<span class="controls"><g:textField name="language" required="" value="${bookInstance?.language}"/>
</span>
</div>

<div class="control-group fieldcontain ${hasErrors(bean: bookInstance, field: 'origLanguage', 'error')} ">
	<label class="control-label" for="origLanguage">
		<g:message code="book.origLanguage.label" default="Orig Language" />
		
	</label>
	<span class="controls"><g:textField name="origLanguage" value="${bookInstance?.origLanguage}"/>
</span>
</div>

<div class="control-group fieldcontain ${hasErrors(bean: bookInstance, field: 'editionYear', 'error')} ">
	<label class="control-label" for="editionYear">
		<g:message code="book.editionYear.label" default="Edition Year" />
		
	</label>
	<span class="controls"><g:textField name="editionYear" value="${bookInstance?.editionYear}"/>
</span>
</div>

<div class="control-group fieldcontain ${hasErrors(bean: bookInstance, field: 'publishedYear', 'error')} ">
	<label class="control-label" for="publishedYear">
		<g:message code="book.publishedYear.label" default="Published Year" />
		
	</label>
	<span class="controls"><g:textField name="publishedYear" value="${bookInstance?.publishedYear}"/>
</span>
</div>

<div class="control-group fieldcontain ${hasErrors(bean: bookInstance, field: 'publisher', 'error')} ">
	<label class="control-label" for="publisher">
		<g:message code="book.publisher.label" default="Publisher" />
		
	</label>
	<span class="controls"><g:textField name="publisher" value="${bookInstance?.publisher}"/>
</span>
</div>

<div class="control-group fieldcontain ${hasErrors(bean: bookInstance, field: 'rating', 'error')} ">
	<label class="control-label" for="rating">
		<g:message code="book.rating.label" default="Rating" />
		
	</label>
	<span class="controls"><g:field name="rating" type="number" value="${bookInstance.rating}"/>
</span>
</div>

<div class="control-group fieldcontain ${hasErrors(bean: bookInstance, field: 'photo', 'error')} ">
	<label class="control-label" for="photo">
		<g:message code="book.photo.label" default="Photo" />
		
	</label>
	<span class="controls"><input type="file" id="photo" name="photo" />
</span>
</div>

<div class="control-group fieldcontain ${hasErrors(bean: bookInstance, field: 'owner', 'error')} required">
	<label class="control-label" for="owner">
		<g:message code="book.owner.label" default="Owner" />
		<span class="required-indicator">*</span>
	</label>
	<span class="controls"><g:select id="owner" name="owner.id" from="${com.ilibellus.library.Owner.list()}" optionKey="id" required="" value="${bookInstance?.owner?.id}" class="many-to-one"/>
</span>
</div>

<div class="control-group fieldcontain ${hasErrors(bean: bookInstance, field: 'author', 'error')} required">
	<label class="control-label" for="author">
		<g:message code="book.author.label" default="Author" />
		<span class="required-indicator">*</span>
	</label>
	<span class="controls"><g:select id="author" name="author.id" from="${com.ilibellus.library.Author.list()}" optionKey="id" required="" value="${bookInstance?.author?.id}" class="many-to-one"/>
</span>
</div>

