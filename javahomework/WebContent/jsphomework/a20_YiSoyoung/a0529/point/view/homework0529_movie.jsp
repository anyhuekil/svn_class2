<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:requestEncoding value="UTF-8"/>
<c:set var="conPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#wrap{width:500px; border: 1px solid #187025; padding:20px; margin: 20px auto;}
</style>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script>
	$(document).ready(function() {
		$('button').click(function() {
			if($(this).html()=='영화1'){
				if(${member.point} >= 200 ){
					alert("영화1은 포인트 200점이 차감됩니다");
					location.href='${conPath}/movie?com=cal&calPoint=200';
				}else{
					alert("영화1은 포인트 200점이 필요합니다");
				}
			}else if($(this).html()=='영화2'){
				if(${member.point } >= 300 ){
					alert("영화1은 포인트 300점이 차감됩니다");
					location.href='${conPath}/movie?com=cal&calPoint=300';
				}else{
					alert("영화2은 포인트 300점이 필요합니다");
				}
			}
		});
	});
</script>
</head>
<body>
<div id="wrap">
	<h1>${member.id }님 현재 포인트가 ${member.point }입니다</h1>
	<hr>
	<button>영화1</button>
	<button>영화2</button>
</div>
</body>
</html>
