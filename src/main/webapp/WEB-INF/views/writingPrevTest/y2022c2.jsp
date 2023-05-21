<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
.cha-title {
	height: 24px;
	font-size: 10px;
	font-weight: bold;
	color: gray;
	margin-top: 15px;
	color: gray;
}

#previousButton, #nextButton {
	color: black;
	display: inline-block;
	padding: 8px 16px;
	border-radius: 4px;
	background-color: gray; /* 바꾸기 */
	width: 70px;
	height: 25px;
	text-align: left;
	border: none;
	z-index: 1;
	font-size: 10px;
}

#previousButton, #nextButton:hover {
	color: #fff;
}

#question {
	font-size: 15px; /* 원하는 글꼴 크기로 설정 */
}

.question-image {
	width: 300px; /* 이미지의 가로 크기 */
	height: 200px; /* 이미지의 세로 크기 */
	background-size: cover;
	background-position: center;
}
</style>

<!--  ------------------------------------ -->
<!-- <script src="./js/y2022c2Test.js"></script> -->
<script src="/newapp/js/y2022c2Test.js"></script>
<!-- http://localhost:9090/newapp/js/y2022c2Test.js 
<img src="../images/attach.jpg" style="width:20px">
-->
<!--  ------------------------------------ -->


<body onload="showQuestion()">
	<div class="cha-title">[ 2022년 2회 ] 응용역학</div>
	
	<div id="question">
		<img class="question-image" id="questionImage" src="/newapp/images/y2022c2Images/y2022c2_1.png" style="width: 300px; height: 200px;" >
	</div>

	<ul id="choices"></ul>
	
	<button id="previousButton" onclick="previousQuestion()">◀ 이전</button>
	<button id="nextButton" onclick="nextQuestion()">다음 ▶</button>
	<button id="submitButton" onclick="submitQuiz()">제출</button>

</body>
