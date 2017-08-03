
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>

<% 
	
	String checkAns = request.getParameter("radioBtn");
	String corrAns = request.getParameter("callCorrAns");
	boolean userAns =false;
	if(checkAns.equals(corrAns)){
		userAns = true;
	}
	
%>

<!DOCTYPE html >
<html>
<head>
<script src="http://code.jquery.com/jquery-3.2.1.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script>

$(document).ready(function(){
	
});


</script>
<title>Insert title here</title>
</head>
<body>
	<h1>
		checkAns :
		<%=checkAns %></h1>
	<h1>
		corrAns :
		<%=corrAns %></h1>

	<%
	if(checkAns != null && checkAns.equals(corrAns)){
		%>
	<h1>
		<%=corrAns %>
		정답!
	</h1>
	<%	
		}
	else{
		response.sendRedirect("a18_HW0509.jsp");
	}  
	%>
	<h1></h1>
</body>
</html>
