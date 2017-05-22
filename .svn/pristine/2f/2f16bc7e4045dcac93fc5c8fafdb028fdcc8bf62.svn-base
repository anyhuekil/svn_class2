<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"
    import = "javahomework.a10_parkyunha.com.emp.EmpDAO"
    import = "javahomework.a10_parkyunha.com.emp.EmpDTO, java.util.*"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		EmpDAO dao = new EmpDAO();
		EmpDTO temp_dto = new EmpDTO();
		
		ArrayList<EmpDTO> list = dao.getAll();
		
		String searchWord = (request.getParameter("search") == null) 
				? "" 
				: request.getParameter("search");
		
		String entityName = (request.getParameter("entityName") == null)
				? "empno"
				: request.getParameter("entityName");
		
		System.out.println("[Select]"+entityName+",\t[Search]"+searchWord);

		//if( ename != null && !ename.trim().equals("") ) {
		//	temp_dto.setEname(ename);
		//} else {
		//	temp_dto.setEname("");
		//}
	%>
	<form method="post" align="center">
		<select name="entityName">
		  <option value="empno">EMPLOYEE NO</option>
		  <option value="ename">EMPLOYEE NAME</option>
		  <option value="sal">SAL</option>
		  <option value="job">JOB</option>
		</select>
		<input  type="text" name="search" value="<%=searchWord%>"/>
		<button>Search</button>
	</form>
	<br>
	<table align="center" width="50%" border>
		<tr>
			<th>EMPNO</th>
			<th>ENAME</th>
			<th>JOB</th>
			<th>SAL</th>
		</tr>
		<%for(EmpDTO dto : dao.search(searchWord, entityName)) { %>
		<tr>
			<td><%=dto.getEmpno() %></td>
			<td><%=dto.getEname() %></td>
			<td><%=dto.getJob() %></td>
			<td><%=dto.getSal() %></td>
		</tr>
		<%} %>
	</table>
</body>
</html>
