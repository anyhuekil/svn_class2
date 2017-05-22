<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="jspexp.z01_database.A02_StudentDB"
    import="jspexp.z02_vo.Student,java.util.*"
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
tr{text-align:center;}
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
<table align="center" border>
	<tr><th>이름</th>
		<th>학년</th>
		<th>반</th>
		<th>국어</th>
		<th>영어</th>
		<th>수학</th>	
	</tr><!-- 데이터를 loop하면서 처리할 내용 -->
	<%for(Student e:new A02_StudentDB().stuList()){%>
	<tr>
		<td><%=e.getName()%></td>
		<td><%=e.getGrade()%></td>
		<td><%=e.getSect()%></td>
		<td><%=e.getKor()%></td>
		<td><%=e.getEng()%></td>
		<td><%=e.getMath()%></td>
	</tr>
	<%}%>

</table>





</body>
</html>