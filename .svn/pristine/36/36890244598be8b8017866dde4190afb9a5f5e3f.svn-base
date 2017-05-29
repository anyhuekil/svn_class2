<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:requestEncoding value="UTF-8"/>
<c:set var="conPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#wrap{width:500px; border: 1px solid #187025; padding:20px; margin: 20px auto;}
table{width:100%;}
caption{font-size: 1.5em; color:#187025; margin-bottom: 30px; border-bottom: #187025;}
td { padding:10px; text-align: center;}
td:FIRST-CHILD {
	width:100px;
}
input[type=submit] { background-color: #187025; color:white; padding:10px 50px; font-weight:bold; margin: 10px;
	text-align: center;
}
</style>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script>
	$(document).ready(function() {
		
	});
</script>
</head>
<body>
	<div id="wrap">
		<form action="${conPath }/movie" method="post">
			<input type="hidden" name="com" value="recharge">
			<table>
				<caption>로그인</caption>
				<tr><td>아이디</td><td><input type="text" name="id" value="${member.id }" readonly="readonly"></td></tr>
				<tr><td>현 포인트</td><td><input type="text" name="point" value="${member.point }" readonly="readonly"></td></tr>
				<tr><td>충전금액</td><td><input type="number" name="calPoint" min="0"></td></tr>
				<tr><td colspan="2"><input type="submit" value="충전하기"></td></tr>
			</table>
		</form>
	</div>
</body>
</html>
