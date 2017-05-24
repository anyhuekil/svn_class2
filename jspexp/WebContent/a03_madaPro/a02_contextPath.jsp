<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");
String path=request.getContextPath();
%>
<%
/*
request.getContextPath()
: jsp 페이지와 서블릿이 포함되어 있는 웹 어플리케이션 경로 읽을 수 있다.
웹 어플리케이션 경로:매핑된 프로젝트명

*/
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
				//alert("jquery 로딩");
			})
		</script>
	</head>
	<body>
	<h1>웹 애플리케이션 컨텍스트명:<%=path%></h1>
	</body>
</html>
