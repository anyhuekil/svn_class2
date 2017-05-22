<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css"></style>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script>
	$(document).ready(function() {
	});
</script>
</head>
<body>
<!-- 확인예제 :  허용된 client(ip)만 접속하게 끔.
	허용된 ip가 아니면 화면에 "인증된 ip가 아닙니다.
	허용된 ip이면             "어서오세요 -->
</body>
<%	String clientIp = "192.168.0.82"; //짝꿍 은혜씨 자리에서만 접근 허용
	if(request.getRemoteAddr().equals(clientIp)){%>
		<h1>인증된 은혜씨 어서오세요</h1>
<%	}else{ %>
		<h1>인증된 ip가 아닙니다</h1>
<%	} %>
</html>
