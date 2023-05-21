/**
 * https://codepen.io/DVELOPR/pen/dpRqKg
 */
 
var currentQuestion = 1; // 현재 문제 번호를 저장하는 변수
var totalQuestions = 120; // 총 문제 수

var questions = [
	{
		question : "그림과 같이 이축응력을 받고 있는 요소의 체적변형률은? (단, 탄성계수(E)는 2×105 MPa, 푸아송 비(ν)는 0.3이다.)",
		choices : [ "2.7×10-4", "3.0×10-4", "3.7×10-4", "4.0×10-4" ],
		correctAnswer : 4
	},
	{
		question : "cat?",
		choices : [ "고양이", "강아지", "사자", "하마" ],
		correctAnswer : 1
	}, 
	{
		question : "dog?",
		choices : [ "고양이", "강아지", "사자", "하마" ],
		correctAnswer : 2
	}
];

function showQuestion() {
	var questionElement = document.getElementById("question");
	var questionImageElement = document.getElementById("questionImage");
	var choicesElement = document.getElementById("choices");

	var questionIndex = currentQuestion - 1;
	var currentQuestionData = questions[questionIndex];

	questionElement.innerHTML = currentQuestion + ". " + currentQuestionData.question;
			
	var imagePath = "../images/y2022c2Images/y2022c2_" + currentQuestion + ".png";
	questionImageElement.src = imagePath;
			
	choicesElement.innerHTML = ""; // 보기를 초기화

	for (var i = 0; i < currentQuestionData.choices.length; i++) {
		choicesElement.innerHTML += "<li>보기 " + (i + 1) + ": " + currentQuestionData.choices[i] + "</li>";
	}

	var previousButton = document.getElementById("previousButton");
	var nextButton = document.getElementById("nextButton");
	var submitButton = document.getElementById("submitButton");

	previousButton.disabled = (currentQuestion === 1);
	nextButton.disabled = (currentQuestion === totalQuestions);
	submitButton.style.display = (currentQuestion === totalQuestions) ? "inline-block" : "none";
}

function previousQuestion() {
	if (currentQuestion > 1) {
		currentQuestion--;
		showQuestion();
	}
}

function nextQuestion() {
	if (currentQuestion < totalQuestions) {
		currentQuestion++;
		showQuestion();
	}
}

function submitQuiz() {
	// 퀴즈 제출 처리
	// 여기에 필요한 로직을 구현해주세요.
}
		
		
		
		
		
		
		
		