<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
.box {
	margin-top: 20px;
	margin-bottom: 40px;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
}
.top {
	font-size: 18px;
	font-weight: bold;
	color: #445069;
	margin-bottom: 20px;
}
.info {
	font-size: 14px;
	font-weight: bold;
	color: #445069;
	margin-top: 50px;
	margin-left: 10px;
	margin-right: 10px;
	margin-bottom: 20px;
}
#email {
	width: 260px;
	height: 45px;
	font-size: 15px;
	padding-left: 15px;
	border: 3px solid #F0B86E;
	border-radius: 15px;
}
.search {
	width: 100px;
	height: 40px;
	font-size: 15px;
	color: white;
	background-color: #F0B86E;
	border-radius: 18px;
	border : none;
	margin-bottom: 40px;
}
.search:hover {
	box-shadow: 0 0 10px #F0B86E;
}
#result {
	font-size: 16px;
	font-weight: bold;
	color: #6C3428;
	margin-left: 10px;
	margin-right: 10px;
}

</style>

<body>

	<div class="box">
		<div class="top">비밀번호 찾기 ✔ </div>
		<div class="title">
			<img src="images/병아리.png" width="60px;">
		</div>
		<div class="info">* 가입할 때 입력하신 이메일 정보를 입력해주세요.</div>
			<form name="emailForm" id="emailForm" method="post">
				<div class="form-group">
					<input type="text" id="email" name="email" placeholder=" email" required>
				</div>
			</form>
		<button class="search" onclick="checkEmailFindPw()">확인</button>
		
		<!-- 아이디 표시 영역 -->
    	<div id="result"></div>
	</div>
	
</body>

<script>
function checkEmailFindPw() {
    const email = $("#email").val();

    $.ajax({
        url: "checkEmailFindPw",
        type: "POST",
        contentType: 'application/json',
        dataType:'json',
        data: JSON.stringify({ email: email }),
        cache:false,
        success: function(response) {
            if (response.emailExist) {
                $("#result").show().text("📌 입력하신 주소로 이메일이 전송되었습니다.");
            } else {
                $("#result").show().text("일치하는 이메일 정보가 없습니다.");
            }
        },
        error: function(xhr, status, error) {
            console.error("서버와의 통신 오류 발생");
        }
    });
}
</script>


