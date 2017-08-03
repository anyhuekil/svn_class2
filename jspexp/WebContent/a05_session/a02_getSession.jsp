<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<% request.setCharacterEncoding("UTF-8");
String path=request.getContextPath();
Date time= new Date();
SimpleDateFormat 
	format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
time.setTime(session.getCreationTime());
String creTime=format.format(time); // 생성시간 format 형식 처리.
time.setTime(session.getLastAccessedTime());
String lastTime=format.format(time);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>17.05.</title>
<style type="text/css">
</style>
<script src="<%=path%>/com/jquery-1.10.2.js"></script>
<script type="text/javascript">
			$(document).ready(function(){
				
			})
		</script>
</head>
<body>
	<h1>두번째 페이지</h1>
	<h1>
		저장된 세션:<%=session.getAttribute("customer") %></h1>
	<h1>
		세션ID:<%=session.getId()%></h1>
	<h1>
		세션 생성시간:<%=creTime%></h1>
	<h1>
		브라우저가 마지막으로 세션접근시간:<%=lastTime%></h1>
	<a href="a01_makeSession.jsp">초기 page로 이동(세션생성)</a>
	<br>
	<a href="a03_checkSession.jsp">세션이 과연 살아 있을까?</a>
</body>
</html>
