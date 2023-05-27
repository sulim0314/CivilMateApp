<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
.btn, #test-cha {
	color: black;
	display: inline-block;
	padding: 8px 16px;
	text-decoration: none;
	border-radius: 4px;
	background-color: #B8E7E1;
	width: 100%;
	height: 1cm;
	text-align: left;
	margin-bottom: 10px; /* 버튼 간격 조정을 위한 마진 값 */
	border: none;
	z-index: 1;
}
#test-cha {
	background-color: #B6EAFA;
	font-size: 14px;
}
.btn:hover {
	color: #fff;
}

#btn-testType {
	font-size: 14px;
}

#btn-testType1, #btn-testType120 {
	font-size: 14px;
	background-color: #98EECC;
}

.title {
	font-weight: bold;
	font-size: 20px;
	color: #19A7CE;
	text-align: center;
	margin-top: 15px;
	margin-bottom: 15px;
}

.explain {
	font-size: 12px;
	color: gray;
	text-align: center;
	margin-bottom: 15px;
}
</style>
</head>

<body>
	<div class="title">필기 기출문제</div>
	<div class="explain">1. 응시할 회차를 선택해주세요.</div>
	
	<form action="" method="GET" class="range">
		<select name="test-cha" id="test-cha">
		
			<option value="y2022c2">22년도 2회</option>
			<option value="y2022c1">22년도 1회</option>
			
			<option value="y2021c3">21년도 3회</option>
			<option value="y2021c2">21년도 2회</option>
			<option value="y2021c1">21년도 1회</option>
			
			<option value="y2020c4">20년도 4회</option>
			<option value="y2020c3">20년도 3회</option>
			<option value="y2020c12">20년도 1,2회</option>
			
			<option value="y2019c3">19년도 3회</option>
			<option value="y2019c2">19년도 2회</option>
			<option value="y2019c1">19년도 1회</option>
			
			<option value="y2018c3">18년도 3회</option>
			<option value="y2018c2">18년도 2회</option>
			<option value="y2018c1">18년도 1회</option>
			
			<option value="y2017c4">17년도 4회</option>
			<option value="y2017c2">17년도 2회</option>
			<option value="y2017c1">17년도 1회</option>
			
			<option value="y2016c4">16년도 4회</option>
			<option value="y2016c2">16년도 2회</option>
			<option value="y2016c1">16년도 1회</option>
			
			<option value="y2015c4">15년도 4회</option>
			<option value="y2015c2">15년도 2회</option>
			<option value="y2015c1">15년도 1회</option>
			
			<option value="y2014c4">14년도 4회</option>
			<option value="y2014c2">14년도 2회</option>
			<option value="y2014c1">14년도 1회</option>
			
			<option value="y2013c4">13년도 4회</option>
			<option value="y2013c2">13년도 2회</option>
			<option value="y2013c1">13년도 1회</option>
			
			<option value="y2012c4">12년도 4회</option>
			<option value="y2012c2">12년도 2회</option>
			<option value="y2012c1">12년도 1회</option>
			
			<option value="y2011c4">11년도 4회</option>
			<option value="y2011c2">11년도 2회</option>
			<option value="y2011c1">11년도 1회</option>
			
			<option value="y2010c4">10년도 4회</option>
			<option value="y2010c2">10년도 2회</option>
			<option value="y2010c1">10년도 1회</option>
		</select>
	</form>

	<div class="explain" style="margin-top: 15px">2. 시험 타입을 선택해주세요.</div>

	<a href="#" class="btn" id="btn-testType1" onclick="practice()">■ 1문제씩 연습하기</a>
	<a href="#" class="btn" id="btn-testType120" onclick="takeFullTest()">■ 전체 시험보기 (120문제)</a>
	<a href="#" class="btn" id="btn-testType">1. 응용역학 (20문제)</a>
	<a href="#" class="btn" id="btn-testType">2. 측량학 (20문제)</a>
	<a href="#" class="btn" id="btn-testType">3. 수리학 및 수문학 (20문제)</a>
	<a href="#" class="btn" id="btn-testType">4. 철근콘크리트 및 강구조 (20문제)</a>
	<a href="#" class="btn" id="btn-testType">5. 토질 및 기초 (20문제)</a>
	<a href="#" class="btn" id="btn-testType">6. 상하수도공학 (20문제)</a>

	<script>
		function practice() {
			// 선택한 회차 값 가져오기
			var testCha = document.getElementById("test-cha").value;
			
			// 선택한 회차에 해당하는 URL로 이동
			window.location.href = "${myctx}/q1Test?testCha="+testCha; // 회차 알려주기	
		}

		function takeFullTest() {
			// 선택한 회차 값 가져오기
			var testCha = document.getElementById("test-cha").value;

			// 선택한 회차에 해당하는 URL로 이동
			window.location.href = "${myctx}/" + testCha;
		}
	</script>


</body>
