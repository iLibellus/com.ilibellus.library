<%@ page import="com.ilibellus.library.Book" %>



<div class="form-group fieldcontain ${hasErrors(bean: bookInstance, field: 'titel', 'error')} required">
	<label class="col-sm-4 control-label" for="titel">
		<g:message code="book.titel.label" default="Titel" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-8"><g:textField class="form-control" name="titel" required="" value="${bookInstance?.titel}"/>
</div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: bookInstance, field: 'language', 'error')} required">
	<label class="col-sm-4 control-label" for="language">
		<g:message code="book.language.label" default="Language" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-8"><g:textField class="form-control" name="language" required="" value="${bookInstance?.language}"/>
</div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: bookInstance, field: 'origLanguage', 'error')} ">
	<label class="col-sm-4 control-label" for="origLanguage">
		<g:message code="book.origLanguage.label" default="Orig Language" />
		
	</label>
	<div class="col-sm-8"><g:textField class="form-control" name="origLanguage" value="${bookInstance?.origLanguage}"/>
</div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: bookInstance, field: 'editionYear', 'error')} ">
	<label class="col-sm-4 control-label" for="editionYear">
		<g:message code="book.editionYear.label" default="Edition Year" />
		
	</label>
	<div class="col-sm-8"><g:textField class="form-control" name="editionYear" value="${bookInstance?.editionYear}"/>
</div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: bookInstance, field: 'publishedYear', 'error')} ">
	<label class="col-sm-4 control-label" for="publishedYear">
		<g:message code="book.publishedYear.label" default="Published Year" />
		
	</label>
	<div class="col-sm-8"><g:textField class="form-control" name="publishedYear" value="${bookInstance?.publishedYear}"/>
</div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: bookInstance, field: 'publisher', 'error')} ">
	<label class="col-sm-4 control-label" for="publisher">
		<g:message code="book.publisher.label" default="Publisher" />
		
	</label>
	<div class="col-sm-8"><g:textField class="form-control" name="publisher" value="${bookInstance?.publisher}"/>
</div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: bookInstance, field: 'rating', 'error')} ">
	<label class="col-sm-4 control-label" for="rating">
		<g:message code="book.rating.label" default="Rating" />
		
	</label>
	<div class="col-sm-8">
	<g:select class="form-control" id="myselect" name="rating" value="${bookInstance.rating}"
          from="${1..5}" />
</div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: bookInstance, field: 'photo', 'error')} ">
	<label class="col-sm-4 control-label" for="photo">
		<g:message code="book.photo.label" default="Photo" />
		
	</label>
	<div class="col-sm-8"><input type="file" class="form-control" id="photo" name="photo" />
</div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: bookInstance, field: 'owner', 'error')} required">
	<label class="col-sm-4 control-label" for="owner">
		<g:message code="book.owner.label" default="Owner" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-8"><g:select id="owner" name="owner.id" from="${com.ilibellus.library.Owner.list()}" optionKey="id" required="" value="${bookInstance?.owner?.id}" class="many-to-one"/>
</div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: bookInstance, field: 'author', 'error')} required">
	<label class="col-sm-4 control-label" for="author">
		<g:message code="book.author.label" default="Author" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-4 col-lg-6">
		<input type="hidden" id="author_id" name="author_id" value="" />
		<g:textField name="author.lastName" class="form-control" id="author_textField" value="${bookInstance.author}" placeholder="Lastname"/>
	</div>
	<div class="col-sm-4 col-lg-6">	
		<g:textField name="author.firstName" class="form-control" id="author_firstName" value="${bookInstance.author}" placeholder="Firstname"/>
	</div>		
</div>
