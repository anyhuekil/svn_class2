<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%	request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#result_wrap {
	width: 430px;
	margin: 20px auto;
	border: 1px solid #2d1152;
	padding: 20px;
	text-align: center;
}
</style>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script>
	$(document).ready(function() {
		var emp=<%=session.getAttribute("emp")%>;
		if(emp==null){
			alert("존재하지 않는 사번과 이름입니다. 확인하세요");
			location.href="<%=request.getContextPath() %>/vision";
		}
	});
</script>
</head>
<body>
	<div id="result_wrap">
		<h2>${emp.ename }(${emp.empno })님vision 솔루션</h2>
		<h2>인트라넷에 오신 것을 환영합니다</h2>
	</div>
</body>
</html>
