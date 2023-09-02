<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
/*시험 결과*/
.result-title {
	width: 100%;
	text-align: center;
	margin-top: 20px;
	margin-bottom: 30px;
	font-size: 30px;
	font-weight: bold;
}
/*[몇년도 몇회]*/
.result-cha-title {
	width: 100%;
	text-align: center;
	margin-bottom: 25px;
	font-weight: bold;
	color: #89d8d3;
}

.score {
	width: 100%;
	margin: 0 auto;
	margin-bottom: 10px;
	text-align: center;
}

.score table {
	border-collapse: collapse;
	width: 100%;
	table-layout: fixed;
}

.score th, .score td {
	border: 4px solid #B6EAFA;
	padding: 8px;
	width: 33.33%;
}

.col-title1 {
	font-size: 12px;
	font-weight: bold;
	/* background-color: #B6EAFA; */
	background-color: #E6FFFD;
}

/*평균*/
.mean {
	width: 100%;
	text-align: center;
}
/*합격 불합격*/
.result {
	width: 100%;
	text-align: center;
	font-weight: bold;
	font-size: 30px;
	color: #F79327;
}

.mean {
	text-align: center;
	margin-bottom: 15px;
}

.mean2 {
	font-size: 30px;
	font-weight: bold;
}
.btn-confirm {
	color: black;
	display: inline-block;
	padding: 8px 16px;
	border: none;
	background-color: #B6EAFA;
	border-radius: 4px;
	width: 49%;
	height: 1cm;
	text-align: center;
	margin-top: 25px;
	margin-bottom: 13px;
	font-weight: bold;
	text-decoration: none;
	font-size: 14px;
}

.btn-confirm:hover {
	color: #fff;
	text-decoration: none;
}

.ex {
	color: gray;
	font-size: 10px;
}
</style>

<%  String testCha = request.getParameter("title");
	String testTitle = "";

    if (testCha.equals("y2022c2")) {
    	testTitle = "[2022년도 2회 토목기사 필기]";
    } else if (testCha.equals("y2022c1")) {  
     	testTitle = "[2022년도 1회 토목기사 필기]";
    } else if (testCha.equals("y2021c3")) {  
     	testTitle = "[2021년도 3회 토목기사 필기]";
    } else if (testCha.equals("y2021c2")) { 
        testTitle = "[2021년도 2회 토목기사 필기]";
    } else if (testCha.equals("y2021c1")) {  
     	testTitle = "[2021년도 1회 토목기사 필기]";
	} else if (testCha.equals("y2020c4")) {  
     	testTitle = "[2020년도 4회 토목기사 필기]";
	} else if (testCha.equals("y2020c3")) {  
     	testTitle = "[2020년도 3회 토목기사 필기]";
	} else if (testCha.equals("y2020c12")) {  
     	testTitle = "[2020년도 12회 토목기사 필기]";
	} else if (testCha.equals("y2019c3")) {  
     	testTitle = "[2019년도 3회 토목기사 필기]";
	} else if (testCha.equals("y2019c2")) {   
    	testTitle = "[2019년도 2회 토목기사 필기]";
	} else if (testCha.equals("y2019c1")) {  
     	testTitle = "[2019년도 1회 토목기사 필기]";
	} else if (testCha.equals("y2018c3")) {  
    	testTitle = "[2018년도 3회 토목기사 필기]";
	} else if (testCha.equals("y2018c2")) {  
        testTitle = "[2018년도 2회 토목기사 필기]";
	} else if (testCha.equals("y2018c1")) {  
     	testTitle = "[2018년도 1회 토목기사 필기]";
	} else if (testCha.equals("y2017c4")) {  
     	testTitle = "[2017년도 4회 토목기사 필기]";
	} else if (testCha.equals("y2017c2")) {  
     	testTitle = "[2017년도 2회 토목기사 필기]";
	} else if (testCha.equals("y2017c1")) {  
     	testTitle = "[2017년도 1회 토목기사 필기]";
	} else if (testCha.equals("y2016c4")) {  
     	testTitle = "[2016년도 4회 토목기사 필기]";
	} else if (testCha.equals("y2016c2")) {  
     	testTitle = "[2016년도 2회 토목기사 필기]";
	} else if (testCha.equals("y2016c1")) {   
     	testTitle = "[2016년도 1회 토목기사 필기]";
	} else if (testCha.equals("y2015c4")) {  
     	testTitle = "[2015년도 4회 토목기사 필기]";
	} else if (testCha.equals("y2015c2")) {  
     	testTitle = "[2015년도 2회 토목기사 필기]";
	} else if (testCha.equals("y2015c1")) {  
     	testTitle = "[2015년도 1회 토목기사 필기]";
	} else if (testCha.equals("y2014c4")) {  
     	testTitle = "[2014년도 4회 토목기사 필기]";
	} else if (testCha.equals("y2014c2")) {  
     	testTitle = "[2014년도 2회 토목기사 필기]";
	} else if (testCha.equals("y2014c1")) {  
     	testTitle = "[2014년도 1회 토목기사 필기]";
	} else if (testCha.equals("y2013c4")) {  
     	testTitle = "[2013년도 4회 토목기사 필기]";
	} else if (testCha.equals("y2013c2")) { 
     	testTitle = "[2013년도 2회 토목기사 필기]";
	} else if (testCha.equals("y2013c1")) {  
     	testTitle = "[2013년도 1회 토목기사 필기]";
	} else if (testCha.equals("y2012c4")) { 
     	testTitle = "[2012년도 4회 토목기사 필기]";
	} else if (testCha.equals("y2012c2")) { 
     	testTitle = "[2012년도 2회 토목기사 필기]";
	} else if (testCha.equals("y2012c1")) {  
        testTitle = "[2012년도 1회 토목기사 필기]";
	} else if (testCha.equals("y2011c4")) { 
     	testTitle = "[2011년도 4회 토목기사 필기]";
	} else if (testCha.equals("y2011c2")) {  
     	testTitle = "[2011년도 2회 토목기사 필기]";
	} else if (testCha.equals("y2011c1")) {  
     	testTitle = "[2011년도 1회 토목기사 필기]";
	} else if (testCha.equals("y2010c4")) {  
     	testTitle = "[2010년도 4회 토목기사 필기]";
	} else if (testCha.equals("y2010c2")) {  
     	testTitle = "[2010년도 2회 토목기사 필기]";
	} else if (testCha.equals("y2010c1")) {  
     	testTitle = "[2010년도 1회 토목기사 필기]";
	} 
  
	int sub = Integer.parseInt(request.getParameter("sub")); 
	String score = "";
	String subject = "";
	
	if (sub == 1) {
		score = request.getParameter("score1");
		subject = "응용역학";
	} else if (sub == 2) {
		score = request.getParameter("score2");
		subject = "측량학";
	} else if (sub == 3) {
		score = request.getParameter("score3");
		subject = "수리학 및 수문학";
	} else if (sub == 4) {
		score = request.getParameter("score4");
		subject = "철근콘크리트 및 강구조";
	} else if (sub == 5) {
		score = request.getParameter("score5");
		subject = "토질 및 기초";
	} else if (sub == 6) {
		score = request.getParameter("score6");
		subject = "상하수도공학";
	}
