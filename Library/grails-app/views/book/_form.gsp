<%@ page import="com.ilibellus.library.Book" %>



<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'titel', 'error')} required">
	<label for="titel">
		<g:message code="book.titel.label" default="Titel" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="titel" required="" value="${bookInstance?.titel}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'language', 'error')} required">
	<label for="language">
		<g:message code="book.language.label" default="Language" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="language" required="" value="${bookInstance?.language}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'origLanguage', 'error')} required">
	<label for="origLanguage">
		<g:message code="book.origLanguage.label" default="Orig Language" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="origLanguage" required="" value="${bookInstance?.origLanguage}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'editionYear', 'error')} required">
	<label for="editionYear">
		<g:message code="book.editionYear.label" default="Edition Year" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="editionYear" required="" value="${bookInstance?.editionYear}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'publishedYear', 'error')} required">
	<label for="publishedYear">
		<g:message code="book.publishedYear.label" default="Published Year" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="publishedYear" required="" value="${bookInstance?.publishedYear}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'publisher', 'error')} required">
	<label for="publisher">
		<g:message code="book.publisher.label" default="Publisher" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="publisher" required="" value="${bookInstance?.publisher}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'rating', 'error')} ">
	<label for="rating">
		<g:message code="book.rating.label" default="Rating" />
		
	</label>
	<g:field name="rating" type="number" value="${bookInstance.rating}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'owner', 'error')} required">
	<label for="owner">
		<g:message code="book.owner.label" default="Owner" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="owner" name="owner.id" from="${com.ilibellus.library.Owner.list()}" optionKey="id" required="" value="${bookInstance?.owner?.id}" class="many-to-one"/>

</div>

