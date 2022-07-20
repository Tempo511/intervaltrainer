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
<title>Interval Trainer</title>
</head>
<body>
	<div class="container">

		<!-- Top section with icon and login link -->

		<div class="d-flex justify-content-between topSection">
			<h6>InterSine</h6>
			
			<a href="/">Login/Create Account</a>

		</div>


		<!-- Bottom section  -->

		<div class="bottomSection ">
			<div class="sidebar">
			
				<a href="#">Leaderboard</a><br> <a href="#">My Account</a><br>
			</div>

			<div class="main">
				<h1>Guess the Interval</h1>
				<h4 id="scoreElem">Score: 0</h4>
				<h4 id="highScoreElem">High Score: 0</h4>
				<div class="circleContainer">
					<h4 id="roundBanner"></h4>
					<div class="circle" id="note1" onclick="audio.play()"></div>
					<p>Click circle for interval.</p>

				</div>
				<div class="d-flex justify-content-center">
					<button id="button1" onclick="createInterval()">Begin Interval
						Exercise</button>
					<br>

				</div>

				<div class="selection">

					<!-- <p id=""interval">Hello!</p> -->
					<input type="radio" class="btn-check" name="intervals" id="unison"
						value="unison" autocomplete="off"> <label
						class="btn btn-secondary" for="unison">Unison</label> <input
						type="radio" class="btn-check" name="intervals" id="minor2"
						value="minor2" autocomplete="off"> <label
						class="btn btn-secondary" for="minor2">Minor Second</label> <input
						type="radio" class="btn-check" name="intervals" id="major2"
						value="major2" autocomplete="off"> <label
						class="btn btn-secondary" for="major2">Major Second</label> <input
						type="radio" class="btn-check" name="intervals" id="minor3"
						value="minor3" autocomplete="off"> <label
						class="btn btn-secondary" for="minor3">Minor Third</label><br>

					<input type="radio" class="btn-check" name="intervals" id="major3"
						value="major3" autocomplete="off"> <label
						class="btn btn-secondary" for="major3">Major Third</label> <input
						type="radio" class="btn-check" name="intervals" id="perfect4"
						value="perfect4" autocomplete="off"> <label
						class="btn btn-secondary" for="perfect4">Perfect Fourth</label> <input
						type="radio" class="btn-check" name="intervals" id="tritone"
						value="tritone" autocomplete="off"> <label
						class="btn btn-secondary" for="tritone">Tritone</label> <input
						type="radio" class="btn-check" name="intervals" id="perfect5"
						value="perfect5" autocomplete="off"> <label
						class="btn btn-secondary" for="perfect5">Perfect Fifth</label> <input
						type="radio" class="btn-check" name="intervals" id="minor6"
						value="minor6" autocomplete="off"> <label
						class="btn btn-secondary" for="minor6">Minor Sixth</label> <input
						type="radio" class="btn-check" name="intervals" id="major6"
						value="major6" autocomplete="off"> <label
						class="btn btn-secondary" for="major6">Major Sixth</label> <input
						type="radio" class="btn-check btn-success" name="intervals"
						id="minor7" value="minor7" autocomplete="off"> <label
						class="btn btn-secondary" for="minor7">Minor Seventh</label> <input
						type="radio" class="btn-check" name="intervals" id="major7"
						value="major7" autocomplete="off"> <label
						class="btn btn-secondary" for="major7">Major Seventh</label> <input
						type="radio" class="btn-check" name="intervals" id="octave"
						value="octave" autocomplete="off"> <label
						class="btn btn-secondary" for="octave">Octave</label>
						<div>
						<button id="button2" onclick="reveal()">Reveal answer</button>
						
						</div>
					

				</div>

			</div>


		</div>




	</div>
	<script type="text/javascript" src="/js/script.js"></script>
</body>
</html>