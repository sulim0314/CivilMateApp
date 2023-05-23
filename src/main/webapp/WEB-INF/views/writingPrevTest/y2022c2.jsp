<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet" href="./css/testLayout.css">
</head>
<script src="./js/y2022c2Test.js"></script>
<!--  ------------------------------------------------------ -->


<body onload="showQuestion()">
	<div class="title">[ 2022년도 2회 토목기사 필기 ]</div>
	<!-- 문제를 표시할 컨테이너 -->
	<div id="questionContainer"></div>

	<!-- π ²³⁴ ₁₂₃₄ -->


	<!-- ------------------------------------ -->
	<script>
		var currentQuestion = 1; // 현재 문제 번호를 저장하는 변수
		var totalQuestions = 120; // 총 문제 수

		var questions = [
				{
					question : "그림과 같이 이축응력을 받고 있는 요소의 체적변형률은? (단, 탄성계수(E)는 2×105 MPa, 푸아송 비(ν)는 0.3이다.)",
					choices : [ "2.7×10^(-4)", "3.0×10^(-4)", "3.7×10^(-4)",
							"4.0×10^(-4)" ],
					correctAnswer : 4
				},
				{
					question : "그림과 같은 단면의 상승모멘트(Ixy)는?",
					choices : [ "77500 mm⁴", "92500 mm⁴", "122500 mm⁴",
							"157500 mm⁴" ],
					correctAnswer : 3
				},
				{
					question : "그림과 같이 봉에 작용하는 힘들에 의한 봉 전체의 수직 처짐의 크기는?",
					choices : [ "PL/A₁E₁", "2PL/3A₁E₁", "4PL/3A₁E₁",
							"3PL/2A₁E₁" ],
					correctAnswer : 1
				},
				{
					question : "그림과 같은 구조물의 BD 부재에 작용하는 힘의 크기는?",
					choices : [ "100 kN", "125 kN", "150 kN", "200 kN" ],
					correctAnswer : 4
				},
				{
					question : "그림과 같은 와렌(warren) 트러스에서 부재력이 '0(영)'인 부재는 몇 개인가?",
					choices : [ "0개", "1개", "2개", "3개" ],
					correctAnswer : 2
				},
				{
					question : "전단응력도에 대한 설명으로 틀린 것은?",
					choices : [ "직사각형 단면에서는 중앙부의 전단응력도가 제일크다.",
							"원형 단면에서는 중앙부의 전단응력도가 제일 크다.",
							"I형 단면에서는 상, 하단의 전단응력도가 제일 크다.",
							"전단응력도는 전단력의 크기에 비례한다." ],
					correctAnswer : 3
				},
				{
					question : "그림과 같은 2경간 연속보에 등분포 하중 w = 4kN/m가 작용할 때 전단력이 “0”이 되는 위치는 지점 A로부터 얼마의 거리(x)에 있는가?",
					choices : [ "0.75m", "0.85m", "0.95m", "1.05m" ],
					correctAnswer : 1
				},
				{
					question : "그림과 같은 3힌지 아치의 중간 힌지에 수평하중 P가 작용할 때 A지점의 수직반력(VＡ)과 수평 반력(HＡ)은?",
					choices : [ "VＡ = Ph/L(↑), HＡ = P/2h(←)",
							"VＡ = Ph/L(↓), HＡ = P/2h(→)",
							"VＡ = Ph/L(↑), HＡ = P/2(→)",
							"VＡ = Ph/L(↓), HＡ = P/2(←)" ],
					correctAnswer : 4
				},
				{
					question : "그림과 같이 단순지지된 보에 등분포하중 q가 작용하고 있다. 지점 C의 부모멘트와 보의 중앙에 발생하는 정모멘트의 크기를 같게하여 등분포하중 q의 크기를 제한하려고 한다. 지점 C와 D는 보의 대칭거동을 유지하기 위하여 각각 A와 B로부터 같은 거리에 배치하고자 한다. 이때 보의 A점으로부터 지점 C까지의 거리(X)는?",
					choices : [ "0.207 L", "0.250 L", "0.333 L", "0.444 L" ],
					correctAnswer : 1
				},
				{
					question : "탄성 변형에너지(Elastic Strain Energy)에 대한 설명으로 틀린 것은?",
					choices : [ "변형에너지는 내적인 일이다.", "외부하중에 의한 일은 변형에너지와 같다.",
							"변형에너지는 강성도가 클수록 크다.", "하중을 제거하면 회복될 수 있는 에너지이다." ],
					correctAnswer : 3
				},
				{
					question : "그림에서 중앙점(C점)의 휨모멘트(Mc)는?",
					choices : [ "wL²/20", "5wL²/96", "wL²/6", "wL²/12" ],
					correctAnswer : 4
				},
				{
					question : "단면이 200mm × 300mm인 압축부재가 있다. 부재의 길이가 2.9m일 때 이 압축부재의 세장비는 약 얼마인가? (단, 지지상태는 양단 힌지이다.)",
					choices : [ "33", "50", "60", "100" ],
					correctAnswer : 2
				},
				{
					question : "그림과 같이 한 변이 a인 정사각형 단면의 1/4 을 절취한 나머지 부분의 도심(C)의 위치(yo)는?",
					choices : [ "4a/12", "5a/12", "6a/12", "7a/12" ],
					correctAnswer : 2
				},
				{
					question : "그림과 같은 구조물에서 하중이 작용하는 위치에서 일어나는 처짐의 크기는?",
					choices : [ "PL³/48EI", "PL³/96EI", "7PL³/384EI",
							"11PL³/384EI" ],
					correctAnswer : 3
				},
				{
					question : "그림과 같은 게르버 보에서 A점의 반력은?",
					choices : [ "6kN (↓)", "6kN (↑)", "30kN (↓)", "30kN (↑)" ],
					correctAnswer : 1
				},
				{
					question : "그림과 같은 부정정보의 A단에 작용하는 휨모멘트는?",
					choices : [ "-wL²/4", "-wL²/8", "-wL²/12", "-wL²/24" ],
					correctAnswer : 2
				},
				{
					question : "그림과 같이 단순보에 이동하중이 작용할 때 절대최대휨모멘트는?",
					choices : [ "387.2 kN·m", "423.2 kN·m", "478.4 kN·m",
							"531.7 kN·m" ],
					correctAnswer : 2
				},
				{
					question : "그림과 같은 내민보에서 A점의 처짐은? (단, I = 1.6×108 mm4, E = 2.0×105 MPa 이다.)",
					choices : [ "22.5 mm", "27.5 mm", "32.5 mm", "37.5 mm" ],
					correctAnswer : 4
				},
				{
					question : "그림과 같이 연결부에 두 힘 50kN과 20kN이 작용한다. 평형을 이루기 위한 두 힘 A와 B의 크기는?",
					choices : [ "A = 10 kN, B = 50 + √3 kN",
							"A = 50 + √3 kN, B = 10 kN",
							"A = 10√3 kN, B = 60 kN", "A = 60 kN, B = 10√3 kN" ],
					correctAnswer : 3
				},
				{ //20번
					question : "바닥은 고정, 상단은 자유로운 기둥의 좌굴 형상이 그림과 같을 때 임계하중은?",
					choices : [ "π²EI/4L", "9π²EI/4L²", "13π²EI/4L²",
							"25π²EI/4L²" ],
					correctAnswer : 2
				},
				{ // 21번
					question : "다음 중 완화곡선의 종류가 아닌 것은?",
					choices : [ "렘니스케이트 곡선", "클로소이드 곡선", "3차 포물선", "배향 곡선" ],
					correctAnswer : 4
				},
				{
					question : "그림과 같이 교호수준측량을 실시한 결과가 a1 = 0.63m, a2 = 1.25m, b1 = 1.15m, b2 = 1.73m 이었다면, B점의 표고는? (단, A의 표고 = 50.00m)",
					choices : [ "49.50m", "50.00m", "50.50m", "51.00m" ],
					correctAnswer : 1
				},
				{
					question : "수심 h인 하천의 수면으로부터 0.2h, 0.4h, 0.6h, 0.8h 인 곳에서 각각의 유속을 측정하여 0.562m/s, 0.521m/s, 0.497m/s, 0.364m/s의 결과를 얻었다면 3점법을 이용한 평균유속은?",
					choices : [ "0.474 m/s", "0.480 m/s", "0.486 m/s",
							"0.492 m/s" ],
					correctAnswer : 2
				},
				{
					question : "GNSS 다중주파수(multi-frequency)를 채택하고 있는 가장 큰 이유는?",
					choices : [ "데이터 취득 속도의 향상을 위해", "대류권지연 효과를 제거하기 위해",
							"다중경로오차를 제거하기 위해", "전리층지연 효과의 제거를 위해" ],
					correctAnswer : 4
				},
				{
					question : "측점간의 시통이 불필요하고 24시간 상시 높은 정밀도로 3차원 위치측정이 가능하며, 실시간 측정이 가능하여 항법용으로도 활용되는 측량방법은?",
					choices : [ "NNSS 측량", "GNSS 측량", "VLBI 측량", "토털스테이션 측량" ],
					correctAnswer : 2
				},
				{
					question : "어떤 측선의 길이를 관측하여 다음 표와 같은 결과를 얻었다면 최확값은?",
					choices : [ "40.530m", "40.531m", "40.532m", "40.533m" ],
					correctAnswer : 3
				},
				{
					question : "그림과 같은 구역을 심프슨 제1법칙으로 구한 면적은? (단, 각 구간의 지거는 1m로 동일하다.)",
					choices : [ "14.20 m2", "14.90 m2", "15.50 m2", "16.00 m2" ],
					correctAnswer : 2
				},
				{
					question : "단곡선을 설치할 때 곡선반지름이 250m, 교각이 116°23′, 곡선시점까지의 추가거리가 1146m 일 때 시단현의 편각은? (단, 중심말뚝 간격=20m)",
					choices : [ "0° 41′ 15″	", "1° 15′ 36″", "1° 36′ 15″",
							"2° 54′ 51″" ],
					correctAnswer : 3
				},
				{
					question : "그림과 같은 트레버스에서 AL의 방위각이 29° 40′ 15″, BM의 방위각이 320° 27′ 12″, 교각의 총합이 1190° 47′ 32″ 일 때 각관측 오차는?",
					choices : [ "45″", "35″", "25″", "15″" ],
					correctAnswer : 2
				},
				{// 30
					question : "지형측량을 할 때 기본 삼각점만으로는 기준점이 부족하여 추가로 설치하는 기준점은?",
					choices : [ "방향전환점", "도근점", "이기점", "중간점" ],
					correctAnswer : 2
				},
				{
					question : "지구반지름이 6370km 이고 거리의 허용오차가 1/105 이면 평면측량으로 볼 수 있는 범위의 지름은?",
					choices : [ "약 69km", "약 64km", "약 36km", "약 22km" ],
					correctAnswer : 1
				},
				{
					question : "그림과 같은 수준망을 각각의 환에 따라 폐합오차를 구한 결과가 표와 같고 폐합오차의 한계가 ±1.0√S cm 일 때 우선적으로 제 관측할 필요가 있는 노선은? (단, S : 거리[km])",
					choices : [ "e노선", "f노선", "g노선", "h노선" ],
					correctAnswer : 1
				},
				{
					question : "수준측량에서 발생하는 오차에 대한 설명으로 틀린 것은?",
					choices : [
							" 기계의 조정에 의해 발생하는 오차는 전시와 후시의 거리를 같게 하여 소거할 수 있다.",
							"삼각수준측량은 대지역을 대상으로 하기 때문에 곡률오차와 굴절오차는 그 양이 상쇄되어 고려하지 않는다.",
							"표척의 영눈금 오차는 출발점의 표척을 도착점에서 사용하여 소거할 수 있다.",
							"기포의 수평조정이나 표척면의 읽기는 육안으로 한계가 있으나 이로 인한 오차는 일반적으로 허용오차 범위 안에 들 수 있다." ],
					correctAnswer : 2
				},
				{
					question : "그림과 같은 관측결과 θ = 30° 11′ 00″, S = 1000m 일 때 C점의 X좌표는? (단, AB의 방위각 = 89° 49′ 00″, A점의 X좌표 = 1200m)",
					choices : [ "700.00m", "1203.20m", "2064.42m", "2066.03m" ],
					correctAnswer : 1
				},
				{
					question : "그림과 같은 복곡선에서 t1 + t2 의 값은?",
					choices : [ "R₁(tanΔ₁ + tanΔ₂)", "R₂(tanΔ₁ + tanΔ₂)",
							"R₁tanΔ₁ + R₂tanΔ₂", "R₁tan(Δ₁/2) + R₂tan(Δ₂/2)" ],
					correctAnswer : 4
				},
				{
					question : "노선 설치 방법 중 좌표법에 의한 설치방법에 대한 설명으로 틀린 것은?",
					choices : [ "토탈스테이션, GPS 등과 같은 장비를 이용하여 측점을 위치시킬 수 있다.",
							"좌표법에 의한 노선의 설치는 다른 방법보다 지형의 굴곡이나 시통 등의 문제가 적다.",
							"좌표법은 평면곡선 및 종단곡선의 설치요소를 동시에 위치시킬 수 있다.",
							"평면적인 위치의 측설을 수행하고 지형표고를 관측하여 종단면도를 작성할 수 있다." ],
					correctAnswer : 3
				},
				{
					question : "다각측량에서 각 측량의 기계적 오차 중 시준축과 수평축이 직교하지 않아 발생하는 오차를 처리하는 방법으로 옳은 것은?",
					choices : [ "망원경을 정위와 반위로 측정하여 평균값을 취한다.", "배각법으로 관측을 한다.",
							"방향각법으로 관측을 한다.", "편심관측을 하여 귀심계산을 한다." ],
					correctAnswer : 1
				}, {
					question : "30m당 0.03m가 짧은 줄자를 사용하여 정사각형 토지와 한 변을 측정한 결과 150m이었다면 면적에 대한 오차는?",
					choices : [ "41 m²", "43 m²", "45 m²", "47 m²" ],
					correctAnswer : 3
				}, {
					question : "지성선에 관한 설명으로 옳지 않은 것은?",
					choices : [ "철(凸)선은 능선 또는 분수선이라고 한다.", 
						"경사변환선이란 동일 방향의 경사면에서 경사의 크기가 다른 두 면의 접합선이다.",
						"요(凹)선은 지표의 경사가 최대로 되는 방향을 표시한 선으로 유하선이라고 한다.", 
						"지성선은 지표면이 다수의 평면으로 구성되었다고 할 때 평면간 접합부, 즉 접선을 말하며 지세선이라고도 한다." ],
					correctAnswer : 3
				}, {//40
					question : "그림과 같은 지형에서 각 등고선에 쌓인 부분의 면적이 표와 같을 때 각주공식에 의한 토량은? (단, 윗면은 평평한 것으로 가정한다.)",
					choices : [ "11400 m³", "22800 m³", "33800 m³", "38000 m³" ],
					correctAnswer : 4
				}, {//41
					question : "2개의 불투수층 사이에 있는 대수층 두께 a, 투수계수 k 인 곳에 반지름 r0 인 굴착정(artesian well)을 설치하고 일정 양수량 Q를 양수하였더니, 양수 전 굴착정 내의 수위 H가 h0 로 강하하여 정상흐름이 되었다. 굴착정의 영향원 반지름을 R이라 할 때 (H-h0)의 값은?",
					choices : [ "(2Q/πak)ln(R/r0)", "(Q/2πak)ln(R/r0)", "(2Q/πak)ln(r0/R)", "(Q/2πak)ln(r0/R)" ],
					correctAnswer : 2
				}, {
					question : "침투능(infilration capacity)에 관한 설명으로 틀린 것은?",
					choices : [ "침투능은 토양조건과는 무관하다.", "침투능은 강우강도에 따라 변화한다.", "일반적으로 단위는 mm/h 또는 in/h로 표시된다.", "어떤 토양면을 통해 물이 침투할 수 있는 최대율을 말한다." ],
					correctAnswer : 1
				}, {
					question : "3차원 흐름의 연속방정식을 아래와 같은 형태로 나타낼 때 이에 알맞은 흐름의 상태는?",
					choices : [ "압축성 부정류", "압축성 정상류", "비압축성 부정류", "비압축성 정상류" ],
					correctAnswer : 4
				}, {
					question : "지름 20cm의 원형단면 관수로에 물이 가득차서 흐를 때의 동수반경은?",
					choices : [ "5cm", "10cm", "15cm", "20cm" ],
					correctAnswer : 1
				}, {
					question : "대수층의 두께 2.3m, 폭 1.0m일 때 지하수 유량은? (단, 지하수류의 상·하류 두 지점 사이의 수두차 1.6m, 두 지점 사이의 평균거리 360m, 투수계수 k=192m/day)",
					choices : [ "1.53 m³/day", "1.80 m³/day", "1.96 m³/day", "2.21 m³/day" ],
					correctAnswer : 3
				}, {
					question : "그림과 같은 수조 벽면에 작은 구멍을 뚫고 구멍의 중심에서 수면까지 높이가 h일 때, 유출속도 V는? (단, 에너지 손실은 무시한다.)",
					choices : [ "(2gh)^(½)", "(gh)^(½)", "2gh", "gh" ],
					correctAnswer : 1
				}, {
					question : "그림과 같이 원형관 중심에서 V의 유속으로 물이 흐르는 경우에 대한 설명으로 틀린 것은? (단, 흐름은 층류로 가정한다.)",
					choices : [ "지점 A에서의 마찰력은 V²에 비례한다.", "지점 A에서의 유속은 단면 평균유속의 2배다.", "지점 A에서 지점 B로 갈수록 마찰력은 커진다.", "유속은 지점 A에서 최대인 포물선 분포를 한다." ],
					correctAnswer : 1
				}, {
					question : "어떤 유역에 다음 표와 같이 30분간 집중호우가 계속 되었을 때, 지속기간 15분인 최대강우강도는?",
					choices : [ "64 mm/h", "48 mm/h", "72 mm/h", "80 mm/h" ],
					correctAnswer : 3
				}, {
					question : "정지하고 있는 수중에 작용하는 정수압의 성질로 옳지 않은 것은?",
					choices : [ "정수압의 크기는 깊이에 비례한다.", "정수압은 물체의 면에 수직으로 작용한다.", "정수압은 단위면적에 작용하는 힘의 크기로 나타낸다.", "한 점에 작용하는 정수압은 방향에 따라 크기가 다르다." ],
					correctAnswer : 4
				}, { //50
					question : "단위유량도에 대한 설명으로 틀린 것은?",
					choices : [ "단위유량도의 정의에서 특정 단위시간은 1시간을 의미한다.", "일정기저시간가정, 비레가정, 중첩가정은 단위유량도의 3대 기본가정이다.", "단위유량도의 정의에서 단위 유효우량은 유역 전 면적 상의 등가우량 깊이로 측정되는 특정량의 우량을 의미한다.", "단위 유효우량은 유출량의 형태로 단위유량도상에 표시되며, 단위유량도 아래의 면적은 부피의 차원을 가진다." ],
					correctAnswer : 1
				}, { //51
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				}, {
					question : "?",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},
		// 나머지 문제들도 추가...
		];

		function showQuestion() {
			var questionContainer = document
					.getElementById("questionContainer");
			questionContainer.innerHTML = ""; // 문제 컨테이너 초기화

			var subjectTitles = [ "1과목 : 응용역학", "2과목 : 측량학", "3과목 : 수리학 및 수문학",
					"4과목 : 철근콘크리트 및 강구조", "5과목 : 토질 및 기초", "6과목 : 상하수도공학" ];

			var currentSubjectIndex = 0;

			for (var i = 0; i < totalQuestions; i++) {
				if (i % 20 === 0) {
					var titleElement = createTitleElement(subjectTitles[currentSubjectIndex]);
					titleElement.className = "subjectTitles"; // 클래스 추가 ★
					questionContainer.appendChild(titleElement);
					currentSubjectIndex++;
				}

				var questionDiv = createQuestionDiv(i);
				questionContainer.appendChild(questionDiv);
			}
		}

		function createTitleElement(title) {
			var titleElement = document.createElement("div");
			titleElement.className = "subjectTitle";
			titleElement.innerHTML = title;
			return titleElement;
		}

		function createQuestionDiv(index) {
			var questionData = questions[index];
			var questionDiv = document.createElement("div");
			questionDiv.className = "questionBox";

			var questionTitle = document.createElement("div");
			questionTitle.className = "cha-title";

			// 1~20: 응용역학 21~40: 측량학 41~60: 수리학 및 수문학
			// 61~80: 철근콘크리트 및 강구조 81~100: 토질 및 기초 101~120: 상하수도공학
			// 문제 번호에 따라 알맞은 타이틀 설정
			if (index >= 0 && index < 20) {
				questionTitle.innerHTML = "[ 2022년 2회 ] 응용역학";
			} else if (index >= 20 && index < 40) {
				questionTitle.innerHTML = "[ 2022년 2회 ] 측량학";
			} else if (index >= 40 && index < 60) {
				questionTitle.innerHTML = "[ 2022년 2회 ] 수리학 및 수문학";
			} else if (index >= 60 && index < 80) {
				questionTitle.innerHTML = "[ 2022년 2회 ] 철근콘크리트 및 강구조";
			} else if (index >= 80 && index < 100) {
				questionTitle.innerHTML = "[ 2022년 2회 ] 토질 및 기초";
			} else if (index >= 100 && index < 120) {
				questionTitle.innerHTML = "[ 2022년 2회 ] 상하수도공학";
			}

			questionDiv.appendChild(questionTitle);

			var questionElement = document.createElement("div");
			questionElement.className = "questions";
			questionElement.innerHTML = (index + 1) + ". "
					+ questionData.question;
			questionDiv.appendChild(questionElement);

			// 이미지 첨부 , 이미지 없을 땐 첨부 X
			var questionImageElement = document.createElement("img");
			questionImageElement.className = "question-image";

			var afterIndex = index + 1;
			if (afterIndex == 6 || afterIndex == 10 || afterIndex == 12
					|| afterIndex == 21 || afterIndex == 23 || afterIndex == 24
					|| afterIndex == 25 || afterIndex == 28 || afterIndex == 30
					|| afterIndex == 31 || afterIndex == 33 || afterIndex == 36
					|| afterIndex == 37 || afterIndex == 38 || afterIndex == 39
					|| afterIndex == 41 || afterIndex == 42 || afterIndex == 44
					|| afterIndex == 45 || (49 <= afterIndex)
					&& (afterIndex <= 54) || afterIndex == 56
					|| afterIndex == 57 || afterIndex == 58 || afterIndex == 60
					|| afterIndex == 61 || afterIndex == 64 || afterIndex == 65
					|| afterIndex == 67 || afterIndex == 68 || afterIndex == 69
					|| (72 <= afterIndex) && (afterIndex <= 76)
					|| (78 <= afterIndex) && (afterIndex <= 81)
					|| (84 <= afterIndex) && (afterIndex <= 88)
					|| afterIndex == 90 || (92 <= afterIndex)
					&& (afterIndex <= 96) || (98 <= afterIndex)
					&& (afterIndex <= 120)) {

			} else {
				var imagePath = "/newapp/images/y2022c2Images/y2022c2_"
						+ (index + 1) + ".png";
				questionImageElement.src = imagePath;
				questionDiv.appendChild(questionImageElement);
			}

			var choicesElement = document.createElement("div");
			choicesElement.className = "choices";
			questionDiv.appendChild(choicesElement);

			for (var j = 0; j < questionData.choices.length; j++) {
				//var choiceLabel = " " + (j + 1) + ") " + questionData.choices[j];
				var choiceLabel = questionData.choices[j];
				var choiceInput = createChoiceInput(index, j);
				var choiceLabelElement = createChoiceLabel(choiceLabel);

				choicesElement.appendChild(choiceInput);
				choicesElement.appendChild(choiceLabelElement);

				var lineBreak = document.createElement("br"); // 줄바꿈
				choicesElement.appendChild(lineBreak);
			}

			return questionDiv;
		}

		function createChoiceInput(questionIndex, choiceIndex) {
			var choiceInput = document.createElement("input");
			choiceInput.type = "radio";
			choiceInput.name = "question" + questionIndex;
			choiceInput.value = choiceIndex;
			choiceInput.onclick = function() {
				selectChoice(questionIndex, choiceIndex);
			};

			return choiceInput;
		}

		function createChoiceLabel(label) {

			var choiceLabelElement = document.createElement("label");
			choiceLabelElement.innerHTML = label;
			choiceLabelElement.className = "choice-label";

			return choiceLabelElement;
		}

		function selectChoice(questionIndex, choiceIndex) {
			// 선택한 답 처리 로직
		}

		function submitQuiz() {
			// 퀴즈 제출 처리
		}
	</script>
</body>