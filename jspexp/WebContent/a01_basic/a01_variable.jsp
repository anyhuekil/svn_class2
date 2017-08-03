<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
/*

*/

/**/
</style>
<script src="/jspexp/com/jquery-1.10.2.js">
</script>
<script type="text/javascript">
$(document).ready(function(){
	
});
</script>
</head>
<%  // 스크립트릿
	int num01=5;
	int num02=10;
	int sum = num01+num02;
%>
<body>
	<h1 align="center"><%=num01%>
		+
		<%=num02%>
		=
		<%=sum%></h1>
	<%
  for(int cnt=0;cnt<=100;cnt++){
%>
	<!-- 화면.. -->
	<h1 align="center">Ich liebe dich!!♥</h1>
	<%	
  } 
%>

</body>
</html>
