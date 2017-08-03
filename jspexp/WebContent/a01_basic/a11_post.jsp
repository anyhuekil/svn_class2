<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	// 브라우저단에서 pageEncoding="UTF-8"	
	// 요청 decoding 처리를 utf-8
	request.setCharacterEncoding("utf-8");
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
<body>
	<%
String aliasName=request.getParameter("aliasName");
if(aliasName==null){
	aliasName="";
}
%>
	<form method="post">
		별명입력:<input type="text" name="aliasName" /><br> <input
			type="submit" value="입력" /><br>
	</form>
	입력된 별명:<%= aliasName%>
</body>
</html>
