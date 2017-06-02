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
				var deptno="${sch.deptno}";
				if(deptno!=""){
					$("select[name=deptno]").val(deptno);
				}
			})
		</script>
	</head>
	<body><center>
		<h1>사원 검색</h1>
		<form method="post">
		사원명:<input type="text" name="ename" value="${sch.ename}"/><br>
		직책:<input type="text" name="job" value="${sch.job}"/><br>
		부서명:<select name="deptno">
				<c:forEach var="code" items="${deptList}">
					<option value="${code.key}">${code.value}</option>
				
				</c:forEach>
			   </select>
		<input type="submit" value="검색"/><br>
		</form>
		<table border>
			<tr><th>사원번호
			</th><th>이름</th><th>직책</th><th>급여</th></tr>
			<c:forEach var = "emp" items="${list}">
				<tr><td>${emp.empno}</td><td>${emp.ename}</td>
					<td>${emp.job}</td><td>${emp.sal}</td></tr>
			</c:forEach>
		
		</table>		
	</body>
</html>



