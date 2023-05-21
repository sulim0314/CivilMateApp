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

#btn-testType120 {
	font-size: 14px;
	background-color: #98EECC;
}
</style>
</head>

<body>

	<div class="" style="height: 10px"></div>
	<a href="${myctx}/y2022c2Test" class="btn" id="btn-testType120">■ 전체 시험보기 (120문제)</a>
	<a href="#" class="btn" id="btn-testType">1. 응용역학 (20문제)</a>
	<a href="#" class="btn" id="btn-testType">2. 측량학 (20문제)</a>
	<a href="#" class="btn" id="btn-testType">3. 수리학 및 수문학 (20문제)</a>
	<a href="#" class="btn" id="btn-testType">4. 철근콘크리트 및 강구조 (20문제)</a>
	<a href="#" class="btn" id="btn-testType">5. 토질 및 기초 (20문제)</a>
	<a href="#" class="btn" id="btn-testType">6. 상하수도공학 (20문제)</a>



</body>
