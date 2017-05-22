<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">
/*

*/


</style>
<script src="/jspexp/com/jquery-3.2.1.js">
</script>
<script type="text/javascript">
$(document).ready(function(){
	$("th").html("5월의 schedule");
	
	
});



</script>
</head>
<%
String []schedules=request.getParameterValues("plan");
%>

<body>
<form method="post">
<h1>5월에 할 계획들</h1>
1.<input type="text" name="plan">
2.<input type="text" name="plan">
3.<input type="text" name="plan">
<input type="button" value="계획등록">

</form>
<table width="300" height="300" border>
<tr><th></th></tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td></tr>

</table>


</body>

<script type="text/javascript">

$("input[type=button]").on("click",function(){
	$("form").submit();


});

<%
if(schedules!=null){
	for(int i=0; i<schedules.length; i++){
%>$("td").eq(<%=i%>).html("<%=schedules[i]%>");
<% }
}%>
</script>





</html>
