<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet" href="./css/testLayout.css">
</head>
<!--  ------------------------------------------------------ -->

<body onload="showQuestion()">
	<div class="title">[ 0000년도 0회 토목기사 필기 ]</div>
	<!-- 문제를 표시할 컨테이너 -->
	<div id="questionContainer"></div>

	<a href="${myctx}/submitPage?title=0000년도%200회" class="btn-submit" id="btn-submit">제출하기</a>
	<!-- ------------------------------------ -->
	<script>
		var currentQuestion = 1; // 현재 문제 번호를 저장하는 변수
		var totalQuestions = 120; // 총 문제 수

		var questions = [
				{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{ //10
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{ //11
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{ //20
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{ //21
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{ //30
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{ //31
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{ //40
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{ //41
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{ //50
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{//51
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{ //60
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{ //61
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{ //70
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{ //71
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{ //80
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{//81
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{ //90
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{ //91
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{ //100
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{ //101
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{ //110
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{ //111
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{ //120
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},];

		function showQuestion() {
			var questionContainer = document
					.getElementById("questionContainer");
			questionContainer.innerHTML = ""; // 문제 컨테이너 초기화

			var subjectTitles = [ "1과목 : 응용역학", "2과목 : 측량학", "3과목 : 수리학 및 수문학",
					"4과목 : 철근콘크리트 및 강구조", "5과목 : 토질 및 기초", "6과목 : 상하수도공학" ];

			var currentSubjectIndex = 0;

			for (var i = 0; i < totalQuestions; i++) {
				if (i % 20 === 0) {
					var titleElement = createTitleElement(subjectTitles[currentSubjectIndex]);
					titleElement.className = "subjectTitles"; // 클래스 추가 ★
					questionContainer.appendChild(titleElement);
					currentSubjectIndex++;
				}

				var questionDiv = createQuestionDiv(i);
				questionContainer.appendChild(questionDiv);
			}
		}

		function createTitleElement(title) {
			var titleElement = document.createElement("div");
			titleElement.className = "subjectTitle";
			titleElement.innerHTML = title;
			return titleElement;
		}

		function createQuestionDiv(index) {
			var questionData = questions[index];
			var questionDiv = document.createElement("div");
			questionDiv.className = "questionBox";

			var questionTitle = document.createElement("div");
			questionTitle.className = "cha-title";

			// 1~20: 응용역학 21~40: 측량학 41~60: 수리학 및 수문학
			// 61~80: 철근콘크리트 및 강구조 81~100: 토질 및 기초 101~120: 상하수도공학
			// 문제 번호에 따라 알맞은 타이틀 설정
			if (index >= 0 && index < 20) {
				questionTitle.innerHTML = "[ 2022년 2회 ] 응용역학";
			} else if (index >= 20 && index < 40) {
				questionTitle.innerHTML = "[ 2022년 2회 ] 측량학";
			} else if (index >= 40 && index < 60) {
				questionTitle.innerHTML = "[ 2022년 2회 ] 수리학 및 수문학";
			} else if (index >= 60 && index < 80) {
				questionTitle.innerHTML = "[ 2022년 2회 ] 철근콘크리트 및 강구조";
			} else if (index >= 80 && index < 100) {
				questionTitle.innerHTML = "[ 2022년 2회 ] 토질 및 기초";
			} else if (index >= 100 && index < 120) {
				questionTitle.innerHTML = "[ 2022년 2회 ] 상하수도공학";
			}

			questionDiv.appendChild(questionTitle);

			var questionElement = document.createElement("div");
			questionElement.className = "questions";
			questionElement.innerHTML = (index + 1) + ". "
					+ questionData.question;
			questionDiv.appendChild(questionElement);

			// 이미지 첨부 , 이미지 없을 땐 첨부 X
			var questionImageElement = document.createElement("img");
			questionImageElement.className = "question-image";

			var afterIndex = index + 1;
			if (afterIndex == 6 || (92 <= afterIndex) && (afterIndex <= 96) ) {

				// 한 줄 띄우기
				var lineBreak = document.createElement("br");
				questionDiv.appendChild(lineBreak);

			} else {
				var imagePath = "/newapp/images/y2022c2Images/y2022c2_"
						+ (index + 1) + ".png";
				questionImageElement.src = imagePath;
				questionDiv.appendChild(questionImageElement);
			}

			var choicesElement = document.createElement("div");
			choicesElement.className = "choices";
			questionDiv.appendChild(choicesElement);

			for (var j = 0; j < questionData.choices.length; j++) {
				//var choiceLabel = " " + (j + 1) + ") " + questionData.choices[j];
				var choiceLabel = questionData.choices[j];
				var choiceInput = createChoiceInput(index, j);
				var choiceLabelElement = createChoiceLabel(choiceLabel);

				choicesElement.appendChild(choiceInput);
				choicesElement.appendChild(choiceLabelElement);

				var lineBreak = document.createElement("br"); // 줄바꿈
				choicesElement.appendChild(lineBreak);
			}

			return questionDiv;
		}

		function createChoiceInput(questionIndex, choiceIndex) {
			var choiceInput = document.createElement("input");
			choiceInput.type = "radio";
			choiceInput.name = "question" + questionIndex;
			choiceInput.value = choiceIndex;
			choiceInput.onclick = function() {
				selectChoice(questionIndex, choiceIndex);
			};

			return choiceInput;
		}

		function createChoiceLabel(label) {

			var choiceLabelElement = document.createElement("label");
			choiceLabelElement.innerHTML = label;
			choiceLabelElement.className = "choice-label";

			return choiceLabelElement;
		}

		function selectChoice(questionIndex, choiceIndex) {
			// 선택한 답 처리 로직
		}

		function submitQuiz() {
			// 퀴즈 제출 처리
		}
	</script>
</body>