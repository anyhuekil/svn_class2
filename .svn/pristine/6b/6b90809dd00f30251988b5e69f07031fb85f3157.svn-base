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
			td{text-align:center;}
		</style>
		<script src="${path}/com/jquery-1.10.2.js"></script>
		<script type="text/javascript">
			$(document).ready(function(){
				$("#goList").click(function(){
					$(location).attr("href","${path}/emplist_my.do")
					
				});
			})
		</script>
	</head>
	<body><center>
	<h2>EMP 상세</h2><!-- springweb/emp_my.do?empno=7369 -->
	<form action="${path}/emp_upt.do" method="post">
	<table width="70%" border>
	
		<tr><td width="50%">사원번호</td><td>
				<input type="hidden" name="empno" value="${emp.empno}"/>
				${emp.empno}</td></tr>
		<tr><td >사원명</td>
			<td>
				<input type="text" name="ename" value="${emp.ename}"/>
			</td></tr>
		<tr><td >관리자번호</td>
			<td><input type="text" name="mgr" value="${emp.mgr}"/>
			</td></tr>
		<tr><td >직책</td><td>
				<input type="text" name="job" value="${emp.job}"/>
			</td></tr>
		<tr><td >입사일</td>
			<td>
				<fmt:formatDate type="both" value="${emp.hiredate}"/>
			</td>
			</tr>
		<tr><td >급여</td>
			<td><input type="text" name="sal" value="${emp.sal}"/>
			</td></tr>
		<tr><td >보너스</td><td>
				<input type="text" name="comm" value="${emp.comm}"/>
			</td></tr>
		<tr><td >부서번호</td><td>
				<input type="text" name="deptno" value="${emp.deptno}"/>
		</td></tr>
		<tr><td colspan="2" ><input type="submit" value="수정"/>
			<input type="button" id="goList" value="메인화면"/>
		</td></tr>
	</table>
	</form>
	</body>
	
</html>