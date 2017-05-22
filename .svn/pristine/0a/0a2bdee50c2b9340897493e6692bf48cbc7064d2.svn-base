<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--1단계 확인 예제 : 동전이 있는 곳은? [  ](1~3)
	2단계 확인 예제 : [1번] [2번] [3번]
	다음 페이지에서 맞추면 정답이라고 틀리면 전 페이지로 sendRedirect 
 -->
<%  boolean isValid = false; String msg;
	String no = request.getParameter("no");
	int randomNo = (int)(Math.random()*3)+1; //1~3중 랜덤 수로 동전 있는 곳 판가름
	if(no!=null){
		if(randomNo == Integer.parseInt(no.substring(0, 1))){
			isValid = true;
		}
	}
	if(!isValid){
		msg = URLEncoder.encode("틀렸어. 다시", "UTF-8");
		response.sendRedirect("homework0509_1.jsp?msg="+msg);
	}
%>
	<h2>찍은 곳은 <%=no %> 이고 랜덤으로 선택된 동전 있는 곳도  <%=randomNo %></h2>
	<h1>잘 맞추셨습니다</h1>
</body>
</html>
