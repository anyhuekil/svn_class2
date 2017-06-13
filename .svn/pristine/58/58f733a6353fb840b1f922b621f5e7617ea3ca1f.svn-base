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
		    var deptnos=["${emp.deptnos[0]}","${emp.deptnos[1]}",
		    	"${emp.deptnos[2]}","${emp.deptnos[3]}"];
			$(document).ready(function(){
				$("input[name=deptnos]").each(function(idx,item){
					for(var index=0;index<deptnos.length;index++){
						if($(this).val()==deptnos[index]){
							$(this).attr("checked",true);	
						}						
					}
				});
			})
			
		</script>
	</head>
	<body><center>
		<h2>emp list</h2>
		<form method="post">
		이름:<input type="text" name="ename" value="${emp.ename}"/>
		직책:<input type="text" name="job" value="${emp.job}" /><br>
		부서:<input type="checkbox" name="deptnos" value="10" />10
		<input type="checkbox" name="deptnos" value="20"/>20
		<input type="checkbox" name="deptnos" value="30"/>30
		<input type="checkbox" name="deptnos" value="40"/>40<br>
		<input type="submit" value="검색"/><br>
		</form>
		<table width="70%" border>
			<tr><th>사번</th><th>이름</th><th>직책</th><th>입사일</th><th>급여</th>
				<th>부서번호</th>
			</tr>
			<c:forEach var="emp" items="${emplist}">			
				<tr><td align="center">${emp.empno}</td><td>${emp.ename}</td>
				<td>${emp.job}</td>
				<td><fmt:formatDate value="${emp.hiredate}"/></td>
				<td align="right"><fmt:formatNumber value="${emp.sal}"/></td>
				<td>${emp.deptno}</td>
				</tr>
			</c:forEach>		
		</table>



		
	</body>
</html>