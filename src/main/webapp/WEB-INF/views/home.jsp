<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>

<style>
.btn {
	display: inline-block;
	padding: 8px 16px;
	text-decoration: none;
	border-radius: 4px;
	
	width: 100%;
	height: 1cm;
	text-align: center;
	margin-bottom: 10px; /* 버튼 간격 조정을 위한 마진 값 */
	/* background-image: linear-gradient(315deg, #89d8d3 0%, #03c8a8 74%); */
	border: none;
	z-index: 1;
}

.btn:hover {
	color: #fff;
}

#btn1 {
	background-color: #AFD3E2;
}

#btn2 {
	background-color: #89d8d3;
}
</style>
</head>

<body>
	<div style="height: 1cm"></div>
	<h1 class="mainImage" style="text-align: center">★★★</h1>
	<div style="height: 40px"></div>

	<a href="prev_test" class="btn" id="btn1">필기 기출문제</a>
	<button class="btn" id="btn1">필기 모의고사</button>
	<button class="btn" id="btn1">필기 오답노트</button>
	<button class="btn" id="btn1">시험 결과 확인</button>
	<button class="btn" id="btn2">실기 문제 등록</button>
	<button class="btn" id="btn2">순서대로 시험보기</button>
	<button class="btn" id="btn2">랜덤으로 시험보기</button>
	<button class="btn" id="btn2">실기 오답노트</button>

</body>

</html>
