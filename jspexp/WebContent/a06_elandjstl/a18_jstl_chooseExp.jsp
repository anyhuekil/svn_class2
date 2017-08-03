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
<body>
	<center>
		<h1>Go water Park!!</h1>
		<h2>기본 입장료:40,000원</h2>
		<form method="post">
			<h2>
				나이를 입력하세요!: <input type="text" name="age" value="${param.age}" />
			</h2>
		</form>
		<c:if test="${not empty param.age }">
			<c:choose>
				<c:when test="${param.age<=3 or param.age>=65}">
					<h3>무료입장입니다!</h3>
				</c:when>
				<c:when test="${param.age<=7 }">
					<h3>70%할인, 입장료:${400*(100-70)}</h3>
				</c:when>
				<c:when test="${param.age<=13 }">
					<h3>50%할인, 입장료:${400*(100-50)}</h3>
				</c:when>
				<c:when test="${param.age<=18 }">
					<h3>20%할인, 입장료:${400*(100-20)}</h3>
				</c:when>
				<c:otherwise>
					<h3>할인되지 않습니다! 입장료:${40000}</h3>
				</c:otherwise>

			</c:choose>
		</c:if>
</body>
</html>
