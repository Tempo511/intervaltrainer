<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="/css/style.css">

<title>Login/Registration</title>
</head>
<body>

	<div class="container">

		
		<div class="d-flex justify-content-center align-items-center p-5 loginBox">

			<!-- Registration div  -->
			<div class="register">
			<div class="d-flex justify-content-center">
			<h3>Create Account</h3>
			</div>
				<form:form action="/register" method="post" modelAttribute="newUser">
					<div class="registerInput">

						<form:label path="name">Name:</form:label>
						<form:input type="text" path="name"></form:input>
						<form:errors class="text-danger" path="name"></form:errors>
					</div>
					<div class="registerInput">

						<form:label path="email">Email:</form:label>
						<form:input type="text" path="email"></form:input>
						<form:errors class="text-danger" path="email"></form:errors>
					</div>
					<div class="registerInput">

						<form:label path="password">Password:</form:label>
						<form:input type="password" path="password"></form:input>
						<form:errors class="text-danger" path="password"></form:errors>
					</div>
					<div class="registerInput">

						<form:label path="confirm">Confirm Password:</form:label>
						<form:input type="password" path="confirm"></form:input>
						<form:errors class="text-danger" path="confirm"></form:errors>
					</div>
					<input type="submit" value="Register"
						class="btn btn-outline-success" />


				</form:form>



			</div>






			<!-- 	Login div -->

			<div class="login">
			<div class="d-flex justify-content-center">
			<h3>Login</h3>
			</div>
				
				<form:form action="/login" method="post" modelAttribute="newLogin">

					<div class="registerInput">
						<form:label path="email">Email:</form:label>
						<form:input path="email"></form:input>
						<form:errors class="text-danger" path="email"></form:errors>
					</div>

					<div class="registerInput">
						<form:label path="password">Password:</form:label>
						<form:input type="password" path="password"></form:input>
						<form:errors class="text-danger" path="password"></form:errors>
					</div>
					<input type="submit" value="Login" class="btn btn-outline-primary" />





				</form:form>

			</div>



		</div>
</body>
</html>