<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="/jsp_exp/js/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){

	});
</script>
<style type="text/css">
</style>
</head>
<body>
	<%	String ranNo = (int)(Math.random()*3+1)+"번"; 
	boolean isValid = false;
	String no = request.getParameter("no");
	if(no!=null){
		if( ranNo.equals(no) ){
			isValid = true;
		}else{
			response.sendRedirect("a03_homework_0509.jsp");
		}
	}
%>
	<h2>
		선택한 박스:
		<%=no %></h2>
	<h2>
		동전이 있는 박스:
		<%=ranNo %></h2>
	<h2>정답이다.</h2>
</body>
</html>
