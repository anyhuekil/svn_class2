<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="jspexp.z01_database.A01_EmpDB"
    import="jspexp.z02_vo.Emp"
    %>
<% request.setCharacterEncoding("UTF-8");
A01_EmpDB dao = new A01_EmpDB();
/*요청값들 Emp에 할당하기..*/
String ename=(request.getParameter("ename")!=null)?request.getParameter("ename"):"";
String job=(request.getParameter("job")!=null)?request.getParameter("job"):"";
String mgr=(request.getParameter("mgr")!=null)?request.getParameter("mgr"):"0";
String sal=(request.getParameter("sal")!=null)?request.getParameter("sal"):"0";
String comm=(request.getParameter("comm")!=null)?request.getParameter("comm"):"0";
String deptno=(request.getParameter("ename")!=null)?request.getParameter("deptno"):"0";
Emp dto = new Emp();
dto.setEname(ename);
dto.setJob(job);
dto.setMgr( new Integer(mgr) ); // 숫자형 문자열을 숫자 Box처리로
dto.setSal(new Double(sal));
dto.setComm(new Double(comm));
dto.setDeptno(new Integer(deptno));
dao.insertEmp(dto); // 등록 처리..




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
alert("등록 완료!!");
$(location).attr("href","a03_schEmpList.jsp");
$(document).ready(function(){
	
});
</script>
</head>
<body>
<%
//response.sendRedirect("a03_schEmpList.jsp"); // 초기 조회 page 이동
%>
<h1 align="center">등록완료!!</h1>
</body>
</html>
