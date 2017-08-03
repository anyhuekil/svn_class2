<%@page import="jspexp.z03_quebank.QuebankDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="jspexp.z03_quebank.Quebank, java.util.ArrayList"%>
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
table {
	width: 100%;
}

table th {
	background-color: #43BDE6;
	color: white;
	padding: 10px;
	text-align: center;
}

table td {
	padding: 10px 2px;
	text-align: center;
}

table tr {
	background-color: #BFF0FF;
}

table tr:HOVER {
	background-color: #AFE0F0;
}

table caption {
	padding: 5px 5px 10px;
	font-size: 2em;
	font-weight: bold;
}

input[type=text]:FOCUS {
	background-color: lightyellow;
}

input[type=text] {
	margin: 0 10px;
}
</style>
</head>
<body>
	<%	String que = request.getParameter("que");
	if(que==null) que="";
	else que = que.trim();
	String coransw = request.getParameter("coransw");
	if(coransw==null) coransw="";
	else coransw = coransw.trim();
	QuebankDAO dao = new QuebankDAO();
	ArrayList<Quebank> list = dao.search(que, coransw);%>
	<c:set var="list" value="<%=list %>" />
	<c:set var="cnt" value="<%=list.size() %>" />
	<table>
		<tr>
			<th>번호</th>
			<th>문제</th>
			<th>정답</th>
			<th>문제타입</th>
		</tr>
		<c:if test="${not empty list}">
			<c:forEach var="q" items="${list}">
				<tr>
					<td>${q.no }</td>
					<td>${q.que }</td>
					<td>${q.coransw }</td>
					<td>${q.queType }</td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="8">총 데이터 : ${cnt }건</td>
			</tr>
		</c:if>
		<c:if test="${empty list}">
			<tr>
				<td colspan="8">데이터가 없어요</td>
			</tr>
		</c:if>
	</table>
</body>
</html>
