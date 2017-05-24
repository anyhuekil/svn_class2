<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="jspexp.z01_dao.EmpDAO, jspexp.z02_dto.Emp, java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%	request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#wrap { width:700px; margin: 0 auto; background-color: white; text-align: center;}
form { width:570px; margin:10px auto;}
table#list {width:100%;}
table#list th { background-color: #43BDE6; color:white; padding: 10px; text-align: center;}
table#list td { padding: 10px 2px; text-align: center; }
table#list tr{background-color: #BFF0FF;}
table#list tr:HOVER {background-color: #AFE0F0;}
table#list caption{padding: 5px 5px 10px; font-size: 2em; font-weight: bold;}
input[type=text]:FOCUS { background-color: lightyellow;}
input[type=text] { margin: 0 10px;}
</style>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script>
	$(document).ready(function() {
		$('tr').click(function() {
			$(location).attr("href","a04_empDetail.jsp?empno="+$(this).children(0).html());
		});
	});
</script>
</head>
<body>
<%--
2단계 : EmpDAO.java를 활용해서 화면에 list처리
	 이 름 [   ] 직 책 [  ]
	 사번 이름 직책 관리자 급여 부서
 --%>
<%	EmpDAO dao = new EmpDAO();
	String searchName = request.getParameter("name");
	if(searchName==null) searchName="";
	else searchName = searchName.trim();
	String searchJob = request.getParameter("job");
	if(searchJob==null) searchJob = "";
	else searchJob = searchJob.trim();
	Emp sch = new Emp();
	sch.setEname(searchName);
	sch.setJob(searchJob);
	ArrayList<Emp> empList = dao.searchPrepared(sch);
%>
<div id="wrap">
	<form method="post">
	이름 <input type="text" name="name" value="<%=searchName%>"/>
	직책 <input type="text" name="job" value="<%=searchJob%>"/>
	<input type="submit" value="검색" />
	</form>

	<table id="list">
	<tr><th>사원번호</th>
		<th>사원명</th>
		<th>직책</th>
		<th>관리자번호</th>
		<th>입사일</th>
		<th>연봉</th>	
		<th>보너스</th>	
		<th>부서번호</th>	
	</tr><!-- 데이터를 loop하면서 처리할 내용 -->
	<c:set var="empList" value="<%=empList %>"/>
	<c:if test="${not empty empList}">
		<c:forEach var="emp" items="${empList}">
		<tr>
			<td>${emp.empno }</td>
			<td>${emp.ename }</td>
			<td>${emp.job }</td>
			<td>${emp.mgr }</td>
			<td><fmt:formatDate value="${emp.hiredate }" type="date" pattern="yy/MM/dd(E)"/> </td>
			<td><fmt:formatNumber value="${emp.sal }" pattern="#,###"/> </td>
			<td>${emp.comm }</td>
			<td>${emp.deptno }</td>
		</tr>
		</c:forEach>
	</c:if>
	<c:if test="${empty empList}">
		<tr><td colspan="8">데이터가 없어요</td></tr>
	</c:if>
</table>
</div>
</body>
</html>
