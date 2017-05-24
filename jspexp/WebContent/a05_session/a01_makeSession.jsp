<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- session은 page 지시자에서 옵션을 설정할 수 있는데,
default가 page session="true"이기에 생성할 때, 선언하지 
않을 때가 많다. -->
<% request.setCharacterEncoding("UTF-8");
String path=request.getContextPath();
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
<%
//session 선언하기
//session.setAttribute("key", value객체);
session.setAttribute("customer", "himan");
%>	
	<body>
		<h1>시작 page</h1>
		<h1>저장된 세션:<%=session.getAttribute("customer") %></h1>
		<a href="a02_getSession.jsp">페이지 이동</a>
	</body>
</html>
