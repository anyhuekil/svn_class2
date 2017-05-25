<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import ="jspexp.z01_database.*,jspexp.z02_vo.*, java.util.*"
	isErrorPage="true"
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
		<h1>에러발생 했습니다(web.xml 설정)</h1>
		<h2>연락바랍니다.</h2>
		<h3>에러 타입: <%=exception.getClass().getName()%></h3>
		<h3>에러 메시지: <%=exception.getMessage()%></h3>
<!-- 
	에러 페이지 길이가 513바이트 보다 작으면
	인터넷 익스플로러는 에러페이즈를 출력하지 않는다..!!!
	에러 페이지 길이가 513바이트 보다 작으면
	인터넷 익스플로러는 에러페이즈를 출력하지 않는다..!!!
	에러 페이지 길이가 513바이트 보다 작으면
	인터넷 익스플로러는 에러페이즈를 출력하지 않는다..!!!
	에러 페이지 길이가 513바이트 보다 작으면
	인터넷 익스플로러는 에러페이즈를 출력하지 않는다..!!!
	에러 페이지 길이가 513바이트 보다 작으면
	인터넷 익스플로러는 에러페이즈를 출력하지 않는다..!!!
	에러 페이지 길이가 513바이트 보다 작으면
	인터넷 익스플로러는 에러페이즈를 출력하지 않는다..!!!
	에러 페이지 길이가 513바이트 보다 작으면
	인터넷 익스플로러는 에러페이즈를 출력하지 않는다..!!!
	에러 페이지 길이가 513바이트 보다 작으면
	인터넷 익스플로러는 에러페이즈를 출력하지 않는다..!!!
	에러 페이지 길이가 513바이트 보다 작으면
	인터넷 익스플로러는 에러페이즈를 출력하지 않는다..!!!
	에러 페이지 길이가 513바이트 보다 작으면
	인터넷 익스플로러는 에러페이즈를 출력하지 않는다..!!!
	에러 페이지 길이가 513바이트 보다 작으면
	인터넷 익스플로러는 에러페이즈를 출력하지 않는다..!!!

 -->		

	</body>
</html>