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
	<body>
<!-- 
	출력처리 c:out
	 일반데이터를 출력할 때, 처리하는데, tag의 내용을 표함해서,
	 특수문자에 대한 내용을 처리하고자 할 때 활용된다.
	 << 안녕하세요 >>

 -->
 	<h1><<안녕하세요>></h1>
 	<h1><%="<h1>"%>태그는  타이틀을 설정할  때 활용됩니다.</h1>
 	<h1><c:out value="<h1>" escapeXml="true"/>:
 		태그는  타이틀을 설정할  때 활용됩니다.</h1>
	</body>
</html>



