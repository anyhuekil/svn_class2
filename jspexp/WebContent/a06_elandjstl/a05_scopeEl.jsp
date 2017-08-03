<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="jspexp.z01_database.*,jspexp.z02_vo.*"%>
<% 
request.setCharacterEncoding("UTF-8");
String path=request.getContextPath();
%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>justification</title>
<style type="text/css">
</style>
<script src="<%=path%>/com/jquery-1.10.2.js"></script>
<script type="text/javascript">
			$(document).ready(function(){
				
			})
		</script>
</head>
<body>
	<h1>추억의 가위,바위,보</h1>
	<h2>player1:${team01}</h2>
	<h2>player2:${team02}</h2>
	<!-- session으로 설정된 값은 브라우저를 닫힐 때. -->
	<h1>물품현황</h1>
	<h2>물건명:${prod.name}</h2>
	<h2>가격:${prod.price}</h2>
	<h2>갯수:${prod.cnt}</h2>
</body>
</html>
