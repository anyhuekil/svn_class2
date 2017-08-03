<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="jspexp.z01_database.A01_EmpDB"
	import="jspexp.z02_vo.Emp"%>
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
	$("#uptBtn").click(function(){
		$("#proc").val("upt");
		$("form").submit();
		//?proc=upt&
	});

	// delBtn
	$("#delBtn").click(function(){
		alert("삭제하시겠습니까?");
		$("#proc").val("del"); // <input name="proc"
		// ?proc=del&
	//		 alert("삭제");
		$("form").submit();
		
	});	
	$("#mainBtn").click(function(){
		alert("메인화면 이동!!");
		$(location).attr("href","a03_schEmpList.jsp");
	});
});
</script>
</head>
<%
String empno=(request.getParameter("empno")!=null)?request.getParameter("empno"):"0";
A01_EmpDB db= new A01_EmpDB();	
Emp detail=db.oneEmp(new Integer(empno)); // empno를 DB 상세 검색
%>
<body>
	<center>
		<h1>사원 상세 화면</h1>
		<h2>
			사번:<%=detail.getEmpno() %></h2>
		<form action="a07_empDetailProc.jsp" method="post">
			<!-- empno 화면에 type=text로 보이지 않지만 실제 proc상 넘겨야 할 때,
type='hidden' 활용한다. -->
			<input type="hidden" name="empno" value="<%=detail.getEmpno()%>" />
			<input type="hidden" name="proc" id="proc" />
			<table>
				<tr>
					<td>사원명</td>
					<td><input type="text" name="ename"
						value="<%=detail.getEname()%>" />
					<td>
				</tr>
				<tr>
					<td>직책</td>
					<td><input type="text" name="job" value="<%=detail.getJob()%>" />
					<td>
				</tr>
				<tr>
					<td>관리자번호</td>
					<td><input type="text" name="mgr" value="<%=detail.getMgr()%>" />
					<td>
				</tr>
				<tr>
					<td>연봉</td>
					<td><input type="text" name="sal" value="<%=detail.getSal()%>" />
					<td>
				</tr>
				<tr>
					<td>보너스</td>
					<td><input type="text" name="comm"
						value="<%=detail.getComm()%>" />
					<td>
				</tr>
				<tr>
					<td>부서번호</td>
					<td><input type="text" name="deptno"
						value="<%=detail.getDeptno()%>" />
					<td>
				</tr>
				<tr>
					<td colspan="2" style="text-align: center;"><input
						type="button" id="mainBtn" value="메인페이지 이동" /> <input
						type="button" id="uptBtn" value="수정" /> <input type="button"
						id="delBtn" value="삭제" />
					<td>
				</tr>
			</table>
		</form>
</body>
</html>
