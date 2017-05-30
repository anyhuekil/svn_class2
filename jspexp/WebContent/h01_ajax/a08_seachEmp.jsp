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
				$("input").keyup(function(){
					var enameVal=$("input[name=ename]").val();
					var jobVal=$("input[name=job]").val();
					$("input[name=ename]").val(enameVal.toUpperCase());
					$("input[name=job]").val(jobVal.toUpperCase());
					var sendData="ename="+enameVal+"&job="+jobVal;
					//$("h1").html(sendData);
					$.ajax({
						type:"post",
						url:"a09_empList.jsp",
						dataType:"html",
						data:sendData,
						success:function(empList){
							$("#show").html(empList);
						}
						
					});
					
				});				
			})
		</script>
	</head>
	<body>
	<center>
		<h1>사원 리스트</h1>
		<table>
			<tr><td>사원명</td>
				<td><input name="ename"></td></tr>
			<tr><td>직책</td>
				<td><input name="job"></td></tr>
		</table>
		<div id="show">
		
		</div>
	
	

	</body>
</html>