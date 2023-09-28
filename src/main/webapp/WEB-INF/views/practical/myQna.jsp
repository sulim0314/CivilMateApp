<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
.title {
	text-align: center;
	color: #B0578D;
	font-size: 20px;
	font-weight: bold;
	margin: 40px;
}

.qImg,.aImg {
	width: 95%;
	max-width: 500px;
}

.qna1 {
	border: 3px solid pink;
	border-radius: 10px;
	max-width: 600px;
	display: block;
	margin: 0 auto;
	padding: 10px;
	margin-bottom: 20px;
}

.btns {
	display: flex;
	justify-content: right;
	margin-top: 20px;
}
.update-btn {
	margin-left: 5px;
}
.for-center {
	display: flex;
	justify-content: center;
	margin-top: 10px;
	margin-bottom: 10px;
}
.q1, .a1 {
	margin: 10px;
	font-weight: bold;
	font-size: 20px;
	font-style: italic;
	color: #3D0C11;
}
.q2 {
	white-space: pre-line;
	padding-left: 10px;
	padding-right: 10px;
}

.a2 {
    white-space: pre-line;
    padding-left: 10px;
	padding-right: 10px;
}
.info {
	font-size: 12px;
	color: gray;
	font-weight: bold;
	text-align: center;
	margin-bottom: 20px;
}
</style>
</head>

<body>
	<div class="myQuestions">
		<div class="title">내가 만든 문제 🍀 </div>
		<c:if test="${noQna}">
		    <div class="info">등록하신 실기 문제가 없습니다.</div>
		</c:if>
		<c:forEach var="qnaItem" items="${qna}">
			<div class="qna1">
				<div class="q1">Question.</div>
				<div class="q2">${qnaItem.question}</div>
				<c:if test="${not empty qnaItem.qfile}">
					<div class="for-center"><img src="${myctx}/resources/qna_upload/${qnaItem.qfile}"
						alt="질문 이미지" class="qImg rounded"></div>
				</c:if>
				<hr>
				<div class="a1">Answer.</div>
				<div class="a2">${qnaItem.answer}</div>
				<c:if test="${not empty qnaItem.afile}">
					<div class="for-center"><img src="${myctx}/resources/qna_upload/${qnaItem.afile}"
						alt="정답 이미지" class="aImg rounded"></div>
				</c:if>
				<div class="btns">
					<button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#myModal${qnaItem.qno}">삭제</button>
					<button type="submit" class="btn btn-info update-btn" data-qno="${qnaItem.qno}">수정</button>
				</div>
			</div>
			<div class="container">
				<!-- 삭제 모달 ---------------------------------------------->
				<div class="modal fade" id="myModal${qnaItem.qno}">
					<div class="modal-dialog modal-dialog-centered">
						<div class="modal-content">
							<div class="modal-header">
								<div>❗</div>
							</div>
							<div class="modal-body">문제를 삭제하시겠습니까?</div>
							<div class="modal-footer">
								<form action="${myctx}/practical/deleteMyQna" name="delete_qna" id="delete_qna" method="post">
									<input type="hidden" name="qno" value="${qnaItem.qno}">
									<button type="submit" class="btn btn-danger" onclick="deleteCon()">삭제</button>
								</form>
								<button type="button" class="btn btn-success" data-dismiss="modal">취소</button>
							</div>
						</div>
					</div>
				</div>
				<!--  삭제 모달 끝 ---------------------------------------------->
			</div>
		</c:forEach>
	</div>
</body>
<script>
$('.update-btn').on('click', function() {
    var qno = $(this).data('qno');  
    window.location.href = '${myctx}/practical/qnaUpdate?qno=' + qno;
});

</script>