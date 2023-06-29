<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
.box {
	border: 4px solid #B6EAFA;
	border-radius: 20px;
	margin-top: 40px;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	height: auto;
}

.row {
	height: 50px;
	display: flex;
	align-items: center;
	justify-content: center;
	margin-bottom: 5px;
}

.row1 { /*비밀번호 변경*/
	height: 120px;
	font-size: 20px;
	font-weight: bold;
	color: #385170;
}

.btns {
	width: 230px;
	height: 40px;
	background-color: #B6EAFA;
	border: 1px solid #B6EAFA;
	border-radius: 6px;
}

.btn2 {
	background-color: white;
	margin-bottom: 10px;
}

input {
	height: 40px;
	width: 230px;
	padding-left: 10px;
	font-size: 13px;
	border: 1px solid #B6EAFA;
	border-radius: 6px;
}

.btns:hover {
	color: #385170;
	border: 3px solid #EEEEEE;
}
</style>

<body>
	<div class="container box">
		<div class="row row1">
			<div>비밀번호 변경</div>
		</div>

		<form name="pf" id="pf" action="/updatePwd" method="POST">
			<input type="hidden" name="userid" value="${loginUser.userid}"/>
			
			<div class="row row2">
				<input type="password" id="pwd" name="pwd" placeholder=" 현재 비밀번호"
					required>
			</div>

			<div class="row row3">
				<input type="password" id="newPwd" name="newPwd"
					placeholder=" 새 비밀번호" required>
			</div>

			<div class="row row4">
				<input type="password" id="newPwd2" name="newPwd2"
					placeholder=" 새 비밀번호 확인" required>
			</div>

			<div class="row row5" style="margin-top: 20px;">
				<div>
					<button type="submit" class="btns btn1" onclick="member_check()">확인</button>
				</div>
			</div>
		</form>

		<div class="row row6" style="margin-bottom: 20px;">
			<div>
				<button class="btns btn2" id="cancelBtn">취소</button>
			</div>
		</div>
	</div>


	<!-- The Modal -->
	<div class="modal fade" id="myModal">
		<div class="modal-dialog modal-dialog-centered">

			<div class="modal-content">

				<div class="modal-header">
					<h4 class="modal-title" id="modalTitle"
						style="font-size: 15px; margin-top: 2px;">알림</h4>
				</div>

				<div class="modal-body">
					<p id="modalBody" style="font-size: 14px;"></p>
				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-info"
						data-dismiss="modal" style="color: white; font-size: 14px;" >확인</button>
				</div>

			</div>

		</div>
	</div>


</body>

<script>
	var modalBodyElement = document.getElementById("modalBody");

	function openModal() {
		modalBodyElement.innerHTML = "";
		$('#myModal').modal('show');
	}

	function showModal(message) {
		modalBodyElement.innerHTML = message;
		$('#myModal').modal('show');
	}

	var checkMessage = "";

	//취소버튼
	$(document).ready(function() {
		$("#cancelBtn").click(function() {
			window.history.back();
		});
	});

	//비밀번호는 문자,숫자,!,_포함해서 4~20자 이내
	function isPasswd(input) {
		let val = input.value;
		let pattern = /^[\w!]{4,20}$/;
		let b = pattern.test(val); //test()함수: 정규식 패턴에 매개변수 문자열이 맞으면 true를 반환하고, 틀리면 false반환
		return b;
	}

	function member_check() {
		
		event.preventDefault(); // 폼 제출 막기
		
		if (!isPasswd(pf.newPwd)) {
			openModal();
			modalBodyElement.innerHTML = "새 비밀번호는 영문,숫자,_,!를 혼합하여 4자 이상 20자 이내로 입력해주세요.";
			pf.newPwd.select();
			return;
		}
		//비번,비번확인 값 일치 여부 체크
		if (pf.newPwd.value != pf.newPwd2.value) {
			openModal();
			modalBodyElement.innerHTML = "비밀번호와 비밀번호 확인값을 확인해주세요.";
			pf.newPwd2.select();
			return;
		}

		pf.submit();//서버로 전송 => 서버에서 현재 비밀번호와 맞는지 확인 & update

	}
</script>