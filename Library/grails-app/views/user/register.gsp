<%@ page import="com.ilibellus.library.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
<body id="body">
        <h1>Registration</h1>
        <p>Complete the form below to create an account!</p>
        <g:hasErrors bean="${user}">
          <div class="errors">
            <g:renderErrors bean="${user}"></g:renderErrors>
          </div>
        </g:hasErrors>
        <g:form action="register" name="registerForm">
          <div class="formField">
            <label for="login">Username:</label>
            <g:textField name="login" value="${user?.userName}"></g:textField>
          </div>
          <div class="formField">
            <label for="password">Password:</label>
            <g:passwordField name="password" value="${user?.password}"></g:passwordField>
          </div>
          <div class="formField">
            <label for="confirm">Confirm Password:</label>
            <g:passwordField name="confirm" value="${params?.confirm}"></g:passwordField>
          </div>
          <div class="formField">
            <label for="firstName">${message(code: 'user.firstname.label', default: 'First Name')}</label>
            <g:textField name="firstName" value="${user?.firstName}"></g:textField>
			</div>
			<div class="formField">
			        <label for="lastName">Last Name:</label>
			        <g:textField name="lastName" value="${user?.lastName}"></g:textField>
			</div>
      <g:submitButton class="formButton" name="register" value="Register"></g:submitButton>
    </g:form>
</body>
</html>