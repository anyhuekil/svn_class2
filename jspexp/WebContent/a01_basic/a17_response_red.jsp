<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>
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
<body>
	<%
String id= request.getParameter("id");
String pwd= request.getParameter("pwd");
boolean isValid=false;
if( id!=null && id.equals("himan") ){
	if( pwd!=null && pwd.equals("7777") ){
		isValid=true;
	}
}
if( !isValid ){
	// 해당 page로 이동
	response.sendRedirect("a16_response.jsp");
}

%>
	<h2><%=id%>님 환영합니다!!
	</h2>
</body>
</html>
