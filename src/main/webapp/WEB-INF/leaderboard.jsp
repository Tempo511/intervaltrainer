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
<title>Leaderboard</title>
</head>
<body>

	<h6>Leaderboard</h6>



	<div class="d-flex">

		<div>

			<h6>Your Top Scores</h6>

			<c:forEach var="score" items="${userScores}">

				<h5>
					<c:out value="${score.score}"></c:out>
					on
					<c:out value="${score.createdAt}"></c:out>
				</h5>

			</c:forEach>

		</div>
		
		<div>
		<h6>All Time Top Scores</h6>
		
		<c:forEach var="score" items="${topScores}">

				<h5><c:out value="${score.user.name}"></c:out> scored
					<c:out value="${score.score}"></c:out>
					on
					<c:out value="${score.createdAt}"></c:out>
				</h5>

			</c:forEach>
		
		</div>

	</div>



</body>
</html>