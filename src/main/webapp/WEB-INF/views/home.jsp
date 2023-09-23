<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
.mainImage {
	margin-top: 50px;
	margin-bottom: 60px;
}

.box {
	width: 240px;
	margin-left: auto;
	margin-right: auto;
}

.row {
	margin-bottom: 35px;
}

.btn {
	width: 100px;
	height: 100px;
	display: flex;
	justify-content: center;
	align-items: center;
	font-size: 13px;
	font-weight: bold;
	border-radius: 30px;
	box-shadow: 0 0 10px #FFF9C9;
}

#btn1 {
	background-color: #FBEEAC;
}

#btn2 {
	background-color: #FFD6A5;
}

.btn:hover {
	color: white;
	box-shadow: 0 0 15px #D6E4E5;
}
</style>

<body>
	<h1 class="mainImage" style="text-align: center"><img src="images/병아리.png" width="80px;"></h1>

	<div class="box">
		<div class="row row1">
			<div class="col co1 text-right">
				<a href="${myctx}/writing/prev_test" class="btn" id="btn1">필기<br>기출문제
				</a>
			</div>
			<div class="col col2">
				<a href="${myctx}/writing/wrongAnswer" class="btn" id="btn1">필기<br>시험 결과
				</a>
			</div>
		</div>


		<div class="row row2">
			<div class="col col1">
				<a href="${myctx}/practical/qnaRegister" class="btn" id="btn2">실기<br>문제
					등록
				</a>
			</div>
			<div class="col col2">
				<a href="${myctx}/practical/randomQna" class="btn" id="btn2">실기<br>시험보기
				</a>
			</div>
		</div>
	</div>
</body>
