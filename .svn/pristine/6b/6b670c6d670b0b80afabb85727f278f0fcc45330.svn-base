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
	<body>
		<h1>구매 금액 누적 확인</h1>
		<form method="post">
			물건 가격:<input type="text" name="price" value="${prodmd.price}"/><br>
			물건 갯수:<input type="text" name="cnt" value="${prodmd.cnt}"/><br>
			<input type="submit" value="구매완료!"/><br>
			현재 누적 금액 :<input type="text" name="tot"  value="${prodmd.tot}"/>
		
		</form>
		<select name="deptno">
				<c:forEach var="code" items="${deptList}">
					<option value="${code.key}">${code.value}</option>
				
				</c:forEach>
			   </select>
	
	</body>
</html>