<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
.prev, .check, .next {
	display: inline-block;
	padding: 8px 16px;
	text-decoration: none;
	border-radius: 4px;
	width: 32%;
	height: 40px;
	text-align: center;
	margin-bottom: 10px; /* 버튼 간격 조정을 위한 마진 값 */
	border: none;
	z-index: 1;
	background-color: #85CDFD;
	font-size: 13px;
}

.prev, .next {
	background-color: #B6EAFA;
}

.prev:hover, .check:hover, .next:hover {
	color: #fff;
}
</style>

<body onload="showQuestion()">

	<div id="questionContainer"></div>

	<button class="prev">◀ 이전</button>
	<button class="check" onclick="checkAnswer(); openModal()">답
		확인</button>
	<button class="next">다음 ▶</button>
	
	<div>${qna[0]}</div>
	<div>${qna[1]}</div>

	<!-- The Modal -->
	<div class="modal fade" id="myModal">
		<div class="modal-dialog modal-dialog-centered">

			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title" id="modalTitle"></h4>
					<!-- <button type="button" class="close" data-dismiss="modal">&times;</button> -->
				</div>

				<!-- Modal body -->
				<div class="modal-body">
					<p id="modalBody"></p>
				</div>

				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal" style="font-size: 14px;">확인</button>
				</div>

			</div>

		</div>
	</div>

	<script>
		var randomIndexArr = []; // 200개 들어가있음
		var currentIndex = 0; // 화면에 표시하는 문제 (randomIndexArr[currentIndex])

		for (var i = 0; i < 200; i++) {
			var randomIndex = Math.floor(Math.random() * questions.length);
			randomIndexArr.push(randomIndex);
		}

		function showQuestion() {
			var questionContainer = document
					.getElementById("questionContainer");
			questionContainer.innerHTML = "";

			var questionDiv = createQuestionDiv(randomIndexArr[currentIndex]);

			questionContainer.appendChild(questionDiv);
		}

		// 이전 버튼
		$(".prev").click(function() {
			if (currentIndex > 0) {
				currentIndex--;
				showQuestion();
			}
		});

		// 다음 버튼
		$(".next").click(function() {
			currentIndex++;
			if (currentIndex >= randomIndexArr.length) {
				location.reload(); // currentIndex가 배열 길이 이상이면 페이지 리로드
			} else {
				showQuestion();
			}
		});

		// 랜덤한 문제, 보기, 답 가져오기
		var randomQuestion = questions[randomIndexArr[currentIndex]];

		function openModal() {
			$('#myModal').modal('show');
		}

		function checkAnswer() {
			var selectedAnswer = selectedAnswers[randomIndexArr[currentIndex]];
			var questionIndex = randomIndexArr[currentIndex];
			var correctAnswer = questions[questionIndex].correctAnswer;

			var modalTitleElement = document.getElementById("modalTitle");
			var modalBodyElement = document.getElementById("modalBody");

			if ((parseInt(selectedAnswer) + 1) === correctAnswer) {
				modalTitleElement.innerHTML = "정답입니다 !";
			} else {
				modalTitleElement.innerHTML = "틀렸습니다 !";
			}

			modalBodyElement.innerHTML = "정답은 " + correctAnswer + "번입니다.";
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
	
	</script>
</body>

