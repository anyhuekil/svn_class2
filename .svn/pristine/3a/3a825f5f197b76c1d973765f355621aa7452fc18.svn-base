<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!doctype html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>justification</title>
		<link rel="stylesheet" 
		href="${path}/a00_com/a00_com.css" >		
		<style type="text/css">
		</style>
		<script src="${path}/com/jquery-1.10.2.js"></script>
		<script type="text/javascript">
			$(document).ready(function(){
				$("tr").dblclick(function(){
					var deptno=$(this).children().html();
					$(location).attr("href","${path}/deptDetail_my.do?deptno="+deptno);
				});				
			})
		</script>
	</head>
	<body><center>
		<h2>부서 리스트</h2>
		<table width="50%" border>
			<tr>
				<th>부서번호</th><th>부서명</th><th>부서위치</th>			
			</tr>
		<c:forEach var="dept" items="${deptlist}">
			<tr><td>${dept.deptno}</td>
				<td>${dept.dname}</td>
				<td>${dept.loc}</td></tr>
		</c:forEach>
		</table>

	</body>
</html>