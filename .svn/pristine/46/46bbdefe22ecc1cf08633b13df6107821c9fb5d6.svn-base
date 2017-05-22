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
<script src="/jspexp/com/jquery-3.2.1.js">
</script>
<script type="text/javascript">
$(document).ready(function(){


	
	
});
</script>
</head>
<body>
<h1 align="center">스케쥴</h1>
<table border>
<% 
String[] tr00= {"시간","09:30","12:30","16:00"};
String[] tr01= {"계획내용","수업","또수업","자습"};
String[] tr02= {"달성여부","달성","역시달성","수행중"};
String[] tr03= {"기타","시작","졸리다","과제중"};
for(int trCnt=0; trCnt<4; trCnt++){ %>
	<tr>
		<td><%=tr00[trCnt] %></td>
		<td><%=tr01[trCnt] %></td>
		<td><%=tr02[trCnt] %></td>
		<td><%=tr03[trCnt] %></td>
	</tr>
<% }%>

</table>


<table border>
<%String[][] title= { {"시간","10시","12시","5시"},{"계획내용","밥","수업","밥"},
		{"달성여부","먹고","먹고","먹는다"},{"기타","아침밥","점심밥","저녁밥"} };
for(int i=0; i<title[0].length; i++){
%>
	<tr>
	<%for(int j=0; j<title.length; j++){ %>
		<td><%=title[j][i] %></td>
	<% }%>
	</tr>
	
<%} %>

</table>






</body>
</html>
