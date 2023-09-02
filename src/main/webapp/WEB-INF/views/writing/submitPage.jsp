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

<!-- js 참조 (questions배열 + 이미지 여부) --------------------------------- -->
<%  String testCha = request.getParameter("title");
	String testTitle = "";

		if (testCha.equals("y2022c2")) { %>
	<%	testTitle = "[2022년도 2회 토목기사 필기]";
		} else if (testCha.equals("y2022c1")) { %>
	<%	testTitle = "[2022년도 1회 토목기사 필기]";
	
		} else if (testCha.equals("y2021c3")) { %>
	<%	testTitle = "[2021년도 3회 토목기사 필기]";
		} else if (testCha.equals("y2021c2")) { %>
	<%  testTitle = "[2021년도 2회 토목기사 필기]";
		} else if (testCha.equals("y2021c1")) { %>
	<%	testTitle = "[2021년도 1회 토목기사 필기]";
	
		} else if (testCha.equals("y2020c4")) { %>
	<%	testTitle = "[2020년도 4회 토목기사 필기]";
		} else if (testCha.equals("y2020c3")) { %>
	<%	testTitle = "[2020년도 3회 토목기사 필기]";
		} else if (testCha.equals("y2020c12")) { %>
	<%	testTitle = "[2020년도 12회 토목기사 필기]";
	
		} else if (testCha.equals("y2019c3")) { %>
	<%	testTitle = "[2019년도 3회 토목기사 필기]";
		} else if (testCha.equals("y2019c2")) { %>
	<%	testTitle = "[2019년도 2회 토목기사 필기]";
		} else if (testCha.equals("y2019c1")) { %>
	<%	testTitle = "[2019년도 1회 토목기사 필기]";
	
		} else if (testCha.equals("y2018c3")) { %>
	<%	testTitle = "[2018년도 3회 토목기사 필기]";
		} else if (testCha.equals("y2018c2")) { %>
	<%	testTitle = "[2018년도 2회 토목기사 필기]";
		} else if (testCha.equals("y2018c1")) { %>
	<%	testTitle = "[2018년도 1회 토목기사 필기]";
	
		} else if (testCha.equals("y2017c4")) { %>
	<%	testTitle = "[2017년도 4회 토목기사 필기]";
		} else if (testCha.equals("y2017c2")) { %>
	<%	testTitle = "[2017년도 2회 토목기사 필기]";
		} else if (testCha.equals("y2017c1")) { %>
	<%	testTitle = "[2017년도 1회 토목기사 필기]";
	
		} else if (testCha.equals("y2016c4")) { %>
	<%	testTitle = "[2016년도 4회 토목기사 필기]";
		} else if (testCha.equals("y2016c2")) { %>
	<%	testTitle = "[2016년도 2회 토목기사 필기]";
		} else if (testCha.equals("y2016c1")) { %>
	<%	testTitle = "[2016년도 1회 토목기사 필기]";
	
		} else if (testCha.equals("y2015c4")) { %>
	<%	testTitle = "[2015년도 4회 토목기사 필기]";
		} else if (testCha.equals("y2015c2")) { %>
	<%	testTitle = "[2015년도 2회 토목기사 필기]";
		} else if (testCha.equals("y2015c1")) { %>
	<%	testTitle = "[2015년도 1회 토목기사 필기]";
	
		} else if (testCha.equals("y2014c4")) { %>
	<%	testTitle = "[2014년도 4회 토목기사 필기]";
		} else if (testCha.equals("y2014c2")) { %>
	<%	testTitle = "[2014년도 2회 토목기사 필기]";
		} else if (testCha.equals("y2014c1")) { %>
	<%	testTitle = "[2014년도 1회 토목기사 필기]";
	
		} else if (testCha.equals("y2013c4")) { %>
	<%	testTitle = "[2013년도 4회 토목기사 필기]";
		} else if (testCha.equals("y2013c2")) { %>
	<%	testTitle = "[2013년도 2회 토목기사 필기]";
		} else if (testCha.equals("y2013c1")) { %>
	<%	testTitle = "[2013년도 1회 토목기사 필기]";
	
		} else if (testCha.equals("y2012c4")) { %>
	<%	testTitle = "[2012년도 4회 토목기사 필기]";
		} else if (testCha.equals("y2012c2")) { %>
	<%	testTitle = "[2012년도 2회 토목기사 필기]";
		} else if (testCha.equals("y2012c1")) { %>
	<%	testTitle = "[2012년도 1회 토목기사 필기]";
	
		} else if (testCha.equals("y2011c4")) { %>
	<%	testTitle = "[2011년도 4회 토목기사 필기]";
		} else if (testCha.equals("y2011c2")) { %>
	<%	testTitle = "[2011년도 2회 토목기사 필기]";
		} else if (testCha.equals("y2011c1")) { %>
	<%	testTitle = "[2011년도 1회 토목기사 필기]";
	
		} else if (testCha.equals("y2010c4")) { %>
	<%	testTitle = "[2010년도 4회 토목기사 필기]";
		} else if (testCha.equals("y2010c2")) { %>
	<%	testTitle = "[2010년도 2회 토목기사 필기]";
		} else if (testCha.equals("y2010c1")) { %>
	<%	testTitle = "[2010년도 1회 토목기사 필기]";
		} %>
