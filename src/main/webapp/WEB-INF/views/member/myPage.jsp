<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<style>

.title {
	width: 100%;
	font-size: 25px;
	font-weight: bold;
	text-align: center;
	color: #385170;
	font-style: italic;
	margin-bottom: 50px;
}

.who {
	margin-left: 10px;
	font-size: 14px;
	color: #385170;
	font-weight: bold;
}

.row1, .row2 {
	font-size: 14px;
	display: flex;
	align-items: center;
}

.row1 button, .row2 button {
	margin-left: auto;
}

.btn {
	font-size: 13px;
}

.btn-secondary {
	margin-left: 10px;
	background-color: #9BA4B5;
	border: none;
}

.btns {
	margin-top: 40px;
	display: flex;
	justify-content: center;
	display: flex;
}

.big-box {
	margin-top: 30px;
	padding-top: 30px;
	padding-left: 10px;
	padding-right: 10px;
	border: 4px solid #C2DEDC;
	border-radius: 20px;
}
</style>

<body>

	<div class="big-box">
		<div class="title">My Page</div>
		<div class="who">${loginUser.name}님의 정보</div>

		<hr>
		<div class="row1">
			ID&nbsp;&nbsp;:&nbsp;&nbsp;${loginUser.userid}
			<button class="btn btn-secondary">비밀번호 변경</button>
		</div>
		<hr>
		<div class="row2">
			E-mail&nbsp;&nbsp;:&nbsp;&nbsp;${loginUser.email}
			<button class="btn btn-secondary">변경</button>
		</div>
		<hr>

	</div>

	<div class="btns">
		<form name="f" action="deleteMember" method="POST">
			<input type="hidden" name="idx" value="${loginUser.idx}">
			<!-- 안보이게 -->
			<button class="btn btn-dark">탈퇴하기</button>
		</form>
	</div>

</body>





