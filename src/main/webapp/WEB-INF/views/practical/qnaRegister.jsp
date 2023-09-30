<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
.big-title {
	text-align: center;
	margin-top: 20px;
	margin-bottom: 10px;
	font-weight: bold;
	font-size: 20px;
	color: #19A7CE;
	text-align: center;
}

.btn-info {
	border-radius: 30px;
	padding: 5px;
	width: 80px;
	margin-top: 20px;
	font-size: 14px;
}

.question-big-box {
	display: block;
	margin: 0 auto;
	border: 3px solid #8ECDDD;
	border-radius: 5px;
	width: 100%;
	max-width: 500px;
	padding: 20px;
}

.btn-div {
	display: flex;
	justify-content: center;
}

.info {
	font-size: 12px;
	color: gray;
	font-weight: bold;
	text-align: center;
	margin-bottom: 20px;
}

textarea {
	width: 100%;
	padding: 10px;
}

#a-input {
	height: 100px;
}

.question-input {
	margin-bottom: 20px;
}
.question-image,.answer-image {
	display: flex;
	justify-content: center;
	margin-bottom: 10px;
}
.rounded {
	display: none; 
	max-width: 100%; 
	max-height: 90%; 
	height: auto;
}
.question-img-box,.answer-img-box {
	width: 200px;
	margin-bottom: 10px;
}
.mine-div {
	display: flex;
	justify-content: center;
}
.mine {
	margin-right: 10px;
}
.mine,.go {
	width: 120px;
	border-radius: 10px;
	border: none;
	background-color: #F78CA2;
	padding: 8px;
	padding-left: 13px;
	padding-right: 13px;
	margin-top: 25px;
	font-size: 14px;
	color: white;
	margin-bottom: 20px;
}
.mine:hover , .go:hover{
	background-color: pink;
}
</style>
</head>

<body>
	<div class="big-title">실기 문제 등록 🎨</div>
	<div class="info">
		나만의 실기 문제를 만들어보세요 :)<br>
		실기 시험보기 페이지에서<br>
		랜덤으로 문제를 풀어볼 수 있습니다.
	</div>
	<form action="${myctx}/practical/insertQna" name="pvo" id="pvo"
		method="post" enctype="multipart/form-data">
		<!-- 문제 입력 -->
		<div class="question-big-box">
			<div class="question-image">
				<img class="rounded" id="q-preview" alt="Uploaded Question Image">
			</div>
			<div class="question-img-box">
				<input type="file" name="qfile" id="qfile" class="qfile"
					onchange="showPreview1(event)">
			</div>
			<div class="question-input">
				<textarea id="q-input" name="question" placeholder="문제를 입력해주세요"
					required></textarea>
			</div>

			<div class="answer-image">
				<img class="rounded" id="a-preview" alt="Uploaded Answer Image">
			</div>
			<div class="answer-img-box">
				<input type="file" name="afile" id="afile" class="afile"
					onchange="showPreview2(event)">
			</div>
			<div class="answer-input">
				<textarea id="a-input" name="answer" placeholder="정답을 입력해주세요"
					required></textarea>
			</div>
			<div class="btn-div">
				<button type="submit" class="btn btn-info">등록</button>
			</div>
		</div>
	</form>
	<div class="mine-div">
		<button class="mine">문제보기</button>
		<button class="go">시험보기</button>
	</div>

</body>
<script>
	function showPreview1(event) {
		var input = event.target;
		var q_preview = document.getElementById('q-preview');

		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function(e) {
				q_preview.src = e.target.result;
				q_preview.style.display = 'block';
			};
			reader.readAsDataURL(input.files[0]);
		}
	}

	function showPreview2(event) {
		var input = event.target;
		var a_preview = document.getElementById('a-preview');

		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function(e) { 
				a_preview.src = e.target.result;
				a_preview.style.display = 'block';
			};
			reader.readAsDataURL(input.files[0]);
		}
	}


	$('.mine').on('click', function() {
		window.location.href = '${myctx}/practical/myQna';
	});
	$('.go').on('click', function() {
		window.location.href = '${myctx}/practical/randomQna';
	});
	
</script>