<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
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
	margin-bottom: 15px;
}

.box {
	width: 250px;
	height: auto;
	border: 3px solid #FCBAAD;
	border-radius: 20px;
	display: flex; /* 글씨가 가운데 위치하는 것들 2줄 */
	justify-content: center;
	margin: 0 auto; /* div가 가운데 위치하게 */
	margin-top: 30px;
	padding-top: 10px;
	padding-bottom: 10px;
	font-size: 14px;
	font-weight: bold;
}

.date {
	font-size: 11px;
	font-weight: bold;
	color: #9E9FA5;
}
.jumsu {
	padding-top: 2px;
	padding-bottom: 2px;
}
.total {
	padding-top: 10px;
	color: #0A6EBD;
}
.test-title {
	font-size: 12px;
	padding-top: 7px;
	padding-bottom: 7px;
	color: #61677A;
	text-align: center;
}
	
</style>
</head>

<body>
	<div class="title">필기 시험 결과</div>
	<div class="explain1">저장한 문제를 확인하실 수 있습니다.</div>

	<c:forEach items="${savedWrongList}" var="savedWrong">
	
		<c:choose>
	        <c:when test="${savedWrong.type == '1'}">
	            <div class="box">
					<div class="container">
						<div class="row">
							<div class="col date"> ${savedWrong.wdate}</div>
						</div>
						<div class="row">
						  <div class="col test-title">${savedWrong.testTitle}</div>
						</div>
						<div class="row">
							<div class="col jumsu">응용역학 ▶  ${savedWrong.test1}점</div>
						</div>
					</div>
				</div>
	        </c:when>
	        <c:when test="${savedWrong.type == '2'}">
	            <div class="box">
					<div class="container">
						<div class="row">
							<div class="col date"> ${savedWrong.wdate}</div>
						</div>
						<div class="row">
						  <div class="col test-title">${savedWrong.testTitle}</div>
						</div>
						<div class="row">
							<div class="col jumsu">측량학 ▶ ${savedWrong.test2}점</div>
						</div>
					</div>
				</div>
	        </c:when>
	        <c:when test="${savedWrong.type == '3'}">
	            <div class="box">
					<div class="container">
						<div class="row">
							<div class="col date"> ${savedWrong.wdate}</div>
						</div>
						<div class="row">
						  <div class="col test-title">${savedWrong.testTitle}</div>
						</div>
						<div class="row">
							<div class="col jumsu">수리학 및 수문학 ▶ ${savedWrong.test3}점</div>
						</div>
					</div>
				</div>
	        </c:when>
	        <c:when test="${savedWrong.type == '4'}">
	            <div class="box">
					<div class="container">
						<div class="row">
							<div class="col date"> ${savedWrong.wdate}</div>
						</div>
						<div class="row">
						  <div class="col test-title">${savedWrong.testTitle}</div>
						</div>
						<div class="row">
							<div class="col jumsu">철근콘크리트 및 강구조 ▶ ${savedWrong.test4}점</div>
						</div>
					</div>
				</div>
	        </c:when>
	        <c:when test="${savedWrong.type == '5'}">
	            <div class="box">
					<div class="container">
						<div class="row">
							<div class="col date"> ${savedWrong.wdate}</div>
						</div>
						<div class="row">
						  <div class="col test-title">${savedWrong.testTitle}</div>
						</div>
						<div class="row">
							<div class="col jumsu">토질 및 기초 ▶ ${savedWrong.test5}점</div>
						</div>
					</div>
				</div>
	        </c:when>
	        <c:when test="${savedWrong.type == '6'}">
	            <div class="box">
					<div class="container">
						<div class="row">
							<div class="col date"> ${savedWrong.wdate}</div>
						</div>
						<div class="row">
						  <div class="col test-title">${savedWrong.testTitle}</div>
						</div>
						<div class="row">
							<div class="col jumsu">상하수도공학 ▶  ${savedWrong.test6}점</div>
						</div>
					</div>
				</div>
	        </c:when>
	        <c:when test="${savedWrong.type == '7'}">
		        <div class="box">
					<div class="container">
						<div class="row">
							<div class="col date"> ${savedWrong.wdate}</div>
						</div>
						<div class="row">
						  <div class="col test-title">${savedWrong.testTitle}</div>
						</div>
						<div class="row">
							<div class="col jumsu">응용역학 ▶  ${savedWrong.test1}점</div>
						</div>
						<div class="row">
							<div class="col jumsu">측량학 ▶ ${savedWrong.test2}점</div>
						</div>
						<div class="row">
							<div class="col jumsu">수리학 및 수문학 ▶ ${savedWrong.test3}점</div>
						</div>
						<div class="row">
							<div class="col jumsu">철근콘크리트 및 강구조 ▶ ${savedWrong.test4}점</div>
						</div>
						<div class="row">
							<div class="col jumsu">토질 및 기초 ▶ ${savedWrong.test5}점</div>
						</div>
						<div class="row">
							<div class="col jumsu">상하수도공학 ▶  ${savedWrong.test6}점</div>
						</div>
						<!-- 전체시험 봤을 때 -->
						<div class="row">
							<div class="col jumsu total">평균 : ${savedWrong.mean}점</div>
						</div>
					</div>
				</div>      
	        </c:when>
	    </c:choose>
    </c:forEach>

	<!-- 응용역학, 측량학, 수리학 및 수문학, 철근콘크리트 및 강구조, 토질 및 기초, 상하수도공학 -->

</body>
