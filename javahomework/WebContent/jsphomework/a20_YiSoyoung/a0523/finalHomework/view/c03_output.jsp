<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%	request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
body { background-color: #D6F2BD; font-size: 1.2em; }
#wrap{width: 500px; margin: 20px auto;}
table { background-color: #6FAD37; width: 100%;}
td { background-color: #BAD6A1;text-align: center; padding: 10px;}
caption {font-size: 1.2em; }
</style>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script>
	$(document).ready(function() {
		
	});
</script>
</head>
<body>
<div id="wrap">
	<table>
		<caption>VIEW 출력 페이지</caption>
		<tr><td>이름</td><td>${product.name }</td></tr>
		<tr><td>가격</td><td>${product.price }</td></tr>
		<tr><td>갯수</td><td>${product.cnt }</td></tr>
		<tr><td colspan="2"><button onclick="history.back()">이전페이지</button></td></tr>
	</table>
</div>
</body>
</html>
