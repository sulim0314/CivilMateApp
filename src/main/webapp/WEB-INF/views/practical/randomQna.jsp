<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
.prev, .check, .next {
	display: inline-block;
	padding: 8px 16px;
	text-decoration: none;
	border-radius: 4px;
	width: 32%;
	height: 40px;
	text-align: center;
	margin-bottom: 10px; /* 버튼 간격 조정을 위한 마진 값 */
	border: none;
	z-index: 1;
	background-color: #85CDFD;
	font-size: 13px;
}

.prev, .next {
	background-color: #B6EAFA;
}

.prev:hover, .check:hover, .next:hover {
	color: #fff;
}
#questionContainer {
	display: block;
	margin: 0 auto;
	max-width: 600px;
	border: 4px solid #B6EAFA;
	border-radius: 10px;
	margin-top: 15px;
	margin-bottom: 15px;
	padding-top: 8px;
	padding-left: 15px;
	padding-right: 15px;
	padding-bottom: 13px;
}
#questionImage {
	width: 95%;
	max-width: 400px;
	margin-top: 5px;
}
.imgDiv, .aImgDiv {
	display: flex;    
    justify-content: center;
    margin-bottom: 10px;
}
#questionDiv {
	margin-top: 10px;
	font-weight: bold;
}
.modal-header {
	font-size: 20px;
}
#answerImg {
	width: 95%;
	max-width: 400px;
}
#myModal {
	margin-top: 50px;
}
#btns {
	max-width: 600px;
	display: block;
	margin: 0 auto;
}
</style>

<body>

	<div id="questionContainer">
	    <div class="imgDiv">
	    	<img id="questionImage" src="" alt="질문 이미지" class="rounded">
	    </div>
	    <div id="questionDiv"></div>
	</div>
	<div id="btns">
		<button class="prev">◀ 이전</button>
		<button class="check" onclick="openModal()">답 확인</button>
		<button class="next">다음 ▶</button>
	</div>
	
	
	<!-- The Modal -->
	<div class="modal fade" id="myModal">
		<div class="modal-dialog modal-dialog-centered">

			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">정답</div>

				<!-- Modal body -->
				<div class="modal-body">
					<div class="aImgDiv">
						<img id="answerImg" src="" alt="답 이미지" class="rounded">
					</div>
					<div id="answer"></div>
				</div>

				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal" style="font-size: 14px;">확인</button>
				</div>

			</div>

		</div>
	</div>

	<script>
	var order = [<c:forEach var="item" items="${order}" varStatus="loop">${item}<c:if test="${!loop.last}">,</c:if></c:forEach>];
    var question = [<c:forEach var="item" items="${qna}" varStatus="loop">"${item.question}"<c:if test="${!loop.last}">,</c:if></c:forEach>];
    var questionImg = [<c:forEach var="item" items="${qna}" varStatus="loop">"${item.qfile}"<c:if test="${!loop.last}">,</c:if></c:forEach>];
    var answer = [<c:forEach var="item" items="${qna}" varStatus="loop">`<c:out value="${item.answer}" escapeXml="false"/>`<c:if test="${!loop.last}">,</c:if></c:forEach>];
	var answerImg = [<c:forEach var="item" items="${qna}" varStatus="loop">"${item.afile}"<c:if test="${!loop.last}">,</c:if></c:forEach>];
    
		var idx = 0; 
		
	    function updateQuestion() {
	        // 문제 텍스트
	        document.getElementById('questionDiv').innerText = "Q . " + question[order[idx]];
	
	        // 문제 이미지
	        img1 = questionImg[order[idx]];
	        var questionImageElement = document.getElementById('questionImage');
	        
	        if(img1 && img1 !== "") {
	        	questionImageElement.src = "${myctx}/resources/qna_upload/" + img1;
	        	questionImageElement.style.display = ''; // 이미지 보이게 함
	        } else {
	        	questionImageElement.style.display = 'none'; // 이미지 숨김
	        }
	        
	        // 답 텍스트
	        document.getElementById('answer').innerText = answer[order[idx]];
	        
	        // 답 이미지
	        img2 = answerImg[order[idx]];
	        var answerImgElement = document.getElementById('answerImg');
	        
	        if(img2 && img2 !== "") {
	            answerImgElement.src = "${myctx}/resources/qna_upload/" + img2;
	            answerImgElement.style.display = ''; // 이미지 보이게 함
	        } else {
	            answerImgElement.style.display = 'none'; // 이미지 숨김
	        }
	    }

		// 이전 버튼
		$(".prev").click(function() {
			if (idx > 0) {
				idx--;
				updateQuestion();
			}
		});

		// 다음 버튼
		$(".next").click(function() {
			idx++;
			if (idx >= order.length) {
				location.reload(); // currentIndex가 배열 길이 이상이면 페이지 리로드
			} else {
				updateQuestion();
			}
		});
		
		function openModal() {
			$('#myModal').modal('show');
		}

		window.onload = function() {
			<% if (request.getAttribute("noQna") != null && (boolean) request.getAttribute("noQna")) { %>
            document.getElementById('questionDiv').innerText = "등록하신 문제가 없습니다.";
            document.querySelector(".prev").disabled = true;
            document.querySelector(".check").disabled = true;
            document.querySelector(".next").disabled = true;
            document.getElementById('questionImage').style.display = 'none'; // 이미지 숨김
	        <% } else { %>
	            updateQuestion();
	        <% } %>
	    }
	
	</script>
</body>

