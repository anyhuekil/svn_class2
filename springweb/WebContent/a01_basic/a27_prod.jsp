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
		<h2>장바구니에 담을 물건</h2>
		<form method="post">
			물건명:<input type="text" name="pname"/><br>
			가격:<input type="text" name="price"/><br>
			 갯수:<input type="text" name="cnt"/><br>
			 <input type="submit" value="장바구니담기"/><br>
		</form>
	</body>
</html>
