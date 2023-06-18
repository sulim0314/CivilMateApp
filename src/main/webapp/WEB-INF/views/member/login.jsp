<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
.container {
	font-size: 13px;
	color: #394867;
}

.title {
	font-size: 20px;
	margin-top: 50px;
	margin-bottom: 60px;
	display: flex;
	justify-content: center;
}

.input-group-text {
  	width: 60px;
	display: flex;
	justify-content: center;
	align-items: center;
	font-weight: bold;
	background-color: #CCF2F4;
	font-style: italic;
	color: #748DA6;
}

.login {
	width: 100%;
	color: #748DA6;
	font-style: italic;
	font-size: 18px;
	font-weight: 500;
	padding: 6px;
	background-color: #CCF2F4;
	border-width: 0px;
	border-radius: 6px;
	margin-top: 20px;
	margin-bottom: 20px;
}

.last {
	display: flex;
	justify-content: center;
}
a:hover {
  text-decoration: none;
}
</style>

<div class="container">
	<div class="title">
		<b>★★★</b>
	</div>
	<form action="/join" method="POST">

		<div class="input-group mb-3">
			<div class="input-group-prepend">
				<span class="input-group-text">ID</span>
			</div>
			<input type="text" class="form-control" required>
		</div>
		
		<div class="input-group mb-3">
			<div class="input-group-prepend">
				<span class="input-group-text">PW</span>
			</div>
			<input type="text" class="form-control" required>
		</div>

		<button type="button" onclick="#" class="login">Login</button>
		<div>아이디 저장.. 자동로그인?</div>
		
		<div class="last">
			<a href="#">회원가입&nbsp;&nbsp;</a>|
			<a href="#">&nbsp;&nbsp;아이디 찾기&nbsp;&nbsp;</a>|
			<a href="#">&nbsp;&nbsp;비밀번호 찾기</a>		
		</div>

	</form>
</div>



