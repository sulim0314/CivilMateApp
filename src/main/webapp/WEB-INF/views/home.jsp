<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>

<style>
.mainImage {
	margin-top: 50px;
	margin-bottom: 60px;
}

.btn {
	display: inline-block;
	padding: 8px 16px;
	text-decoration: none;
	border-radius: 4px;
	width: 100%;
	height: 40px;
	text-align: center;
	margin-bottom: 20px; /* 버튼 간격 조정을 위한 마진 값 */
	border: none;
	z-index: 1;
}

.btn:hover {
	color: #fff;
}

#btn1 {
	background-color: #B6EAFA;
}

#btn2 {
	background-color: #B8E7E1;
}

.s-title {
	font-weight: bold;
	text-align: center;
	color: gray;
	font-size: 13px;
}

.box1 {
	border: 4px solid #B6EAFA;
	border-radius: 10px;
	margin-bottom: 15px;
	
	padding-top: 15px;
	padding-left: 10px;
	padding-right: 10px;
}
.box2 {
	border: 4px solid #B8E7E1;
	border-radius: 10px;
	margin-bottom: 15px;
	
	padding-top: 15px;
	padding-left: 10px;
	padding-right: 10px;
}
</style>
</head>

<body>
	<h1 class="mainImage" style="text-align: center">★★★</h1>

	<div class="box1">
		<a href="${myctx}/prev_test" class="btn" id="btn1">필기 기출문제</a>
		<%-- <a href="${myctx}/mockTest" class="btn" id="btn1">필기 모의고사</a> --%>
		<%-- <a href="${myctx}/wrongAnswer" class="btn" id="btn1">필기 오답노트</a> --%>
		<button class="btn" id="btn1" style="margin-bottom: 15px">시험 결과 확인</button>
	</div>
	
	<div class="box2">
	<button class="btn" id="btn2">실기 문제 등록</button>
	<button class="btn" id="btn2">실기 시험보기</button>
	<!-- <button class="btn" id="btn2">랜덤으로 시험보기</button> -->
	<!-- <button class="btn" id="btn2">실기 오답노트</button> -->
	</div>
</body>

</html>
