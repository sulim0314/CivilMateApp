<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<head>
	<link rel="stylesheet" href="./css/testLayout.css">
		
	<title>Bootstrap Example</title>
  	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  	<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
 	 <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

</head>

<!-- js 참조 (questions배열 + 이미지 여부) --------------------------------- -->
<%  String testCha = request.getParameter("testCha");

    if (testCha.equals("y2022c2")) { %>
        <script src="./js/y2022c2Test.js"></script>
    <%} else if (testCha.equals("y2022c1")) { %>
        <script src="./js/y2022c1Test.js"></script>
        
    <%} else if (testCha.equals("y2021c3")) { %>
        <script src="./js/y2021c3Test.js"></script>
    <%} else if (testCha.equals("y2021c2")) { %>
        <script src="./js/y2021c2Test.js"></script>
    <%} else if (testCha.equals("y2021c1")) { %>
        <script src="./js/y2021c1Test.js"></script>
        
    <%} else if (testCha.equals("y2020c4")) { %>
        <script src="./js/y2020c4Test.js"></script>
    <%} else if (testCha.equals("y2020c3")) { %>
        <script src="./js/y2020c3Test.js"></script>
    <%} else if (testCha.equals("y2020c12")) { %>
        <script src="./js/y2020c12Test.js"></script>
        
    <%} else if (testCha.equals("y2019c3")) { %>
        <script src="./js/y2019c3Test.js"></script>
    <%} else if (testCha.equals("y2019c2")) { %>
        <script src="./js/y2019c2Test.js"></script>
    <%} else if (testCha.equals("y2019c1")) { %>
        <script src="./js/y2019c1Test.js"></script>
        
    <%} else if (testCha.equals("y2018c3")) { %>
        <script src="./js/y2018c3Test.js"></script>
    <%} else if (testCha.equals("y2018c2")) { %>
        <script src="./js/y2018c2Test.js"></script>
    <%} else if (testCha.equals("y2018c1")) { %>
        <script src="./js/y2018c1Test.js"></script>
        
    <%} else if (testCha.equals("y2017c4")) { %>
        <script src="./js/y2017c4Test.js"></script>
    <%} else if (testCha.equals("y2017c2")) { %>
        <script src="./js/y2017c2Test.js"></script>
    <%} else if (testCha.equals("y2017c1")) { %>
        <script src="./js/y2017c1Test.js"></script>
        
    <%} else if (testCha.equals("y2016c4")) { %>
        <script src="./js/y2016c4Test.js"></script>
    <%} else if (testCha.equals("y2016c2")) { %>
        <script src="./js/y2016c2Test.js"></script>
    <%} else if (testCha.equals("y2016c1")) { %>
        <script src="./js/y2016c1Test.js"></script>
        
    <%} else if (testCha.equals("y2015c4")) { %>
        <script src="./js/y2015c4Test.js"></script>
    <%} else if (testCha.equals("y2015c2")) { %>
        <script src="./js/y2015c2Test.js"></script>
    <%} else if (testCha.equals("y2015c1")) { %>
        <script src="./js/y2015c1Test.js"></script>
        
    <%} else if (testCha.equals("y2014c4")) { %>
        <script src="./js/y2014c4Test.js"></script>
    <%} else if (testCha.equals("y2014c2")) { %>
        <script src="./js/y2014c2Test.js"></script>
    <%} else if (testCha.equals("y2014c1")) { %>
        <script src="./js/y2014c1Test.js"></script>
        
    <%} else if (testCha.equals("y2013c4")) { %>
        <script src="./js/y2013c4Test.js"></script>
    <%} else if (testCha.equals("y2013c2")) { %>
        <script src="./js/y2013c2Test.js"></script>
    <%} else if (testCha.equals("y2013c1")) { %>
        <script src="./js/y2013c1Test.js"></script>
        
    <%} else if (testCha.equals("y2012c4")) { %>
        <script src="./js/y2012c4Test.js"></script>
    <%} else if (testCha.equals("y2012c2")) { %>
        <script src="./js/y2012c2Test.js"></script>
    <%} else if (testCha.equals("y2012c1")) { %>
        <script src="./js/y2012c1Test.js"></script>
        
    <%} else if (testCha.equals("y2011c4")) { %>
        <script src="./js/y2011c4Test.js"></script>
    <%} else if (testCha.equals("y2011c2")) { %>
        <script src="./js/y2011c2Test.js"></script>
    <%} else if (testCha.equals("y2011c1")) { %>
        <script src="./js/y2011c1Test.js"></script>
        
    <%} else if (testCha.equals("y2010c4")) { %>
        <script src="./js/y2010c4Test.js"></script>
    <%} else if (testCha.equals("y2010c2")) { %>
        <script src="./js/y2010c2Test.js"></script>
    <%} else if (testCha.equals("y2010c1")) { %>
        <script src="./js/y2010c1Test.js"></script>
    <%} %>

<!-- ------------------------------------------------------------------------------- -->

<style>
.check, .next {
	display: inline-block;
	padding: 8px 16px;
	text-decoration: none;
	border-radius: 4px;
	width: 49%;
	height: 40px;
	text-align: center;
	margin-bottom: 10px; /* 버튼 간격 조정을 위한 마진 값 */
	border: none;
	z-index: 1;
	background-color: #85CDFD;
	font-size: 13px;
}
.next {
	background-color: #B6EAFA;
}

.check:hover {
	color: #fff;
}
.next:hover {
	color: #fff;
}

</style>

<body onload="showQuestion()">
	
	<div id="questionContainer"></div>
		  	
	<button class="check" data-toggle="modal" data-target="#myModal">답 맞추기</button>
	<button class="next">다음 문제 ▶</button>
				
	<!-- Button to Open the Modal -->
  <!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
    Open modal
  </button> -->

  <!-- The Modal -->
  <div class="modal fade" id="myModal">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">정답임 틀렸음</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
          정답은 ~~~~~
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기~</button>
        </div>
        
      </div>
    </div>
  </div>
	
	
	
	
	
	
	<script> 
		// 랜덤한 문제 번호 생성
	    var randomQuestionIndex = Math.floor(Math.random() * questions.length); // 0~119
	
	    // 랜덤한 문제 가져오기
	    var randomQuestion = questions[randomQuestionIndex];
	
	    // 문제 randomQuestion.question
	    // 보기 randomQuestion.choices
	    // 정답 randomQuestion.correctAnswer
	
	    function showQuestion() {
			var questionContainer = document.getElementById("questionContainer");
			questionContainer.innerHTML = ""; // 문제 컨테이너 초기화

			var questionDiv = createQuestionDiv(randomQuestionIndex);
			
			questionContainer.appendChild(questionDiv);
			
			$(".next").click(function() {
			    location.reload();
			});
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
		}

	</script>
</body>

    
    
    
    
    
    
    
    