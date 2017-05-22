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
	String title="Daily Schedule!!";
	String data [] = {"시간","계획내용","달성여부","기타",
					 "9:30","수업시작","달성","기분 좋은 시작",
					 "13:20","점심시간메뉴"," ","오늘은?",
					 "16:30","프로젝트"," ","이틀?"};
%>
<body>
<h1 align="center"><%=title%></h1>
<table border align="center">
<%for(int i=0; i<4; i++){ %>
<tr>
<% for(int j=0; j<4; j++){%>
<td><%=data[j+(i*4)]%></td>
<%	
}
%>
</tr>
<%
}
%>
</table>
</body>
</html>
