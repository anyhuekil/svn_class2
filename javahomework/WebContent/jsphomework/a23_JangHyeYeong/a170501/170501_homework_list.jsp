<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="/jspexp/com/jquery-1.10.2.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("input[type=button]").on("click",function(){
			// 데이터 validate check
			if(confirm("전송하시겠습니까?"))
				$("form").submit();
		});
});
</script>

<style type="text/css">

</style>
</head>

<body>
<% 
	String []revContents=request.getParameterValues("contents");
%>
<h2>5월에 주요 할 일과들</h2>
<form method="post">
<% int cnt=1;
for(int i=0; i<3; i++){%> 
	<%=cnt++%>. <input type="text" name="contents"/><br>
<%}%>
<input type="button" value="전송" /><br><br>
</form>
<%if(revContents!=null && revContents.length>0){
cnt=1;%>
<table border width="150">
<tr><th>May schedule</th></tr>
	<%for(String content:revContents){%>
		<tr><td><%=cnt++%>. <%=content%></td></tr>
	<%}%>

</table>
<%}%>
</body>
</html>
