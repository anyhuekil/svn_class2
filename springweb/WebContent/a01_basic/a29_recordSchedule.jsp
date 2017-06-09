<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
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
				
			})
		</script>
	</head>
	<body><center>
	<h2>가장 중요한 일정 등록</h2>
	<form method="post">
		일시:<input type="text" name="time"/><br>
		내용:<input type="text" name="content"/><br>
		<input type="submit" value="등록"/>
	</form>
	<h2>현재 중요 일정 내용</h2>
	<h3>${schedule.time}:${schedule.content}</h3>
	<a href="${path}/a01_basic/a30_recordSchedule.jsp">이동!!</a>
	</body>
</html>
