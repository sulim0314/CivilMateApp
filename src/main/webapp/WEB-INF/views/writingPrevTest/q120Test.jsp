<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<head><link rel="stylesheet" href="./css/testLayout.css"></head>

<!-- js 참조 (questions배열 + 이미지 여부) --------------------------------- -->
<%  String testCha = request.getParameter("testCha");
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

<body onload="showQuestion()">
	<div class="title"><%= testTitle %></div>
	<div id="questionContainer"></div>
		
	<button class="btn-submit" id="btn-submit" onclick="submitQuiz()">제출하기</button>
	<!-- ------------------------------------ -->
	<script>
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

		// ★★★★★★★★★★★★★★★★★ 새로 넣었음 ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★

		// 선택한 답을 저장하는 배열
		var selectedAnswers = [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9];
		
		// 결과 보낼 배열------------------
		var sendWrongNum = [1, 2, 3, 7, 10, 333, 234, 23, 6];
		var sendWrongAns = [3, 3, 3, 3, 3, 3, 3, 3, 3];
		var sendWrongNumString = JSON.stringify(sendWrongNum);
		var sendWrongAnsString = JSON.stringify(sendWrongAns);
		
		// 서버로 데이터 전송
		$.ajax({
		  url: '/saveWrongData',
		  type: 'POST',
		  dataType : 'json',
		  contentType : "application/json;charset=UTF-8",
		  data: JSON.stringify({
			    sendWrongNum: sendWrongNum,
			    sendWrongAns: sendWrongAns
			    }),
		  success: function(response) {
		    console.log('데이터 전송 성공');
		  },
		  error: function(xhr, status, error) {
		    console.error('데이터 전송 실패:', error);
		  }
		});
		
		
		// 각 과목의 점수를 저장하는 변수들
		var score1 = 0;
		var score2 = 0;
		var score3 = 0;
		var score4 = 0;
		var score5 = 0;
		var score6 = 0;

		// 선택한 답 처리 로직
		function selectChoice(questionIndex, choiceIndex) {
			selectedAnswers[questionIndex] = choiceIndex;
		}

		// 선택한 답과 정답을 비교하여 점수를 계산하는 함수
		function calculateScore(questionIndex, choiceIndex) {
		  var question = questions[questionIndex];

		  // 선택한 답과 정답을 비교하여 점수를 반환
		  if ((parseInt(choiceIndex) + 1) === question.correctAnswer) {
			  
			  return 5; // 정답인 경우 5점 반환
		  } else {
			  
			  
		      return 0; // 오답인 경우 0점 반환
		  }
		} // calculateScore(questionIndex, choiceIndex) ---------------

		// 퀴즈 제출 처리 로직
		function submitQuiz() {
		  	var totalScore = 0; // 총점 초기화

		  for (var i = 0; i < selectedAnswers.length; i++) {
		    var questionIndex = i;
		    var choiceIndex = selectedAnswers[i];

		    // 문제 범위에 따라 해당하는 과목의 점수를 계산
		    if (questionIndex >= 0 && questionIndex < 20) {
		      score1 += calculateScore(questionIndex, choiceIndex);
		    } else if (questionIndex >= 20 && questionIndex < 40) {
		      score2 += calculateScore(questionIndex, choiceIndex);
		    } else if (questionIndex >= 40 && questionIndex < 60) {
		      score3 += calculateScore(questionIndex, choiceIndex);
		    } else if (questionIndex >= 60 && questionIndex < 80) {
		      score4 += calculateScore(questionIndex, choiceIndex);
		    } else if (questionIndex >= 80 && questionIndex < 100) {
		      score5 += calculateScore(questionIndex, choiceIndex);
		    } else if (questionIndex >= 100 && questionIndex < 120) {
		      score6 += calculateScore(questionIndex, choiceIndex);
		    }
		  }

		  // submitPage.jsp로 점수 데이터 전달
		  var testCha = "<%= testCha %>";
		  var url = "${myctx}/submitPage?title="+ testCha +
		    "&score1=" + score1 + "&score2=" + score2
		    + "&score3=" + score3 + "&score4=" + score4 + "&score5="
		    + score5 + "&score6=" + score6;
		  
		  // 페이지 이동
		  window.location.href = url;
		} // submitQuiz()------------------------
		
		
		
		
		
	</script>
</body>