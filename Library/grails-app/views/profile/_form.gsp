<%@ page import="com.ilibellus.library.Profile" %>



<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'user', 'error')} ">
	<label for="user">
		<g:message code="profile.user.label" default="User" />
		
	</label>
	<g:select id="user" name="user.id" from="${com.ilibellus.library.User.list()}" optionKey="id" value="${profileInstance?.user?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'bio', 'error')} ">
	<label for="bio">
		<g:message code="profile.bio.label" default="Bio" />
		
	</label>
	<g:textField name="bio" value="${profileInstance?.bio}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'photo', 'error')} ">
	<label for="photo">
		<g:message code="profile.photo.label" default="Photo" />
		
	</label>
	<input type="file" id="photo" name="photo" />

</div>

