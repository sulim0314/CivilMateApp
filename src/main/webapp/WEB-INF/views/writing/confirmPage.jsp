<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head><link rel="stylesheet" href="./css/testLayout.css"></head>
<style>
.title {
	font-size: 14px;	
	color: #F97B22;
}
.questionBox {
	border: 4px solid #FFE7CE;
}
</style>

<!-- js 참조 (questions배열 + 이미지 여부) --------------------------------- -->
<%  String testCha = request.getParameter("testCha");
	String testTitle = "";

		if (testCha.equals("y2022c2")) { %>
	    <script src="./js/y2022c2Test.js"></script>
	<%	testTitle = "[2022년도 2회 토목기사 필기 오답]";
		} else if (testCha.equals("y2022c1")) { %>
	    <script src="./js/y2022c1Test.js"></script>
	<%	testTitle = "[2022년도 1회 토목기사 필기 오답]";
	
		} else if (testCha.equals("y2021c3")) { %>
	    <script src="./js/y2021c3Test.js"></script>
	<%	testTitle = "[2021년도 3회 토목기사 필기 오답]";
		} else if (testCha.equals("y2021c2")) { %>
	    <script src="./js/y2021c2Test.js"></script>
	<%  testTitle = "[2021년도 2회 토목기사 필기 오답]";
		} else if (testCha.equals("y2021c1")) { %>
	    <script src="./js/y2021c1Test.js"></script>
	<%	testTitle = "[2021년도 1회 토목기사 필기 오답]";
	
		} else if (testCha.equals("y2020c4")) { %>
	    <script src="./js/y2020c4Test.js"></script>
	<%	testTitle = "[2020년도 4회 토목기사 필기 오답]";
		} else if (testCha.equals("y2020c3")) { %>
	    <script src="./js/y2020c3Test.js"></script>
	<%	testTitle = "[2020년도 3회 토목기사 필기 오답]";
		} else if (testCha.equals("y2020c12")) { %>
	    <script src="./js/y2020c12Test.js"></script>
	<%	testTitle = "[2020년도 12회 토목기사 필기 오답]";
	
		} else if (testCha.equals("y2019c3")) { %>
	    <script src="./js/y2019c3Test.js"></script>
	<%	testTitle = "[2019년도 3회 토목기사 필기 오답]";
		} else if (testCha.equals("y2019c2")) { %>
	    <script src="./js/y2019c2Test.js"></script>
	<%	testTitle = "[2019년도 2회 토목기사 필기 오답]";
		} else if (testCha.equals("y2019c1")) { %>
	    <script src="./js/y2019c1Test.js"></script>
	<%	testTitle = "[2019년도 1회 토목기사 필기 오답]";
	
		} else if (testCha.equals("y2018c3")) { %>
	    <script src="./js/y2018c3Test.js"></script>
	<%	testTitle = "[2018년도 3회 토목기사 필기 오답]";
		} else if (testCha.equals("y2018c2")) { %>
	    <script src="./js/y2018c2Test.js"></script>
	<%	testTitle = "[2018년도 2회 토목기사 필기 오답]";
		} else if (testCha.equals("y2018c1")) { %>
	    <script src="./js/y2018c1Test.js"></script>
	<%	testTitle = "[2018년도 1회 토목기사 필기 오답]";
	
		} else if (testCha.equals("y2017c4")) { %>
	    <script src="./js/y2017c4Test.js"></script>
	<%	testTitle = "[2017년도 4회 토목기사 필기 오답]";
		} else if (testCha.equals("y2017c2")) { %>
	    <script src="./js/y2017c2Test.js"></script>
	<%	testTitle = "[2017년도 2회 토목기사 필기 오답]";
		} else if (testCha.equals("y2017c1")) { %>
	    <script src="./js/y2017c1Test.js"></script>
	<%	testTitle = "[2017년도 1회 토목기사 필기 오답]";
	
		} else if (testCha.equals("y2016c4")) { %>
	    <script src="./js/y2016c4Test.js"></script>
	<%	testTitle = "[2016년도 4회 토목기사 필기 오답]";
		} else if (testCha.equals("y2016c2")) { %>
	    <script src="./js/y2016c2Test.js"></script>
	<%	testTitle = "[2016년도 2회 토목기사 필기 오답]";
		} else if (testCha.equals("y2016c1")) { %>
	    <script src="./js/y2016c1Test.js"></script>
	<%	testTitle = "[2016년도 1회 토목기사 필기 오답]";
	
		} else if (testCha.equals("y2015c4")) { %>
	    <script src="./js/y2015c4Test.js"></script>
	<%	testTitle = "[2015년도 4회 토목기사 필기 오답]";
		} else if (testCha.equals("y2015c2")) { %>
	    <script src="./js/y2015c2Test.js"></script>
	<%	testTitle = "[2015년도 2회 토목기사 필기 오답]";
		} else if (testCha.equals("y2015c1")) { %>
	    <script src="./js/y2015c1Test.js"></script>
	<%	testTitle = "[2015년도 1회 토목기사 필기 오답]";
	
		} else if (testCha.equals("y2014c4")) { %>
	    <script src="./js/y2014c4Test.js"></script>
	<%	testTitle = "[2014년도 4회 토목기사 필기 오답]";
		} else if (testCha.equals("y2014c2")) { %>
	    <script src="./js/y2014c2Test.js"></script>
	<%	testTitle = "[2014년도 2회 토목기사 필기 오답]";
		} else if (testCha.equals("y2014c1")) { %>
	    <script src="./js/y2014c1Test.js"></script>
	<%	testTitle = "[2014년도 1회 토목기사 필기 오답]";
	
		} else if (testCha.equals("y2013c4")) { %>
	    <script src="./js/y2013c4Test.js"></script>
	<%	testTitle = "[2013년도 4회 토목기사 필기 오답]";
		} else if (testCha.equals("y2013c2")) { %>
	    <script src="./js/y2013c2Test.js"></script>
	<%	testTitle = "[2013년도 2회 토목기사 필기 오답]";
		} else if (testCha.equals("y2013c1")) { %>
	    <script src="./js/y2013c1Test.js"></script>
	<%	testTitle = "[2013년도 1회 토목기사 필기 오답]";
	
		} else if (testCha.equals("y2012c4")) { %>
	    <script src="./js/y2012c4Test.js"></script>
	<%	testTitle = "[2012년도 4회 토목기사 필기 오답]";
		} else if (testCha.equals("y2012c2")) { %>
	    <script src="./js/y2012c2Test.js"></script>
	<%	testTitle = "[2012년도 2회 토목기사 필기 오답]";
		} else if (testCha.equals("y2012c1")) { %>
	    <script src="./js/y2012c1Test.js"></script> 
	<%	testTitle = "[2012년도 1회 토목기사 필기 오답]";
	
		} else if (testCha.equals("y2011c4")) { %>
	    <script src="./js/y2011c4Test.js"></script>
	<%	testTitle = "[2011년도 4회 토목기사 필기 오답]";
		} else if (testCha.equals("y2011c2")) { %>
	    <script src="./js/y2011c2Test.js"></script>
	<%	testTitle = "[2011년도 2회 토목기사 필기 오답]";
		} else if (testCha.equals("y2011c1")) { %>
	    <script src="./js/y2011c1Test.js"></script>
	<%	testTitle = "[2011년도 1회 토목기사 필기 오답]";
	
		} else if (testCha.equals("y2010c4")) { %>
	    <script src="./js/y2010c4Test.js"></script>
	<%	testTitle = "[2010년도 4회 토목기사 필기 오답]";
		} else if (testCha.equals("y2010c2")) { %>
	    <script src="./js/y2010c2Test.js"></script>
	<%	testTitle = "[2010년도 2회 토목기사 필기 오답]";
		} else if (testCha.equals("y2010c1")) { %>
	    <script src="./js/y2010c1Test.js"></script>
	<%	testTitle = "[2010년도 1회 토목기사 필기 오답]";
		} %>
