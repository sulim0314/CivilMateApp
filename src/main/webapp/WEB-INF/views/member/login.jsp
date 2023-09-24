<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
.container {
	font-size: 13px;
	color: #394867;
	max-width: 500px;
}

.title {
	font-size: 20px;
	margin-top: 30px;
	margin-bottom: 40px;
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
	margin-top: 8px;
	margin-bottom: 20px;
}

.login:hover{
	background-color: #C1EFFF;
	color: white;
}
.last {
	display: flex;
	justify-content: center;
}
a:hover {
	text-decoration: none;
}
</style>

	<%-- request.getCookies() --%>
	<c:forEach var="ck" items="${pageContext.request.cookies}">
		<%-- ${ck.name}=> ${ck.value } --%>
		<c:if test="${ck.name eq 'userid'}">
			<c:set var="userid" value="${ck.value}"/>
		</c:if>		
	</c:forEach>


<div class="container">
	<div class="title">
		<img src="images/병아리.png" width="60px;">
	</div>
		<form name="loginF" action="login" method="post" onsubmit="return login_check()">
		<!--  onsubmit가 true면 전송, false면 전송 X -->

		<div class="input-group mb-3">
			<div class="input-group-prepend">
				<span class="input-group-text">ID</span>
			</div>
			<input type="text" name="userid" class="form-control" value="${userid}" id="userid" required>
		</div>
		
		<div class="input-group mb-3">
			<div class="input-group-prepend">
				<span class="input-group-text">PW</span>
			</div>
			<input type="password" name="pwd" id="pwd" class="form-control" required>
		</div>
		
		<div>
			<label for="saveId">
				<input type="checkbox" name="saveId"
					<c:if test="${userid ne null and not empty userid}">checked</c:if>	
													id="saveId"> 아이디 저장
			</label>
		</div>
		
		<button class="login">Login</button>
		
		<div class="last">
			<a href="${myctx}/join">회원가입&nbsp;&nbsp;</a>|
			<a href="${myctx}/findId">&nbsp;&nbsp;아이디 찾기&nbsp;&nbsp;</a>|
			<a href="${myctx}/findPw">&nbsp;&nbsp;비밀번호 찾기</a>		
		</div>

	</form>
</div>


<script>
const login_check=function(){
	if(!loginF.userid.value){
		alert('아이디를 입력하세요');
		loginF.userid.focus();
		return false;
	}
	if(!loginF.pwd.value){
		alert('비밀번호를 입력하세요');
		loginF.pwd.focus();
		return false;
	}
	return true;
}
</script>
