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
<!-- 			<div class="sidebar">

				<a href="#">Leaderboard</a><br> <a href="#">My Account</a><br>
			</div> -->




			<div class="main">

				<div id="header">
					<div class="headerBanner">
					<span class="flexCenter">
						<h1>Interval Trainer</h1>
					</span>
					
					
					<span class="flexCenter">
						<p style="font-style: italic">How good is your ear?</p>
					</span>
						

					</div>



				</div>

				<div class="d-flex justify-content-center">
					<button class="btn btn-primary"id="button1" onclick="beginGame()">Begin Interval
						Exercise</button>


				</div>

				<div id="gameSection">



					<div class="circleContainer">
						<div>
							<div
								style="display: flex; justify-content: center; align-items: center;">
								<h4 id="roundBanner"></h4>
							</div>

							<div
								style="display: flex; justify-content: center; align-items: center;">
								<div class="circle" id="note1" onclick="audio.play()"></div>
							</div>

							<div
								style="display: flex; justify-content: center; align-items: center;">
								<p>Click circle for interval.</p>
							</div>




						</div>

					</div>
					<div id="stats">
						<div id="score">

							<span class="flexCenter">

								<button class="btn btn-primary mb-3"id="playAgainButton" onclick="beginGame()">Play
									Again</button>
							</span> <span class="flexCenter">
								<h6 id="correctInterval"></h6>
							</span> <span class="flexCenter">
								<h6 id="scoreElem">Score: 0</h6>
							</span> <span class="flexCenter">
								<h6 id="highScoreElem">High Score: 0</h6>
							</span>




						</div>



					</div>


					<div id="nextRoundContainer">
						<button class="btn btn-primary"id="nextRoundButton" onclick="createInterval()">Next
							Round</button>
					</div>


					<div class="selection">

						<!-- <p id=""interval">Hello!</p> -->

						<div id="selectGroup1">
							<span> <input type="radio" class="btn-check"
								name="intervals" id="unison" value="unison" autocomplete="off">
								<label class="btn btn-outline-secondary" for="unison">Unison</label>
							</span> <span> <input type="radio" class="btn-check"
								name="intervals" id="minor2" value="minor2" autocomplete="off">
								<label class="btn btn-outline-secondary" for="minor2">Minor
									Second</label>
							</span> <span> <input type="radio" class="btn-check"
								name="intervals" id="major2" value="major2" autocomplete="off">
								<label class="btn btn-outline-secondary" for="major2">Major
									Second</label>
							</span> <span> <input type="radio" class="btn-check"
								name="intervals" id="minor3" value="minor3" autocomplete="off">
								<label class="btn btn-outline-secondary" for="minor3">Minor
									Third</label>
							</span> <span> <input type="radio" class="btn-check"
								name="intervals" id="major3" value="major3" autocomplete="off">
								<label class="btn btn-outline-secondary" for="major3">Major
									Third</label>
							</span> <span> <input type="radio" class="btn-check"
								name="intervals" id="perfect4" value="perfect4"
								autocomplete="off"> <label class="btn btn-outline-secondary"
								for="perfect4">Perfect Fourth</label>
							</span>

						</div>


						<div id="selectGroup2">

							<span> <input type="radio" class="btn-check"
								name="intervals" id="tritone" value="tritone" autocomplete="off">
								<label class="btn btn-outline-secondary" for="tritone">Tritone</label>

							</span> <span> <input type="radio" class="btn-check"
								name="intervals" id="perfect5" value="perfect5"
								autocomplete="off"> <label class="btn btn-outline-secondary"
								for="perfect5">Perfect Fifth</label>
							</span> <span> <input type="radio" class="btn-check"
								name="intervals" id="minor6" value="minor6" autocomplete="off">
								<label class="btn btn-outline-secondary" for="minor6">Minor
									Sixth</label>
							</span> <span> <input type="radio" class="btn-check"
								name="intervals" id="major6" value="major6" autocomplete="off">
								<label class="btn btn-outline-secondary" for="major6">Major
									Sixth</label>

							</span> <span> <input type="radio" class="btn-check btn-success"
								name="intervals" id="minor7" value="minor7" autocomplete="off">
								<label class="btn btn-outline-secondary" for="minor7">Minor
									Seventh</label>
							</span> <span> <input type="radio" class="btn-check"
								name="intervals" id="major7" value="major7" autocomplete="off">
								<label class="btn btn-outline-secondary" for="major7">Major
									Seventh</label>

							</span> <span> <input type="radio" class="btn-check"
								name="intervals" id="octave" value="octave" autocomplete="off">
								<label class="btn btn-outline-secondary" for="octave">Octave</label>

							</span>

						</div>

						<div id="reveal">
							<button class="btn btn-primary" id="button2" onclick="reveal()">Submit</button>

						</div>


					</div>



				</div>



			</div>


		</div>




	</div>
	<script type="text/javascript" src="/js/script.js"></script>
</body>
</html>