<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- js파일 참조-------------------------------- -->
<script type="text/javascript" src="./js/userCheck.js"></script>

<style>
.container {
	font-size:13px;
	color: #394867;
}
.title {
	font-size: 20px;
	margin-top:20px;
	margin-bottom:25px;
	display: flex;
	justify-content: center;
}
.m1 {
	width: 40%;
	margin-bottom: 30px;
	font-weight: bold;
}
.m1-1 {
	margin-top: 18px;
}
.m1-2 {
	margin-bottom: 0px;
}
input[type="text"] {
  	border: 1px solid #9BA4B5;
  	border-radius: 4px;
  	border-width: 1px;
  	padding: 3px;
}
.m2 {
	width: 58%;
}
.m2-1{
	width: 30%;
}
.btn {
	width: 26%;
	font-size: 12px;
	padding: 4px;
	background-color: #EEEEEE;
	margin-bottom: 3px;
	margin-left: 1px;
}
.join {
	width: 100%;
	font-size: 15px;
	padding: 7px;
	background-color: #EEEEEE;
	border-width: 0px;
	border-radius: 6px;
}

.join:hover{
	color: #fff;
	text-decoration: none;
}
.ex {
	color: #92A9BD;
	font-size: 8px;
	margin-top: 3px;
	margin-left: 30%;
	margin-bottom: 20px;
}
::placeholder {
  	color: #DDDDDD;
}
</style>

<div class="container">
	<div class="title">
		<b>회원가입</b>
	</div>
	<form name="mf" action="/join" method="POST">

		<hr>
		<div>
			<label for="name" class="m1 m1-1">이름</label> 
			<input type="text" id="name" name="name" class="m2" placeholder=" Name" required>
		</div>
		<div>
			<label for="userid" class="m1">아이디</label>
			<input type="text" id="userid" name="userid" class="m2 m2-1" placeholder=" ID" required>
			<button type="button" onclick="idCheck()" class="btn">중복체크</button>
		</div> 
		<div>
			<label for="pwd" class="m1 m1-2">비밀번호</label>
			<input type="text" id="pwd" name="pwd" class="m2" placeholder=" Password" required>
		</div>
		<div class="ex">*비밀번호는 영문, 숫자, _ , !를 혼합하여 4~20자 이내로 입력하세요.</div>
		
		<div>
			<label for="pwd2" class="m1">비밀번호 확인</label>
			<input type="text" id="pwd2" name="pwd2" class="m2" placeholder=" Password" required>
		</div>
		<div>
			<label for="email" class="m1">이메일</label> 
			<input type="text" id="email" name="email" class="m2" placeholder=" ex) abcd@naver.com" required>
		</div>		
		<hr>
		
		<button type="button" onclick="member_check()" class="join">가입하기</button>

	</form>
</div>

<!-- The Modal -->
<div class="modal fade" id="myModal">
    <div class="modal-dialog modal-dialog-centered">
    	
      	<div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title" id="modalTitle" style="font-size:15px; margin-top:2px;">알림</h4>
          <!-- <button type="button" class="close" data-dismiss="modal">&times;</button> -->
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
           <p id="modalBody"></p>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal" style="color:black;">확인</button>
        </div>
        
      	</div>
      	
    </div>
</div>

