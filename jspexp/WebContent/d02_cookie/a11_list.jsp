<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import ="jspexp.z01_database.*,jspexp.z02_vo.*, java.util.*"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="UTF-8"/>
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
		<h2>장바구니 목록</h2>
		<table width="400pt" border>
		<tr><td colspan="8"><c:forEach var="c" items="${cookList}" 
					varStatus="sts">
					${c.value}<c:if test="${!sts.last}">,</c:if>
				</c:forEach>
			</td>
		</tr>
		<tr><td>사과</td><td>${appleCnt}</td>
			<td>바나나</td><td>${bananaCnt}</td>
			<td>딸기</td><td>${strawCnt}</td>
			<td>총계</td><td>${appleCnt+bananaCnt+strawCnt}</td>
			</tr>
		</table>
		<a href="${path}/shop">쇼핑 계속</a>
		<a href="${path}/prodList?ctrl=del">장바구니 삭제</a>
	

	</body>
</html>
