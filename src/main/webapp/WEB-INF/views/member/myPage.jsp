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
	display: block;
	margin: 0 auto;
	width: 100%;
	max-width: 600px;
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
		<div class="who">${loginUser.name}님의 정보 🔑</div>

		<hr>
		<div class="row1">
			ID&nbsp;&nbsp;:&nbsp;&nbsp;${loginUser.userid}
			<button id="newPwd" class="btn btn-secondary">비밀번호 변경</button>
		</div>
		<hr>
		<div class="row2">
			E-mail&nbsp;&nbsp;:&nbsp;&nbsp;${loginUser.email}
			<button id="newEmail" class="btn btn-secondary">변경</button>
		</div>
		<hr>

	</div>

	<div class="container">
		<!-- 탈퇴 모달 -->

		<div class="btns">
			<button type="button" class="btn btn-info" data-toggle="modal"
				data-target="#myModal" style="width: 90px;">탈퇴하기</button>
		</div>
		<div class="modal fade" id="myModal">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title">알림</h4>
					</div>
					<div class="modal-body">정말 탈퇴하시겠습니까?</div>
					<div class="modal-footer">
						<form action="${myctx}/deleteMember" name="delete_mb" id="delete_mb" method="post">
							<input type="hidden" name="idx" value="${loginUser.idx}">
							<button type="submit" class="btn btn-danger"
								onclick="deleteConfirmation()">탈퇴</button>
						</form>
						<button type="button" class="btn btn-success" data-dismiss="modal">취소</button>
					</div>

				</div>
			</div>
		</div>
		<!--  삭제 모달 끝 -->
	</div>


</body>

<script>
	$("#newPwd").click(function() {
		window.location.href = "/newPwd";
	});

	$("#newEmail").click(function() {
		window.location.href = "/newEmail";
	});

</script>



