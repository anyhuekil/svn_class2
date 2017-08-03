<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<fmt:requestEncoding value="UTF-8" />
<c:set var="conPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#wrap {
	width: 500px;
	margin: 10px auto;
}

table {
	width: 100%;
}

table th {
	width: 100px;
	background-color: #43BDE6;
	color: white;
	padding: 10px;
	text-align: center;
}

table td {
	background-color: #AFE0F0;
	padding: 10px;
	text-align: center;
}

table caption {
	padding: 5px 5px 10px;
	font-size: 2em;
	font-weight: bold;
}

input[type=text]:FOCUS, select:focus {
	background-color: lightyellow;
}

input, select {
	margin: 0 10px;
	width: 300px;
}
</style>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script>
	$(document).ready(function() {
		
	});
</script>
</head>
<body>
	<jsp:useBean id="book" class="jspexp.a01_basic.Book" scope="page" />
	<jsp:setProperty name="book" property="*" />
	<c:set var="book" value="<%=book %>" />
	<div id="wrap">
		<table>
			<caption>등록하신 도서는</caption>
			<tr>
				<th>도서명</th>
				<td>${book.bookTitle }</td>
			</tr>
			<tr>
				<th>출판사</th>
				<td>${book.publisher }</td>
			</tr>
			<tr>
				<th>가격</th>
				<td>${book.price }</td>
			</tr>
			<tr>
				<th>출판일</th>
				<td>${book.publishDate }</td>
			</tr>
			<tr>
				<td colspan="2"><button onclick="history.back()">이전페이지</button></td>
			</tr>
		</table>
	</div>
</body>
</html>
