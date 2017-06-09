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
</head>
<body>
<!-- 초기화면- id, 초기포인트 설정(1000)
	영화1 - 포인트가 차감(200이하 일때, 포인트 200 필요합니다. 충전 page로 이동)
	영화2 - 포인트가 차감(300이하 일때, 포인트 300 필요합니다. 충전 page로 이동)
	포인트 충전 - 포인트 2000 충전
-->
	<div id="wrap">
		<form action="${conPath }/movie" method="post">
			<input type="hidden" name="com" value="login">
			<table>
				<caption>로그인</caption>
				<tr><td>아이디</td><td><input type="text" name="id"></td></tr>
				<tr><td>비밀번호</td><td><input type="password" name="pw"></td></tr>
				<tr><td colspan="2"><input type="submit" value="로그인"></td></tr>
			</table>
		</form>
	</div>
</body>
</html>
