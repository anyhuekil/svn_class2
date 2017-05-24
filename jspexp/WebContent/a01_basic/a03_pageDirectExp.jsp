<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "jspexp.a01_basic.Woman"  
    %>
   
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
	Woman w = new Woman("신영희","010-8888-7777","163cm");
%> 
<body>
	<h1 align="center">그녀의 이름:<%=w.getName() %></h1>
	<h1 align="center">전화 번호:<%=w.getTelnum() %></h1>
	<h1 align="center">키:<%=w.getHeight()%></h1>
</body>
</html>