<!-- ------------------------------------------------------------------------------- -->

	<div class="result-title">시험 결과</div>
	<div class="result-cha-title"><%= testTitle %></div>
	
	<table class="score score1">
		<tr class="col-title">
			<td class="col-title1">응용역학</td>
			<td class="col-title1">측량학</td>
			<td class="col-title1">수리학<br>및 수문학
			</td>
		</tr>
		<tr>
			<td>${param.score1}점</td>
			<td>${param.score2}점</td>
			<td>${param.score3}점</td>
		</tr>
	</table>
	
	<table class="score score2">
		<tr class="col-title">
			<td class="col-title1">철근콘크리트 및 강구조
			</td>
			<td class="col-title1">토질 및 기초</td>
			<td class="col-title1">상하수도공학</td>
		</tr>
		<tr>
			<td>${param.score4}점</td>
			<td>${param.score5}점</td>
			<td>${param.score6}점</td>
		</tr>
	</table>
	
	<%
	// submitPage.jsp에서 전달된 점수 데이터 파싱
	int score1 = Integer.parseInt(request.getParameter("score1"));
	int score2 = Integer.parseInt(request.getParameter("score2"));
	int score3 = Integer.parseInt(request.getParameter("score3"));
	int score4 = Integer.parseInt(request.getParameter("score4"));
	int score5 = Integer.parseInt(request.getParameter("score5"));
	int score6 = Integer.parseInt(request.getParameter("score6"));
	
	double mean = (double)(score1 + score2 + score3 + score4 + score5 + score6) / 6;
	String formattedMean = String.format("%.2f", mean);
	%>
	
	<div class="mean">
		<span class="mean1">평균: </span> <span class="mean2"><%=formattedMean%></span>
		<span class="mean3">점</span>
	</div>
	
	
	
	<%
	if (mean >= 60 && score1 >= 40 && score2 >= 40 && score3 >= 40 && score4 >= 40 && score5 >= 40 && score6 >= 40) {
	%>
	<div class="result" id="result">합격</div>
	<%
	} else {
	%>
	<div class="result" id="result">불합격</div>
	<%
	}
	%>
	
	<button class="btn-confirm" data-toggle="modal" onclick="saveWrongData()" data-target="#myModal">시험 결과 저장</button>
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
	 		// confirmPage.jsp로 점수 데이터 전달
		  	var testCha = "<%= testCha %>";
		  	var url = "${myctx}/confirmPage?testCha="+ testCha;
		  	// 페이지 이동
		  	window.location.href = url;
		}
		
		function saveWrongData() {

			var testCha = "<%= testCha %>";
			var score1 = "<%= score1 %>";
			var score2 = "<%= score2 %>";
			var score3 = "<%= score3 %>";
			var score4 = "<%= score4 %>";
			var score5 = "<%= score5 %>";
			var score6 = "<%= score6 %>";
			var mean = "<%= formattedMean %>";
			
			$.ajax({
				url: '/saveWrongData',
				type: 'POST',
				dataType: 'json',
				contentType: "application/json;charset=UTF-8",
				data: JSON.stringify({
					type: '7',
					testCha: testCha,
					test1: score1,
					test2: score2,
					test3: score3,
					test4: score4,
					test5: score5,
					test6: score6,
					mean: mean}),
				success: function(response) {
					console.log('데이터 전송 성공');
				},
				error: function(xhr, status, error) {
					console.error('데이터 전송 실패:', error);					
				}
			});
			
		}


</script>








	