<!-- ------------------------------------------------------------------------------- -->

<form action="/selectWrongData" method="get">

	<h2>틀린문제</h2>
	<div id="wrongQuestions">
		<h1>Wrong Data</h1>
	    <p>Wrong Number: ${wrongNum}</p>
	    <p>Wrong Answer: ${wrongAns}</p>
	</div>
	
</form>


<body onload="showQuestion()">

	<div class="title"><%= testTitle %></div>
	<div id="questionContainer"></div>
		
	<!-- ------------------------------------ -->
	<script>
	
	var wrongNum = '${wrongNum}';
	var wrongAns = '${wrongAns}';
	
	// 문자열을 파싱하여 숫자 배열로 변환
	var wrongNumArray = JSON.parse(wrongNum);
	var wrongAnsArray = JSON.parse(wrongAns);

		function showQuestion() {
			var questionContainer = document
					.getElementById("questionContainer");
			questionContainer.innerHTML = ""; // 문제 컨테이너 초기화

			var subjectTitles = [ "1과목 : 응용역학", "2과목 : 측량학", "3과목 : 수리학 및 수문학",
					"4과목 : 철근콘크리트 및 강구조", "5과목 : 토질 및 기초", "6과목 : 상하수도공학" ];

			var currentSubjectIndex = 0;

			for (var i = 0; i < wrongNumArray.length; i++) {
				
				var questionNumberIndex = wrongNumArray[i]-1;
				var subjectIndex = Math.ceil(questionNumberIndex / 20);
				var subjectTitle = subjectTitles[subjectIndex];
				
				var questionDiv = createQuestionDiv(wrongNumArray[i]-1);
				questionContainer.appendChild(questionDiv);
	
			}
		}

		function createTitleElement(title) {
			var titleElement = document.createElement("div");
			titleElement.className = "subjectTitle";
			titleElement.innerHTML = title;
			return titleElement;
		}

		function createChoiceInput(questionIndex, choiceIndex) {
			var choiceInput = document.createElement("input");
			choiceInput.type = "radio";
			choiceInput.name = "question" + questionIndex;
			choiceInput.value = choiceIndex;

			var question = questions[questionIndex];

			// 진짜 답 스타일링
			if (choiceIndex === question.correctAnswer-1) {
			    choiceInput.checked = true;
			}
			
			// 체크x된 라디오 버튼 변경 불가능하도록 막기
 			if (!choiceInput.checked) {
			    choiceInput.disabled = true;
			}
			
			return choiceInput;
		}

		function createChoiceLabel(label, questionIndex, j) {

			var choiceLabelElement = document.createElement("label");
			choiceLabelElement.innerHTML = label;
			choiceLabelElement.className = "choice-label";

			// 틀린 답 스타일링 ★★★★★★★★★
			var wrongNumIndex = wrongNumArray.indexOf(questionIndex + 1);
			
			if(wrongAnsArray[wrongNumIndex]-1 === j) {
				choiceLabelElement.style.color = "red";
			}
			
			return choiceLabelElement;
		}

	</script>
</body>









	
