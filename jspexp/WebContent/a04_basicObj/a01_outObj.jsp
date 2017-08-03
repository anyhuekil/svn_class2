<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");
String path=request.getContextPath();%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>17.05.</title>
<style type="text/css">
</style>
<script src="/<%=path%>/com/jquery-1.10.2.js"></script>
<script type="text/javascript">
			$(document).ready(function(){
				
			})
		</script>
</head>
<body>
	<!-- 
out 객체 : 화면에 출력처리하는 객체
.println("출력할 내용과 줄 바꿈");
javax.servlet.jsp.JspWriter out
out은 buffer관게
내부적으로는 default 버퍼를 16킬로바이트 사용하고 있다.
getBufferSize():버퍼의 설정된 크기
getRemaining() : 버퍼의 남은 크기
clear() : 버퍼의 내용을 비운다.- 플러시되어 있는 상태이면 예외발생
clearFlush() : 버퍼의 내용 비운다. 플러시 상관없이 정상처리
flush() : 버퍼를 플러시 한다.
isAutoFlush() : 자동플러시 여부..
 -->
	<%
 		out.println("<h1>안녕하세요~~!!<h1>");
 		%>
	<h1>반갑습니다.</h1>
	<%
 		out.println("<h2 align='center'>안녕히 가세요!!</h2>");
 		out.println("<h3>버퍼크기:"+out.getBufferSize()+"</h3>");
 		out.println("<h3>버퍼남은크기:"+out.getRemaining()+"</h3>");
 		out.println("<h3>자동 플러시 여부:"+out.isAutoFlush()+"</h3>");
 		%>
</body>
</html>
