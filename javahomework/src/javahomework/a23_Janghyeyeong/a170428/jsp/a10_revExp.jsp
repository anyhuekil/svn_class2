<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="/jspexp/com/jquery-1.10.2.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
});
</script>

<style type="text/css">

</style>
</head>
<% 
	String id=request.getParameter("id");
	String pw=request.getParameter("pw");
%>
<body>
<%if(id.equals("himan")&&pw.equals("7777")){ %>
<h1 align="center"><%=id%>님 환영합니다.</h1>
<%}else if(id.equals("himan")&&!pw.equals("7777")){ %>
<h1 align="center">비밀번호를 확인하세요.</h1>
<%}else{ %>
<h1 align="center"><%=id%>님은 회원이 아닙니다.</h1>
<%} %>
</body>
</html>
