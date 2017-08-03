<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
/*

*/
td {
	width: 25%;
	text-align: center;
}

select {
	width: 100%;
}

input[name=sal], input[name=comm] {
	text-align: right;
}
/**/
</style>
<script src="/jspexp/com/jquery-1.10.2.js">
</script>
<script type="text/javascript">
$(document).ready(function(){
	$("#regBtn").click(function(){
		if($("input[name=ename]").val()==""){
			alert("사원명 값이 비어있습니다!");
			$("input[name=ename]").focus();
			return;
		}
		if($("input[name=sal]").val()==""){
			alert("연봉 값이 비어있습니다!");
			$("input[name=sal]").focus();
			return;
		}	
		if($("input[name=comm]").val()==""){
			alert("보너스 값이 비어있습니다!");
			$("input[name=comm]").focus();
			return;
		}	
		$("form").submit();
		
	});
});
</script>
</head>
<body>
	<h3 align="center">사원 등록</h3>
	<form method="post" action="a05_insertProc.jsp">
		<table align="center" border>
			<tr>
				<td>사원명</td>
				<td><input type="text" name="ename" /></td>
				<td>직책</td>
				<td><select name="job">
						<option>MANAGER</option>
						<option>CLERK</option>
						<option>ANALYST</option>
						<option>SALESMAN</option>
						<option>PRESIDENT</option>
						<option>연예인</option>
						<option>SUPERMAN</option>
				</select></td>
			</tr>
			<!-- 7902 FORD 7698 BLAKE 7839 KING 7566 JONES 7788 SCOTT 7782 CLARK  -->
			<tr>
				<td>관리자번호</td>
				<td><select name="mgr">
						<option value="7839">KING</option>
						<option value="7902">FORD</option>
						<option value="7698">BLAKE</option>
						<option value="7566">JONES</option>
						<option value="7788">SCOTT</option>
						<option value="7782">CLARK</option>
				</select></td>
				<td>연봉</td>
				<td><input type="text" name="sal" /></td>
			</tr>
			<tr>
				<td>보너스</td>
				<td><input type="text" name="comm" /></td>
				<td>부서</td>
				<td><select name="deptno">
						<option value="10">ACCOUNTING</option>
						<option value="20">RESEARCH</option>
						<option value="30">SALES</option>
						<option value="40">OPERATIONS</option>
				</select> <!-- ACCOUNTING RESEARCH SALES OPERATIONS --></td>
			</tr>
			<tr>
				<td colspan="4" style="text-align: center;"><input
					type="button" value="등록" id="regBtn" /></td>
			</tr>
		</table>
	</form>
</body>
</html>
