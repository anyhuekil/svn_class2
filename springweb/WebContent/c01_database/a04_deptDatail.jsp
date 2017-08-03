<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>justification</title>
<link rel="stylesheet" href="${path}/a00_com/a00_com.css">
<style type="text/css">
</style>
<script src="${path}/com/jquery-1.10.2.js"></script>
<script type="text/javascript">
			$(document).ready(function(){
				$("#goList").click(function(){
					$(location).attr("href","${path}/deptlist_my.do");
				});
			})
		</script>
</head>
<body>
	<center>
		<!-- http://localhost:6080/springweb/deptDetail_my.do?deptno=10 -->
		<h2>부서 상세 정보</h2>
		<form method="post" action="${path}/deptUpdate.do">
			<table width="40%">
				<tr>
					<td class="tit01">부서번호</td>
					<td><input type="hidden" name="deptno" value="${dept.deptno}" />
						${dept.deptno}</td>
				</tr>
				<tr>
					<td class="tit01">부서명</td>
					<td><input type="text" name="dname" value="${dept.dname}" /></td>
				</tr>
				<tr>
					<td class="tit01">부서위치</td>
					<td><input type="text" name="loc" value="${dept.loc}" /></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit" value="수정" />
						<input type="button" id="goList" value="리스트 이동" /></td>
				</tr>
			</table>
		</form>
</body>
</html>
