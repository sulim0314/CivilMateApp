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
</style>

<div class="result-title">시험 결과</div>
<div class="result-cha-title">[ ${param.title} 토목기사 필기 ]</div>

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





