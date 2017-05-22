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
// getHeaderNames() : 헤드의 모든 이름값을 가져옮
// getHeader("헤드 이름값") : 헤드이름값에 해당하는 values값을
//   가져옮
	Enumeration headerParam = request.getHeaderNames();
	String headerName="";
	String headerValue="";
	while(headerParam.hasMoreElements()){
		headerName=(String)headerParam.nextElement();
		headerValue=request.getHeader(headerName);
%>
		<h2><%=headerName %>:<%=headerValue%></h2>

<%}%>

</body>
</html>