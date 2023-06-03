
// questions배열 [2021년도 3회] 120문제 ---------------------------------------------------------------------

		var currentQuestion = 1; // 현재 문제 번호를 저장하는 변수
		var totalQuestions = 120; // 총 문제 수

		var questions = [
				{//1
					question : "그림과 같은 구조물의 C점에 연직하중이 작용할 때 AC부재가 받는 힘은?",
					choices : [ "2.5kN", "5.0kN", "8.7kN", "10.0kN" ],
					correctAnswer : 3
				},{
					question : "그림과 같은 인장부재의 수직변위를 구하는 식으로 옳은 것은? (단, 탄성계수는 E이다.)",
					choices : [ "(PL)/(EA)", "(3PL)/(2EA)", "(2PL)/(EA)", "(5PL)/(2EA)" ],
					correctAnswer : 2
				},{
					question : "그림과 같은 트러스에서 AC부재의 부재력은?",
					choices : [ "인장 40kN", "압축 40kN", "인장 80kN", "압축 80kN" ],
					correctAnswer : 4
				},{
					question : "그림과 같은 단순보에서 C점에 30kN·m의 모멘트가 작용할 때 A점의 반력은?",
					choices : [ "(10/3)kN (↓)", "(10/3)kN (↑)", "(20/3)kN (↓)", "(20/3)kN (↑)" ],
					correctAnswer : 1
				},{
					question : "그림과 같은 기둥에서 좌굴하중의 비 (a) : (b) : (c) : (d)는? (단, EI와 기둥의 길이는 모두 같다.)",
					choices : [ "1 : 2 : 3 : 4", "1 : 4 : 8 : 12", "1 : 4 : 8 : 16", "1 : 8 : 16 : 32" ],
					correctAnswer : 3
				},{
					question : "그림과 같은 2개의 캔틸레버 보에 저장되는 변형에너지를 각각 U(1), U(2) 라고 할 때 U(1) : U(2)의 비는? (단, EI는 일정하다.)",
					choices : [ "2 : 1", "4 : 1", "8 : 1", "16 : 1" ],
					correctAnswer : 3
				},{
					question : "그림과 같은 사다리꼴 단면에서 X-X'축에 대한 단면 2차 모멘트 값은?",
					choices : [ "(h³/12)(b+3a)", "(h³/12)(b+2a)", "(h³/12)(3b+a)", "(h³/12)(2b+a)" ],
					correctAnswer : 1
				},{
					question : "그림과 같은 단순보에서 C~D구간의 전단력 값은?",
					choices : [ "P", "2P", "P/2", "0" ],
					correctAnswer : 4
				},{
					question : "그림과 같은 구조물의 부정정 차수는?",
					choices : [ "6차 부정정", "5차 부정정", "4차 부정정", "3차 부정정" ],
					correctAnswer : 1
				},{ //10
					question : "그림과 같은 하중을 받는 보의 최대전단응력은?",
					choices : [ "(2wL)/(3bh)", "(3wL)/(2bh)", "(2wL)/(bh)", "(wL)/(bh)" ],
					correctAnswer : 4
				},{ //11
					question : "다음 중 정(+)과 부(-)의 값을 모두 갖는 것은?",
					choices : [ "단면계수", "단면 2차 모멘트", "단면 2차 반지름", "단면 상승 모멘트" ],
					correctAnswer : 4
				},{
					question : "그림과 같은 캔틸레버 보에서 C점의 처짐은? (단, EI는 일정하다.)",
					choices : [ "(PL³)/(24EI)", "(5PL³)/(24EI)", "(PL³)/(48EI)", "(5PL³)/(48EI)" ],
					correctAnswer : 4
				},{
					question : "그림과 같은 단면에 600kN의 전단력이 작용할 때 최대 전단응력의 크기는?",
					choices : [ "12.71MPa", "15.98MPa", "19.83MPa", "21.32MPa" ],
					correctAnswer : 2
				},{
					question : "그림과 같은 단순보에서 B점에 모멘트 MB가 작용할 때 A점에서의 처짐각(θA)은? (단, EI는 일정하다.)",
					choices : [ "(MＢL)/(2EI)", "(MＢL)/(3EI)", "(MＢL)/(6EI)", "(MＢL)/(8EI)" ],
					correctAnswer : 3
				},{
					question : "그림과 같은 r=4m인 3힌지 원호 아치에서 지점 A에서 2m 떨어진 E점에 발생하는 휨모멘트의 크기는?",
					choices : [ "6.13kN·m", "7.32kN·m", "8.27kN·m", "9.16kN·m" ],
					correctAnswer : 2
				},{
					question : "그림과 같은 30° 경사진 언덕에 40kN의 물체를 밀어 올릴 때 필요한 힘 P는 최소 얼마 이상이어야 하는가? (단, 마찰계수는 0.25이다.)",
					choices : [ "28.7kN", "30.2kN", "34.7kN", "40.0kN" ],
					correctAnswer : 1
				},{
					question : "그림과 같은 부정정 구조물에서 B지점의 반력의 크기는? (단, 보의 휨강도 EI는 일정하다.)",
					choices : [ "(7/3)P", "(7/4)P", "(7/5)P", "(7/6)P" ],
					correctAnswer : 2
				},{
					question : "단면이 100mm × 200mm인 장주의 길이가 3m일 때 이 기둥의 좌굴하중은? (단, 기둥의 E=2.0×10⁴MPa, 지지상태는 일단 고정, 타단 자유이다.)",
					choices : [ "45.8kN", "91.4kN", "182.8kN", "365.6kN" ],
					correctAnswer : 2
				},{
					question : "그림과 같은 단순보에서 A점의 반력이 B점의 반력의 2배가 되도록 하는 거리 x는? (단, x는 A점으로부터의 거리이다.)",
					choices : [ "1.67m", "2.67m", "3.67m", "4.67m" ],
					correctAnswer : 3
				},{ //20
					question : "그림과 같이 이축응력(二軸應力) 받고 있는 요소의 체적변형률은? (단, 이 요소의 탄성계수 E=2×105MPa, 푸아송 비 ν=0.3이다.)",
					choices : [ "3.6×10-⁴", "4.0×10-⁴", "4.4×10-⁴", "4.8×10-⁴" ],
					correctAnswer : 2
				},{ //21
					question : "A, B 두 점에서 교호수준측량을 실시하여 다음의 결과를 얻었다. A점의 표고가 67.104m 일 때 B점의 표고는? (단, a1=3.756m, a2=1.572m, b1=4.995m, b2=3.209m)",
					choices : [ "64.668m", "65.666m", "", "" ],
					correctAnswer : 2
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{ //30
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{ //31
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{ //40
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{ //41
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{ //50
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{//51
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{ //60
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{ //61
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{ //70
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{ //71
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{ //80
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{//81
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{ //90
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{ //91
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{ //100
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{ //101
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{ //110
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{ //111
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},{ //120
					question : "",
					choices : [ "", "", "", "" ],
					correctAnswer : 0
				},];

// 문제 저장 끝 ------------------------------------------------------------------------------------------------------------
// 이미지 첨부 여부------------------------------------------------------------------------------------------------------------
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
				questionTitle.innerHTML = "[ 2021년 3회 ] 응용역학";
			} else if (index >= 20 && index < 40) {
				questionTitle.innerHTML = "[ 2021년 3회 ] 측량학";
			} else if (index >= 40 && index < 60) {
				questionTitle.innerHTML = "[ 2021년 3회 ] 수리학 및 수문학";
			} else if (index >= 60 && index < 80) {
				questionTitle.innerHTML = "[ 2021년 3회 ] 철근콘크리트 및 강구조";
			} else if (index >= 80 && index < 100) {
				questionTitle.innerHTML = "[ 2021년 3회 ] 토질 및 기초";
			} else if (index >= 100 && index < 120) {
				questionTitle.innerHTML = "[ 2021년 3회 ] 상하수도공학";
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
			if ((1<=afterIndex && afterIndex<=10) || (12<=afterIndex && afterIndex<=17)
				|| afterIndex == 19 || afterIndex == 20 || afterIndex == 21 || afterIndex == 29
				|| afterIndex == 41 || afterIndex == 43 || afterIndex == 61 || afterIndex == 66
				|| afterIndex == 68 || afterIndex == 72 || afterIndex == 73 || afterIndex == 76
				|| afterIndex == 80 || afterIndex == 81 || afterIndex == 87 || afterIndex == 91
				|| afterIndex == 96 || afterIndex == 100 || afterIndex == 113 || afterIndex == 118 ) {

				var imagePath = "/newapp/images/y2021c3Images/y2021c3_"
						+ (index + 1) + ".png";
				questionImageElement.src = imagePath;
				questionDiv.appendChild(questionImageElement);

			} else {
				
				// 한 줄 띄우기
				var lineBreak = document.createElement("br");
				questionDiv.appendChild(lineBreak);
			}

			var choicesElement = document.createElement("div");
			choicesElement.className = "choices";
			questionDiv.appendChild(choicesElement);

			for (var j = 0; j < questionData.choices.length; j++) {
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
			
// 이미지 첨부 끝 ------------------------------------------------------------------------------------------------------------		
// 답 맞추기 ------------------------------------------------------------------------------------------------------------	
		

		
		
		