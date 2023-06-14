<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
/*시험 결과*/
.result-title {
	width: 100%;
	text-align: center;
	margin-top: 20px;
	margin-bottom: 30px;
	font-size: 30px;
	font-weight: bold;
}
/*[몇년도 몇회]*/
.result-cha-title {
	width: 100%;
	text-align: center;
	margin-bottom: 25px;
	font-weight: bold;
	color: #89d8d3;
}

.score {
	width: 100%;
	margin: 0 auto;
	margin-bottom: 10px;
	text-align: center;
}

.score table {
	border-collapse: collapse;
	width: 100%;
	table-layout: fixed;
}

.score th, .score td {
	border: 4px solid #B6EAFA;
	padding: 8px;
	width: 33.33%;
}

.col-title1 {
	font-size: 12px;
	font-weight: bold;
	/* background-color: #B6EAFA; */
	background-color: #E6FFFD;
}

/*평균*/
.mean {
	width: 100%;
	text-align: center;
}
/*합격 불합격*/
.result {
	width: 100%;
	text-align: center;
	font-weight: bold;
	font-size: 30px;
	color: #F79327;
}

.mean {
	text-align: center;
	margin-bottom: 15px;
}

.mean2 {
	font-size: 30px;
	font-weight: bold;
}
</style>

