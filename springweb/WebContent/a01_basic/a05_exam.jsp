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
			var msg="${msg}";
			if(msg!=""){
				alert(msg);
			}
			$(document).ready(function(){
			})
		</script>
	</head>
	<body>
		<form action="${path}/examck.do" method="post">
			<input type="text" size="2" name="num01" value="${exam.num01}"/> +
			<input type="text" size="2" name="num02" value="${exam.num02}"/><br>
			정답입력:<input type="text" size="2" name="inputdata" /><br>
			<input type="submit" value="확인"/>
		</form>

	</body>
</html>