%>


	<div class="result-title">시험 결과</div>
	<div class="result-cha-title"><%= testTitle %></div>
	
	<table class="score score1">
		<tr class="col-title">
			<td class="col-title1"><%= subject %></td>
		</tr>
		<tr>
			<td><%= score %>점</td>
		</tr>
	</table>
	
	<button class="btn-confirm" data-toggle="modal" onclick="saveWrongData20()" data-target="#myModal">시험 결과 저장</button>
	<button class="btn-confirm" id="btn-confirm" onclick="sendTestCha()">오답 확인</button>
	
	<div class="ex">* 시험 결과를 저장하면, 시험 결과 확인 페이지에서 확인하실 수 있습니다.</div>
	
	
	<div class="container">
		<div class="modal fade" id="myModal">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header">
						<div class="modal-title" style="font-size: 16px;">알림</div>
					</div>
					<div class="modal-body">시험 결과가 저장되었습니다.</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-success" data-dismiss="modal">확인</button>
					</div>

				</div>
			</div>
		</div>
	</div>
	
	
<script>
		function sendTestCha() {
	 		// confirm20Page.jsp로 점수랑 type 데이터 전달
		  	var testCha = "<%= testCha %>";
		  	var type = "<%= sub %>";
		  	var url = "${myctx}/confirm20Page?testCha="+ testCha +"?type="+ type;
		  	// 페이지 이동
		  	window.location.href = url;
		}
		
		function saveWrongData20() {
			
			var type = "<%= sub %>";
			var testCha = "<%= testCha %>";
			var score = "<%= score %>";
			
			$.ajax({
				url: '/saveWrongData20',
				type: 'POST',
				dataType: 'json',
				contentType: "application/json;charset=UTF-8",
				data: JSON.stringify({
					type: type,
					testCha: testCha,
					score: score}),
				success: function(response) {
					console.log('데이터 전송 성공');
				},
				error: function(xhr, status, error) {
					console.error('데이터 전송 실패:', error);					
				}
			});
			
		}


</script>





	



