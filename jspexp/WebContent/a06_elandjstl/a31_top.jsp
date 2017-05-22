<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import ="jspexp.z01_database.*,jspexp.z02_vo.*, java.util.*"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<% 
request.setCharacterEncoding("UTF-8");
String path=request.getContextPath();
// 내부 변수
request.setAttribute("name","신길동");
pageContext.setAttribute("namePage", "안녕맨");
%>
<!doctype html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>justification</title>
		<style type="text/css">
		</style>
		<script src="<%=path%>/com/jquery-1.10.2.js"></script>
		<script type="text/javascript">
			$(document).ready(function(){
				
			})
		</script>
	</head>
	<body>
		<h2>상단메뉴</h2>
		<h3>${name}님 환영합니다!!</h3>
		<h3>${namePage}님 환영합니다!!</h3>
		<h4>${param.num01}+${param.num02}
			=${param.num01+param.num02}</h4>
	</body>
</html>