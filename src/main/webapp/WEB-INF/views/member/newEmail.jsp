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

.row1 {
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
			<div>이메일 변경</div>
		</div>

		<form name="ef" id="ef" action="/updateEmail" method="POST">
			<input type="hidden" name="userid" value="${loginUser.userid}"/>

			<div class="row row3">
				<input type="text" id="email" name="email"
					placeholder=" 새 이메일" required>
			</div>

			<div class="row row4">
				<input type="text" id="email2" name="email2"
					placeholder=" 새 이메일 확인" required>
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

	function isEmail(input){
		let val = input.value;
		let pattern = /^[\w-]+(\.[\w]+)*@([a-zA-Z]+\.)+[a-z]{2,3}$/;
		let b = pattern.test(val);
		return b;
	}

	function member_check() {
		
		event.preventDefault(); // 폼 제출 막기
		
		if(!isEmail(ef.email)){
			openModal();
			modalBodyElement.innerHTML = "이메일을 형식에 맞게 입력해주세요.";
			ef.email.select();
			return;
		}

		//이메일 일치 여부 체크
		if (ef.email.value != ef.email2.value) {
			openModal();
			modalBodyElement.innerHTML = "새 이메일 확인값을 확인해주세요.";
			ef.email2.select();
			return;
		}
		
		ef.submit();

	}
</script>