<!-- js 참조 (questions배열 + 이미지 여부) --------------------------------- -->
<%  String testCha = request.getParameter("title");
	String testTitle = "";

		if (testCha.equals("y2022c2")) { %>
	    <script src="./js/y2022c2Test.js"></script>
	<%	testTitle = "[2022년도 2회 토목기사 필기]";
		} else if (testCha.equals("y2022c1")) { %>
	    <script src="./js/y2022c1Test.js"></script>
	<%	testTitle = "[2022년도 1회 토목기사 필기]";
	
		} else if (testCha.equals("y2021c3")) { %>
	    <script src="./js/y2021c3Test.js"></script>
	<%	testTitle = "[2021년도 3회 토목기사 필기]";
		} else if (testCha.equals("y2021c2")) { %>
	    <script src="./js/y2021c2Test.js"></script>
	<%  testTitle = "[2021년도 2회 토목기사 필기]";
		} else if (testCha.equals("y2021c1")) { %>
	    <script src="./js/y2021c1Test.js"></script>
	<%	testTitle = "[2021년도 1회 토목기사 필기]";
	
		} else if (testCha.equals("y2020c4")) { %>
	    <script src="./js/y2020c4Test.js"></script>
	<%	testTitle = "[2020년도 4회 토목기사 필기]";
		} else if (testCha.equals("y2020c3")) { %>
	    <script src="./js/y2020c3Test.js"></script>
	<%	testTitle = "[2020년도 3회 토목기사 필기]";
		} else if (testCha.equals("y2020c12")) { %>
	    <script src="./js/y2020c12Test.js"></script>
	<%	testTitle = "[2020년도 12회 토목기사 필기]";
	
		} else if (testCha.equals("y2019c3")) { %>
	    <script src="./js/y2019c3Test.js"></script>
	<%	testTitle = "[2019년도 3회 토목기사 필기]";
		} else if (testCha.equals("y2019c2")) { %>
	    <script src="./js/y2019c2Test.js"></script>
	<%	testTitle = "[2019년도 2회 토목기사 필기]";
		} else if (testCha.equals("y2019c1")) { %>
	    <script src="./js/y2019c1Test.js"></script>
	<%	testTitle = "[2019년도 1회 토목기사 필기]";
	
		} else if (testCha.equals("y2018c3")) { %>
	    <script src="./js/y2018c3Test.js"></script>
	<%	testTitle = "[2018년도 3회 토목기사 필기]";
		} else if (testCha.equals("y2018c2")) { %>
	    <script src="./js/y2018c2Test.js"></script>
	<%	testTitle = "[2018년도 2회 토목기사 필기]";
		} else if (testCha.equals("y2018c1")) { %>
	    <script src="./js/y2018c1Test.js"></script>
	<%	testTitle = "[2018년도 1회 토목기사 필기]";
	
		} else if (testCha.equals("y2017c4")) { %>
	    <script src="./js/y2017c4Test.js"></script>
	<%	testTitle = "[2017년도 4회 토목기사 필기]";
		} else if (testCha.equals("y2017c2")) { %>
	    <script src="./js/y2017c2Test.js"></script>
	<%	testTitle = "[2017년도 2회 토목기사 필기]";
		} else if (testCha.equals("y2017c1")) { %>
	    <script src="./js/y2017c1Test.js"></script>
	<%	testTitle = "[2017년도 1회 토목기사 필기]";
	
		} else if (testCha.equals("y2016c4")) { %>
	    <script src="./js/y2016c4Test.js"></script>
	<%	testTitle = "[2016년도 4회 토목기사 필기]";
		} else if (testCha.equals("y2016c2")) { %>
	    <script src="./js/y2016c2Test.js"></script>
	<%	testTitle = "[2016년도 2회 토목기사 필기]";
		} else if (testCha.equals("y2016c1")) { %>
	    <script src="./js/y2016c1Test.js"></script>
	<%	testTitle = "[2016년도 1회 토목기사 필기]";
	
		} else if (testCha.equals("y2015c4")) { %>
	    <script src="./js/y2015c4Test.js"></script>
	<%	testTitle = "[2015년도 4회 토목기사 필기]";
		} else if (testCha.equals("y2015c2")) { %>
	    <script src="./js/y2015c2Test.js"></script>
	<%	testTitle = "[2015년도 2회 토목기사 필기]";
		} else if (testCha.equals("y2015c1")) { %>
	    <script src="./js/y2015c1Test.js"></script>
	<%	testTitle = "[2015년도 1회 토목기사 필기]";
	
		} else if (testCha.equals("y2014c4")) { %>
	    <script src="./js/y2014c4Test.js"></script>
	<%	testTitle = "[2014년도 4회 토목기사 필기]";
		} else if (testCha.equals("y2014c2")) { %>
	    <script src="./js/y2014c2Test.js"></script>
	<%	testTitle = "[2014년도 2회 토목기사 필기]";
		} else if (testCha.equals("y2014c1")) { %>
	    <script src="./js/y2014c1Test.js"></script>
	<%	testTitle = "[2014년도 1회 토목기사 필기]";
	
		} else if (testCha.equals("y2013c4")) { %>
	    <script src="./js/y2013c4Test.js"></script>
	<%	testTitle = "[2013년도 4회 토목기사 필기]";
		} else if (testCha.equals("y2013c2")) { %>
	    <script src="./js/y2013c2Test.js"></script>
	<%	testTitle = "[2013년도 2회 토목기사 필기]";
		} else if (testCha.equals("y2013c1")) { %>
	    <script src="./js/y2013c1Test.js"></script>
	<%	testTitle = "[2013년도 1회 토목기사 필기]";
	
		} else if (testCha.equals("y2012c4")) { %>
	    <script src="./js/y2012c4Test.js"></script>
	<%	testTitle = "[2012년도 4회 토목기사 필기]";
		} else if (testCha.equals("y2012c2")) { %>
	    <script src="./js/y2012c2Test.js"></script>
	<%	testTitle = "[2012년도 2회 토목기사 필기]";
		} else if (testCha.equals("y2012c1")) { %>
	    <script src="./js/y2012c1Test.js"></script> 
	<%	testTitle = "[2012년도 1회 토목기사 필기]";
	
		} else if (testCha.equals("y2011c4")) { %>
	    <script src="./js/y2011c4Test.js"></script>
	<%	testTitle = "[2011년도 4회 토목기사 필기]";
		} else if (testCha.equals("y2011c2")) { %>
	    <script src="./js/y2011c2Test.js"></script>
	<%	testTitle = "[2011년도 2회 토목기사 필기]";
		} else if (testCha.equals("y2011c1")) { %>
	    <script src="./js/y2011c1Test.js"></script>
	<%	testTitle = "[2011년도 1회 토목기사 필기]";
	
		} else if (testCha.equals("y2010c4")) { %>
	    <script src="./js/y2010c4Test.js"></script>
	<%	testTitle = "[2010년도 4회 토목기사 필기]";
		} else if (testCha.equals("y2010c2")) { %>
	    <script src="./js/y2010c2Test.js"></script>
	<%	testTitle = "[2010년도 2회 토목기사 필기]";
		} else if (testCha.equals("y2010c1")) { %>
	    <script src="./js/y2010c1Test.js"></script>
	<%	testTitle = "[2010년도 1회 토목기사 필기]";
		} %>
