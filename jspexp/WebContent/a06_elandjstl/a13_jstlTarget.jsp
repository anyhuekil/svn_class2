<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="jspexp.z01_database.*,jspexp.z02_vo.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<%
	request.setAttribute("prod1", new Product());
	request.setAttribute("prod2", new Product());
%>
<body>
	<c:set var="cnt" value="${cnt+1}" scope="session" />

	<h2 align="center">거래 내역(횟수:${cnt})</h2>
	<c:set var="prod01" value="${prod1}" />
	<c:set var="prod02" value="${prod2}" />

	<c:set target="${prod01}" property="name" value="${param.name1}" />
	<c:set target="${prod01}" property="price"
		value="${empty param.price1?0:param.price1}" />
	<c:set target="${prod01}" property="cnt"
		value="${empty param.cnt1?0:param.cnt1}" />
	<c:set target="${prod02}" property="name" value="${param.name2}" />
	<c:set target="${prod02}" property="price"
		value="${empty param.price2?0:param.price2}" />
	<c:set target="${prod02}" property="cnt"
		value="${empty param.cnt2?0:param.cnt2}" />

	<form method="post">
		<table align="center">
			<tr>
				<th>물건명</th>
				<th>가격</th>
				<th>주문수량</th>
				<th>계</th>
			</tr>
			<tr>
				<td><input name="name1" value="${prod01.name}" /></td>
				<td><input name="price1" value="${prod01.price}" /></td>
				<td><input name="cnt1" size="1" value="${prod01.cnt}" /></td>
				<td align="center">${prod01.price*prod01.cnt}</td>
			</tr>
			<tr>
				<td><input name="name2" value="${prod02.name}" /></td>
				<td><input name="price2" value="${prod02.price}" /></td>
				<td><input name="cnt2" size="1" value="${prod02.cnt}" /></td>
				<td align="center">${prod02.price*prod02.cnt}</td>
			</tr>
			<tr>
				<td align="center" colspan="4"><input type="submit" value="저장" />
				</td>
			</tr>
		</table>
	</form>

</body>
</html>
