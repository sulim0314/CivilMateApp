<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<script>
<% 	String testCha = request.getParameter("testCha");

	if (testCha.equals("y2022c2")) { %> 
    	<%@ include file="y2022c2.jsp" %>
    	
    	</script>
    	<script>
    	alert('a');
    	</script>
    	<script>
    	
	<%} else if (testCha.equals("y2022c1")) { %>
      	<%@ include file="y2022c1.jsp" %>
      	
   	<%} else if (testCha.equals("y2021c3")) { %>
		<%@ include file="y2021c3.jsp" %>
    <%} %>
   	
   	<%-- 	else if (testCha.equals("y2021c2")) { %>
		<%@ include file="y2021c2.jsp" %>
    <%} else if (testCha.equals("y2021c1")) { %>
		<%@ include file="y2021c1.jsp" %>
		
	<%} else if (testCha.equals("y2020c4")) { %>
		<%@ include file="y2020c4.jsp" %>
	<%} else if (testCha.equals("y2020c3")) { %>
		<%@ include file="y2020c3.jsp" %>
	<%} else if (testCha.equals("y2020c12")) { %>
		<%@ include file="y2020c12.jsp" %>
		
	<%} else if (testCha.equals("y2019c3")) { %>
		<%@ include file="y2019c3.jsp" %>
	<%} else if (testCha.equals("y2019c2")) { %>
		<%@ include file="y2019c2.jsp" %>
	<%} else if (testCha.equals("y2019c1")) { %>
		<%@ include file="y2019c1.jsp" %>
		
	<%} else if (testCha.equals("y2018c3")) { %>
		<%@ include file="y2018c3.jsp" %>
	<%} else if (testCha.equals("y2018c2")) { %>
		<%@ include file="y2018c2.jsp" %>
	<%} else if (testCha.equals("y2018c1")) { %>
		<%@ include file="y2018c1.jsp" %>
		
	<%} else if (testCha.equals("y2017c4")) { %>
		<%@ include file="y2017c4.jsp" %>
	<%} else if (testCha.equals("y2017c2")) { %>
		<%@ include file="y2017c2.jsp" %>
	<%} else if (testCha.equals("y2017c1")) { %>
		<%@ include file="y2017c1.jsp" %>
		
	<%} else if (testCha.equals("y2016c4")) { %>
		<%@ include file="y2016c4.jsp" %>
	<%} else if (testCha.equals("y2016c2")) { %>
		<%@ include file="y2016c2.jsp" %>
	<%} else if (testCha.equals("y2016c1")) { %>
		<%@ include file="y2016c1.jsp" %>
		
	<%} else if (testCha.equals("y2015c4")) { %>
		<%@ include file="y2015c4.jsp" %>
	<%} else if (testCha.equals("y2015c2")) { %>
		<%@ include file="y2015c2.jsp" %>
	<%} else if (testCha.equals("y2015c1")) { %>
		<%@ include file="y2015c1.jsp" %>
		
	<%} else if (testCha.equals("y2014c4")) { %>
		<%@ include file="y2014c4.jsp" %>
	<%} else if (testCha.equals("y2014c2")) { %>
		<%@ include file="y2014c2.jsp" %>
	<%} else if (testCha.equals("y2014c1")) { %>
		<%@ include file="y2014c1.jsp" %>
		
	<%} else if (testCha.equals("y2013c4")) { %>
		<%@ include file="y2013c4.jsp" %>
	<%} else if (testCha.equals("y2013c2")) { %>
		<%@ include file="y2013c2.jsp" %>
	<%} else if (testCha.equals("y2013c1")) { %>
		<%@ include file="y2013c1.jsp" %>
		
	<%} else if (testCha.equals("y2012c4")) { %>
		<%@ include file="y2012c4.jsp" %>
	<%} else if (testCha.equals("y2012c2")) { %>
		<%@ include file="y2012c2.jsp" %>
	<%} else if (testCha.equals("y2012c1")) { %>
		<%@ include file="y2012c1.jsp" %>
		
	<%} else if (testCha.equals("y2011c4")) { %>
		<%@ include file="y2011c4.jsp" %>
	<%} else if (testCha.equals("y2011c2")) { %>
		<%@ include file="y2011c2.jsp" %>
	<%} else if (testCha.equals("y2011c1")) { %>
		<%@ include file="y2011c1.jsp" %>
		
	<%} else if (testCha.equals("y2010c4")) { %>
		<%@ include file="y2010c4.jsp" %>
	<%} else if (testCha.equals("y2010c2")) { %>
		<%@ include file="y2010c2.jsp" %>
	<%} else if (testCha.equals("y2010c1")) { %>
		<%@ include file="y2010c1.jsp" %>
    <%}%> --%>
    
    <%
    // y0000c0.jsp 파일에 저장된 문제 배열을 가져옴
    // 세션에서 문제 데이터를 가져옴
    ArrayList<Map<String, Object>> questions = (ArrayList<Map<String, Object>>) session.getAttribute("questions");

    // 문제 배열의 길이를 저장
    int totalQuestions = questions.size();

    // 랜덤한 문제 번호 생성
    int randomQuestionIndex = (int) (Math.random() * totalQuestions); // 0~119

    // 랜덤한 문제 가져오기
    Map<String, Object> randomQuestion = questions.get(randomQuestionIndex);

    // 문제 출력
    String question = (String) randomQuestion.get("question");
    ArrayList<String> choices = (ArrayList<String>) randomQuestion.get("choices");

    // TODO: 문제 출력과 랜덤한 문제 번호를 저장하는 부분을 구현하세요.
    /*   위 코드에서 TODO 주석이 있는 부분에서는 문제를 출력하고 랜덤한 문제 번호를 저장하는 부분을 
    구현해야 합니다. 출력 방식은 원하시는 형태로 변경하시면 됩니다. 
    예를 들어, 다음과 같이 문제와 선택지를 출력하는 코드를 추가할 수 있습니다. 
  	//문제 출력
  	out.println("문제: " + question);
  	out.println("선택지:");
  	for (String choice : choices) {
  	 out.println(choice);
  	}
  	
  	//랜덤한 문제 번호를 저장
  	session.setAttribute("randomQuestionIndex", randomQuestionIndex);
    */
    
    
    
    
  %>   
      

</script>
	
	 	
<%--  	<div>${question}</div>   --%>
    
    
    
    <div>안녕</div>
    
    
    
    
    
    
    
    