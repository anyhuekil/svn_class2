
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>

<%
/*
	동전이 있는곳은 [ ](1~3) -1단계
	[1번][2번][3번]
	
	다음 page에서 맞으면 정답동전획득
	틀리면 다시 page이동.
*/	

	int corrAns = (int)(1+ Math.random()*3);
	
%>

<!DOCTYPE html >
<html>
<head>
<script src="http://code.jquery.com/jquery-3.2.1.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script>

$(document).ready(function(){
	$("form").attr("action","a18_HW0509_red.jsp");
	$("form").attr("method","post");
	
});


</script>
<title>Insert title here</title>
</head>
<body>
	<h5>
		쉿! 진짜정답 :
		<%=corrAns %></h5>
	<form>
		동전이 있는곳? (1~3) : 1.<input type=radio name=radioBtn value="1" /> 2.<input
			type=radio name=radioBtn value="2" /> 3.<input type=radio
			name=radioBtn value="3" /> <input type=submit value="확인 고고" /> <input
			type=text name=callCorrAns value=<%=corrAns %>
			style="visibility: hidden" />
	</form>
</body>
</html>
