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
.imgs {
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
	justify-content: right;
}
.mine {
	border-radius: 30px;
	padding: 5px;
	padding-left: 10px;
	padding-right: 10px;
	margin-top: 25px;
	font-size: 14px;
}
.original {
	width: 200px;
}
.rounded {
	max-width: 100%; 
	max-height: 90%; 
	height: auto;
}
</style>
</head>

<body>
	<div class="big-title">실기 문제 수정</div>
	<form action="${myctx}/practical/updateFinish" name="pvo" id="pvo"
		method="post" enctype="multipart/form-data">
		<input type="hidden" name="qno" value="${qna.qno}" />
		<!-- 문제 입력 -->
		<div class="question-big-box">
			<div class="question-image">
		        <c:if test="${not empty qna.qfile}">
		            <img class="rounded" id="q-preview" src="${myctx}/resources/qna_upload/${qna.qfile}" width="100%">
		        </c:if>
		        <c:if test="${empty qna.qfile}">
		            <img class="rounded" id="q-preview" style="display: none;">
		        </c:if>
		    </div>
		    <div class="question-img-box">
		        <input type="file" name="qfile" id="qfile" class="qfile" onchange="showPreview1(event)">
		    </div>
			<div class="question-input">
				<textarea id="q-input" name="question" required>${qna.question}</textarea>
			</div>

			<div class="answer-image">
				<c:if test="${not empty qna.afile}">
		            <img class="rounded" id="a-preview" src="${myctx}/resources/qna_upload/${qna.afile}" width="100%">
		        </c:if>
		        <c:if test="${empty qna.afile}">
		            <img class="rounded" id="a-preview" style="display: none;">
		        </c:if>
			</div>
			<div class="answer-img-box">
				<input type="file" name="afile" id="afile" class="afile"
					onchange="showPreview2(event)">
			</div>
			<div class="answer-input">
				<textarea id="a-input" name="answer" required>${qna.answer}</textarea>
			</div>
		</div>
		<div class="btn-div">
			<button type="submit" class="btn btn-info">수정하기</button>
		</div>
	</form>
</body>
<script>
function showPreview1(event) {
    var input = event.target;
    var q_preview = document.getElementById('q-preview');

    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function(e) {
            q_preview.src = e.target.result;
            q_preview.style.display = 'block';  // 이미지가 보이도록 설정
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

	
</script>