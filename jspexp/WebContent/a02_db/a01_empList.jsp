<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="jspexp.z01_database.A01_EmpDB"
    import="jspexp.z02_vo.Emp,java.util.*"
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
<%
A01_EmpDB db= new A01_EmpDB();
%>
<body>
<table align="center" border>
	<tr><th>사원번호</th>
		<th>사원명</th>
		<th>직책</th>
		<th>관리자번호</th>
		<th>입사일</th>
		<th>연봉</th>	
		<th>보너스</th>	
		<th>부서번호</th>	
	</tr><!-- 데이터를 loop하면서 처리할 내용 -->
	<%for(Emp e:db.empList()){%>
	<tr>
		<td><%=e.getEmpno()%></td>
		<td><%=e.getEname()%></td>
		<td><%=e.getJob()%></td>
		<td><%=e.getMgr()%></td>
		<td><%=e.getHiredate()%></td>
		<td><%=e.getSal()%></td>
		<td><%=e.getComm()%></td>
		<td><%=e.getDeptno()%></td>
	</tr>
	<%}%>

</table>





</body>
</html>
