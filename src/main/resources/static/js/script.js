
const audio = new Audio();
const audio2 = new Audio();
let answer;
let score = 0;
let highScore = 0;
let round = 0;
numCorrect = 0;
let percent;
let relation;
let button1 = document.querySelector('#button1');
let button2 = document.querySelector('#button2');
let circle = 	document.getElementById("note1");
let playAgain = document.getElementById("playAgainButton")
let statDiv = document.getElementById("correctInterval")
let xhr = new XMLHttpRequest();
let selectedButton;

function beginGame(){
	score = 0;
	round = 0;
		document.getElementById("gameSection").style.display = "inline";
		document.getElementById("score").style.display = "none";
		playAgain.style.visibility = "hidden";
		
		button1.style.visibility = "hidden";
		
		createInterval();
		
}
function createInterval(){
	if(selectedButton != null && selectedButton.checked){
		selectedButton.checked = false;
	}
    round++;
    circle.style.backgroundColor = " rgb(98, 39, 123)";
    circle.innerText = "";
    button2.style.visibility = "visible";
		
document.getElementById("nextRoundButton").style.visibility = "hidden"
   // button1.innerText = "Next Round";
    roundBanner.innerText = "Round " + round;

    let arrInterval = ["Unison", "Minor2", "Major2", "Minor3", "Major3", "Perfect4", "Tritone", "Perfect5", "Minor6", "Major6",
"Minor7", "Major7", "Octave"]


let index = Math.floor(Math.random() * 13);
let index2 =Math.floor(Math.random() * 9) + 1;


let sound = document.getElementById("interval")


let circle1 = document.getElementById("note1")


audio.src = "/audio/" + arrInterval[index] +"/"+ index2 +".mp3";

let intervals = ["Unison", "Minor Second", "Major Second", "Minor Third", "Major Third", "Perfect Fourth", "Tritone", "Perfect Fifth", "Minor Sixth", "Major Sixth","Minor Seventh", "Major Seventh", "Octave"]
let intervalValues = ["unison", "minor2", "major2", "minor3", "major3", "perfect4", "tritone", "perfect5","minor6", "major6", "minor7", "major7", "octave"]
relation = intervals[index];

answer = intervalValues[index]



//sound.innerText = relation;
//circle1.innerText = arr[index]





}

const btn = document.querySelector('#btn');        
const radioButtons = document.querySelectorAll('input[name="intervals"]');



function reveal(){
	
    let selectedInterval;
   
    for (const radioButton of radioButtons) {
        if (radioButton.checked) {
            
            selectedInterval = radioButton.value;
            selectedButton = radioButton;
            break;
        }
    }
    if(selectedInterval == answer){
		button2.style.visibility = "hidden";
		circle.innerText = "Correct!"
		circle.style.backgroundColor = "green";
		
        numCorrect++;
      

        selectedInterval.style = "background-color:green;"
        score++;
        percent = (numCorrect / round) * 100;
        scoreElem.innerText = "Score: " + score + " (" + percent + "%)";
        document.getElementById("nextRoundButton").style.visibility = "visible"
        if(score > highScore){
            highScore = score;
            highScoreElem.innerText = "High Score: " + highScore;
        }

    }else{
		let formScore = document.getElementById("formScore");
		formScore.value = score;
       circle.style.backgroundColor = "red";
       circle.innerText = ("Incorrect!");
       document.getElementById("score").style.display = "inline";
       playAgain.style.visibility = "visible";
        button2.style.visibility = "hidden";
        percent = (numCorrect / round) * 100;
        scoreElem.innerText = "Score: " + score;
        statDiv.innerText = "Correct Interval: " + relation;
    }
}





