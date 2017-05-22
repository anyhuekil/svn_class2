<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
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
	Map map01=request.getParameterMap();
	String[] nameParam=(String[])map01.get("name01");
	
%>
<form method="post">
	이름:<input type="text" name="name01"/><br>
	<input type="submit" />
</form>
<%if(nameParam!=null){%>
   입력한 이름:<%=nameParam[0]%>
<%}%>	

</body>
</html>