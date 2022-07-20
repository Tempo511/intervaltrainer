
const audio = new Audio();
const audio2 = new Audio();
let answer;
let score = 0;
let highScore = 0;
let round = 0;
numCorrect = 0;
let percent;
let button1 = document.querySelector('#button1');
let button2 = document.querySelector('#button2');


function createInterval(){

	console.log("ttop button creating interval")

    round++;

    button1.innerText = "Next Round";
    roundBanner.innerText = "Round " + round;

    let arrInterval = ["Unison", "Minor2", "Major2", "Minor3", "Major3", "Perfect4", "Tritone", "Perfect5", "Minor6", "Major6",
"Minor7", "Major7", "Octave"]


let index = Math.floor(Math.random() * 13);
let index2 =Math.floor(Math.random() * 9) + 1;


let sound = document.getElementById("interval")


let circle1 = document.getElementById("note1")

button2.innerText = "Reveal answer"   
audio.src = "/audio/" + arrInterval[index] +"/"+ index2 +".mp3";

let intervals = ["Unison", "Minor Second", "Major Second", "Minor Third", "Major Third", "Perfect Fourth", "Tritone", "Perfect Fifth", "Minor Sixth", "Major Sixth","Minor Seventh", "Major Seventh", "Octave"]
let intervalValues = ["unison", "minor2", "major2", "minor3", "major3", "perfect4", "tritone", "perfect5","minor6", "major6", "minor7", "major7", "octave"]
let relation = intervals[index];

answer = intervalValues[index]

console.log("answer is " + answer)

sound.innerText = relation;
circle1.innerText = arr[index]
console.log("Hello world!!!")




}

const btn = document.querySelector('#btn');        
const radioButtons = document.querySelectorAll('input[name="intervals"]');



function reveal(){
	console.log("bottom button logging")
    let selectedInterval;
    for (const radioButton of radioButtons) {
        if (radioButton.checked) {
            console.log(radioButton.value)
            selectedInterval = radioButton.value;
            break;
        }
    }
    if(selectedInterval == answer){
        numCorrect++;
        console.log("match!")
        button2.innerText = "Correct!"
        selectedInterval.style = "background-color:green;"
        score++;
        percent = (numCorrect / round) * 100;
        scoreElem.innerText = "Score: " + score + " (" + percent + "%)";
        if(score > highScore){
            highScore = score;
            highScoreElem.innerText = "High Score: " + highScore;
        }

    }else{
        console.log("nope!")
        button2.innerText = "Try again!"
        percent = (numCorrect / round) * 100;
        score = 0;
        scoreElem.innerText = "Score: " + score + " (" + percent + "%)";
    }
}



