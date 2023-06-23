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
	margin-top: 30px;
	margin-bottom: 30px;
}
.row {
	border: 4px solid pink;
}
.col{
	border: 4px solid blue;	
}
</style>

<body>

	<div class="title">My Page</div>
	<div>${loginUser.name} 님 정보</div>

	<div class="container">

		<div class="row">
			<div class="col">아이디</div>
			<div class="col">${loginUser.userid}</div>
		</div>

		<div class="row">
			<div class="col">비밀번호 변경</div>
			<div class="col">col 2</div>
		</div>

		<div class="row">
			<div class="col">이메일</div>
			<div class="col">${loginUser.email}</div>
		</div>

	</div>

	<form name='f' method='post' action='delete'>
		<input type="hidden" name="idx" value="${loginUser.idx}">
		<button class="btn btn-success">탈퇴하기</button>
	</form>

</body>





