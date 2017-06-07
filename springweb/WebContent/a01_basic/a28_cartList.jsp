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
		<h1>현재 장바구니 리스트</h1>
		<c:forEach var="prod" items="${cartList}">
			<h3>${prod.pname}-${prod.price}-${prod.cnt}</h3>
		</c:forEach>
		<a href="${path}/sess_cart01.do">장바구니 담기</a>
	</body>
</html>