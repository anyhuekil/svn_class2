<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>justification</title>
<style type="text/css">
</style>
<script src="${path}/com/jquery-1.10.2.js"></script>
<script type="text/javascript">
			$(document).ready(function(){
				$("#btn01").click(function(){
					$("input[name=sel]").val("1");
					$("form").submit();
				});
				$("#btn02").click(function(){
					$("input[name=sel]").val("2");
					$("form").submit();
				});

			})
		</script>
</head>
<body>
	<center>
		<h1>구매 처리</h1>
		<form method="post">
			<input type="hidden" name="sel" value="0" />
			<table border>
				<tr>
					<th>구매물건</th>
					<th>가격</th>
					<th>갯수</th>
				</tr>
				<tr>
					<td>사과</td>
					<td><input type="text" size="3" name="price" /></td>
					<td><input type="text" size="3" name="cnt" /></td>
				</tr>
				<tr>

					<td colspan="3" align="center"><input type="button" id="btn01"
						value="구매 금액 초기화면 호출" /><br> <input type="button" id="btn02"
						value="구매 금액 누적 처리" /><br></td>
				</tr>
			</table>
		</form>
</body>
</html>
