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
				$("#btn500").click(function(){
					$("input[name=point]").val("500");
					$("form").submit();
				});
				$("#btn1000").click(function(){
					$("input[name=point]").val("1000");
					$("form").submit();
				});		
				$("#btnLogout").click(function(){
					$("input[name=point]").val("0");
					$("input[name=name]").val("");
					$("form").submit();
				});						
			})
		</script>
	</head>
	<body>
	<center>
	<form method="post">
	<input type="hidden" name="point" />
	<input type="hidden" name="name" value="${mvpoint.name}"/>
	
	</form>
	<h2>${mvpoint.name}님 현재 point는 ${mvpoint.tot}입니다</h2>
	<input type="button" id="btn500" value="구매(-500)"/><br>
	<input type="button" id="btn1000" value="구매(-1000)"/><br>
	<input type="button" id="btnLogout" value="로그아웃"/>

	</body>
</html>