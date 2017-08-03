<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
/*

*/

/**/
</style>
<script src="/jspexp/com/jquery-1.10.2.js">
</script>
<script type="text/javascript">
$(document).ready(function(){
	
});
</script>
</head>
<%
	String showMsg="인증된 ip가 아닙니다.";
	if(request.getRemoteAddr().equals("192.168.234.1")){
		showMsg="어서오세요!!";	
	}
%>
<body>
	<center>
		<h2><%=showMsg%></h2>
</body>
</html>
