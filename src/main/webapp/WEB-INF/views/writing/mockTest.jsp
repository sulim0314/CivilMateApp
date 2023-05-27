<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
.btn {
	color: black;
	display: inline-block;
	padding: 8px 16px;
	text-decoration: none;
	border-radius: 4px;
	background-color: #AFD3E2;
	width: 100%;
	height: 1cm;
	text-align: left;
	margin-bottom: 10px; /* 버튼 간격 조정을 위한 마진 값 */
	border: none;
	z-index: 1;
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

.explain1, .explain2 {
	font-size: 12px;
	color: gray;
	text-align: center;
}

.explain2 {
	margin-bottom: 25px;
}

.btn-test {
	border-radius: 4px;
	background-color: white;
	color: black;
	border: none;
}

.range {
	font-size: 13px;
	margin-top: 10px;
	margin-bottom: 5px;
}

#start-test-cha, #end-test-cha{
	border: 3px solid #DAF5FF;
	border-radius: 4px;
	background-color: white;
	height: 25px;
	font-weight: bold;
	color: #27374D;
}

.me-2 {
	font-size: 11px;
	margin-right: 8px;
	color: gray;
}
</style>


</head>

<body>
	<div class="title">필기 모의고사</div>
	<div class="explain1">기출 문제들을 랜덤으로 시험 볼 수 있습니다.</div>
	<div class="explain2">원하는 시험 범위를 설정해 주세요.</div>

	<form action="" method="GET" class="range">
		<!-- 첫 번째 드롭다운: 시작 범위 -->
		<select name="start-test-cha" id="start-test-cha">
			<option value="">22년 2회</option>
			<option value="">22년 1회</option>
			<option value="">21년 3회</option>
			<option value="">21년 2회</option>
			<option value="">21년 1회</option>
			<option value="">20년 4회</option>
			<option value="">20년 3회</option>
			<option value="">20년 1,2회</option>
			<option value="">19년 3회</option>
			<option value="">19년 2회</option>
			<option value="">19년 1회</option>
			<option value="">18년 3회</option>
			<option value="">18년 2회</option>
			<option value="">18년 1회</option>
			<option value="">17년 4회</option>
			<option value="">17년 2회</option>
			<option value="">17년 1회</option>
			<option value="">16년 4회</option>
			<option value="">16년 2회</option>
			<option value="">16년 1회</option>
			<option value="">15년 4회</option>
			<option value="">15년 2회</option>
			<option value="">15년 1회</option>
			<option value="">14년 4회</option>
			<option value="">14년 2회</option>
			<option value="">14년 1회</option>
			<option value="">13년 4회</option>
			<option value="">13년 2회</option>
			<option value="">13년 1회</option>
			<option value="">12년 4회</option>
			<option value="">12년 2회</option>
			<option value="">12년 1회</option>
			<option value="">11년 4회</option>
			<option value="">11년 2회</option>
			<option value="">11년 1회</option>
			<option value="">10년 4회</option>
			<option value="">10년 2회</option>
			<option value="">10년 1회</option>
		</select> <span class="me-2">부터 ~</span>
		<!-- 두 번째 드롭다운: 종료 범위 -->
		<select name="end-test-cha" id="end-test-cha">
			<option value="">22년 2회</option>
			<option value="">22년 1회</option>
			<option value="">21년 3회</option>
			<option value="">21년 2회</option>
			<option value="">21년 1회</option>
			<option value="">20년 4회</option>
			<option value="">20년 3회</option>
			<option value="">20년 1,2회</option>
			<option value="">19년 3회</option>
			<option value="">19년 2회</option>
			<option value="">19년 1회</option>
			<option value="">18년 3회</option>
			<option value="">18년 2회</option>
			<option value="">18년 1회</option>
			<option value="">17년 4회</option>
			<option value="">17년 2회</option>
			<option value="">17년 1회</option>
			<option value="">16년 4회</option>
			<option value="">16년 2회</option>
			<option value="">16년 1회</option>
			<option value="">15년 4회</option>
			<option value="">15년 2회</option>
			<option value="">15년 1회</option>
			<option value="">14년 4회</option>
			<option value="">14년 2회</option>
			<option value="">14년 1회</option>
			<option value="">13년 4회</option>
			<option value="">13년 2회</option>
			<option value="">13년 1회</option>
			<option value="">12년 4회</option>
			<option value="">12년 2회</option>
			<option value="">12년 1회</option>
			<option value="">11년 4회</option>
			<option value="">11년 2회</option>
			<option value="">11년 1회</option>
			<option value="">10년 4회</option>
			<option value="">10년 2회</option>
			<option value="">10년 1회</option>
		</select> <span class="me-2">까지</span>

	</form>

	<a href="#" class="btn" id="btn-testType1" style="margin-top: 15px"
		onclick="">■ 1문제씩 연습하기</a>
	<a href="#" class="btn" id="btn-testType120" 
		onclick="generateTest()">■ 전체 시험보기 (120문제)</a>
		
	<a href="#" class="btn" id="btn-testType">1. 응용역학 (20문제)</a>
	<a href="#" class="btn" id="btn-testType">2. 측량학 (20문제)</a>
	<a href="#" class="btn" id="btn-testType">3. 수리학 및 수문학 (20문제)</a>
	<a href="#" class="btn" id="btn-testType">4. 철근콘크리트 및 강구조 (20문제)</a>
	<a href="#" class="btn" id="btn-testType">5. 토질 및 기초 (20문제)</a>
	<a href="#" class="btn" id="btn-testType">6. 상하수도공학 (20문제)</a>


	<!-- 나머지 버튼들은 선택한 범위에 따라 동적으로 생성되도록 수정해야 합니다. -->
	<div id="testTypeContainer"></div>

	<script>
		function generateTest() {
			// 선택한 시작 범위와 종료 범위 값을 가져옵니다.
			var startRange = document.getElementById("start-test-cha").value;
			var endRange = document.getElementById("end-test-cha").value;

			// 시작 범위와 종료 범위를 비교하여 유효한 범위인지 확인합니다.
			if (startRange && endRange && startRange <= endRange) {
				// 문제들을 구성하는 기능을 구현해야 합니다.
				// 선택한 범위에 따라 문제들을 동적으로 생성하여 testTypeContainer에 추가합니다.
				// 예를 들어, 선택한 범위에 해당하는 문제들을 가져와서 버튼으로 생성하는 로직을 추가하시면 됩니다.
				// 아래는 예시 코드입니다.

				// 문제들을 구성하는 로직 예시
				var testTypeContainer = document
						.getElementById("testTypeContainer");
				testTypeContainer.innerHTML = ""; // 기존에 생성된 버튼들을 초기화합니다.

				// 문제들을 생성하여 추가하는 예시
				for (var i = 1; i <= 6; i++) {
					var btn = document.createElement("a");
					btn.href = "#";
					btn.className = "btn btn-testType";
					btn.textContent = i + ". 문제"; // 문제 번호나 이름을 설정합니다.

					// 생성된 버튼을 testTypeContainer에 추가합니다.
					testTypeContainer.appendChild(btn);
				}
			}
		}
	</script>
</body>
</body>
