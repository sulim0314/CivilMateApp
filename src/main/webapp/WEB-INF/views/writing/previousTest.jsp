<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
.btn, #test-cha {
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

#btn-testType120 {
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
			<option value="">22년도 2회</option>
			<option value="">22년도 1회</option>
			<option value="">21년도 3회</option>
			<option value="">21년도 2회</option>
			<option value="">21년도 1회</option>
			<option value="">20년도 4회</option>
			<option value="">20년도 3회</option>
			<option value="">20년도 1,2회</option>
			<option value="">19년도 3회</option>
			<option value="">19년도 2회</option>
			<option value="">19년도 1회</option>
			<option value="">18년도 3회</option>
			<option value="">18년도 2회</option>
			<option value="">18년도 1회</option>
			<option value="">17년도 4회</option>
			<option value="">17년도 2회</option>
			<option value="">17년도 1회</option>
			<option value="">16년도 4회</option>
			<option value="">16년도 2회</option>
			<option value="">16년도 1회</option>
			<option value="">15년도 4회</option>
			<option value="">15년도 2회</option>
			<option value="">15년도 1회</option>
			<option value="">14년도 4회</option>
			<option value="">14년도 2회</option>
			<option value="">14년도 1회</option>
			<option value="">13년도 4회</option>
			<option value="">13년도 2회</option>
			<option value="">13년도 1회</option>
			<option value="">12년도 4회</option>
			<option value="">12년도 2회</option>
			<option value="">12년도 1회</option>
			<option value="">11년도 4회</option>
			<option value="">11년도 2회</option>
			<option value="">11년도 1회</option>
			<option value="">10년도 4회</option>
			<option value="">10년도 2회</option>
			<option value="">10년도 1회</option>
		</select>
	</form>

	<div class="explain" style="margin-top: 15px">2. 시험 타입을 선택해주세요.</div>

	<a href="${myctx}/y2022c2Test" class="btn" id="btn-testType120">■
		전체 시험보기 (120문제)</a>
	<a href="#" class="btn" id="btn-testType">1. 응용역학 (20문제)</a>
	<a href="#" class="btn" id="btn-testType">2. 측량학 (20문제)</a>
	<a href="#" class="btn" id="btn-testType">3. 수리학 및 수문학 (20문제)</a>
	<a href="#" class="btn" id="btn-testType">4. 철근콘크리트 및 강구조 (20문제)</a>
	<a href="#" class="btn" id="btn-testType">5. 토질 및 기초 (20문제)</a>
	<a href="#" class="btn" id="btn-testType">6. 상하수도공학 (20문제)</a>


</body>