<!-- ------------------------------------------------------------------------------- -->

	<div class="result-title">시험 결과</div>
	<div class="result-cha-title"><%= testTitle %></div>
	
	<table class="score score1">
		<tr class="col-title">
			<td class="col-title1">응용역학</td>
			<td class="col-title1">측량학</td>
			<td class="col-title1">수리학<br>및 수문학
			</td>
		</tr>
		<tr>
			<td>${param.score1}점</td>
			<td>${param.score2}점</td>
			<td>${param.score3}점</td>
		</tr>
	</table>
	
	<table class="score score2">
		<tr class="col-title">
			<td class="col-title1">철근콘크리트 및 강구조
			</td>
			<td class="col-title1">토질 및 기초</td>
			<td class="col-title1">상하수도공학</td>
		</tr>
		<tr>
			<td>${param.score4}점</td>
			<td>${param.score5}점</td>
			<td>${param.score6}점</td>
		</tr>
	</table>
	
	<%
	// submitPage.jsp에서 전달된 점수 데이터 파싱
	int score1 = Integer.parseInt(request.getParameter("score1"));
	int score2 = Integer.parseInt(request.getParameter("score2"));
	int score3 = Integer.parseInt(request.getParameter("score3"));
	int score4 = Integer.parseInt(request.getParameter("score4"));
	int score5 = Integer.parseInt(request.getParameter("score5"));
	int score6 = Integer.parseInt(request.getParameter("score6"));
	
	double mean = (double)(score1 + score2 + score3 + score4 + score5 + score6) / 6;
	String formattedMean = String.format("%.2f", mean);
	%>
	
	<div class="mean">
		<span class="mean1">평균: </span> <span class="mean2"><%=formattedMean%></span>
		<span class="mean3">점</span>
	</div>
	
	
	
	<%
	if (mean >= 60 && score1 >= 40 && score2 >= 40 && score3 >= 40 && score4 >= 40 && score5 >= 40 && score6 >= 40) {
	%>
	<div class="result" id="result">합격</div>
	<%
	} else {
	%>
	<div class="result" id="result">불합격</div>
	<%
	}
	%>
	
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
		
	<button class="btn-submit" id="btn-submit" onclick="submitQuiz()">제출하기</button>
	<!-- ------------------------------------ -->
	<script>
	
	var wrongNum = '${wrongNum}';
	var wrongAns = '${wrongAns}';
	
	// 문자열을 파싱하여 숫자 배열로 변환
	var wrongNumArray = JSON.parse(wrongNum);
	var wrongAnsArray = JSON.parse(wrongAns);
	
	// 각 요소를 개별적으로 출력
	for (var i = 0; i < wrongNumArray.length; i++) {
	  console.log(wrongNumArray[i]);
	}
	
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

		function createChoiceInput(questionIndex, choiceIndex) {
			var choiceInput = document.createElement("input");
			choiceInput.type = "radio";
			choiceInput.name = "question" + questionIndex;
			choiceInput.value = choiceIndex;

			choiceInput.onclick = function() {
				selectChoice(questionIndex, choiceIndex); // selectChoice => 선택한 답 처리 로직
			};

			return choiceInput;
		}

		function createChoiceLabel(label) {

			var choiceLabelElement = document.createElement("label");
			choiceLabelElement.innerHTML = label;
			choiceLabelElement.className = "choice-label";

			return choiceLabelElement;
		}

	</script>
</body>









	
