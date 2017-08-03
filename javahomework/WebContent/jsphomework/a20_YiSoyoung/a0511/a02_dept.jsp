<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="jspexp.z02_vo.Dept, java.util.ArrayList, java.sql.*"%>
<%	request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
table {
	width: 700px;
	margin: 0 auto;
	background-color: white;
}

th {
	background-color: #43BDE6;
	color: white;
	padding: 10px;
	text-align: center;
}

td {
	background-color: #AFE0F0;
	padding: 10px;
	text-align: center;
}

caption {
	padding: 5px 5px 10px;
	font-size: 2em;
	font-weight: bold;
}
</style>
</head>
<body>
	<%
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String sql = "SELECT * FROM DEPT";
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	ArrayList<Dept> deptList = new ArrayList<Dept>();
	Dept dept = null;
	try {
		Class.forName(driver); // 1. 드라이버로드
		conn = DriverManager.getConnection(url,"scott","tiger");//2. DB연결
		stmt = conn.createStatement(); // 3. sql 처리 기본 객체생성
		rs = stmt.executeQuery(sql);// 4. sql문 전송 5. 결과값 받기
		
		while(rs.next()){
			dept = new Dept();
			dept.setDeptno(rs.getInt("deptno"));
			dept.setDname(rs.getString("dname"));
			dept.setLoc(rs.getString("loc"));
			deptList.add(dept);
		}
	} catch (ClassNotFoundException e) {
		System.out.println("드라이버예외"+e.getMessage());
	} catch (SQLException e) {
		System.out.println("DB 연결"+e.getMessage());
	} finally {			// 6. 연결 해제
		try {
			if(rs!=null) rs.close();
			if(stmt!=null) stmt.close();
			if(conn!=null) conn.close();
		} catch (SQLException e) {
			System.out.println("닫기예외:"+e.getMessage());
		}
	}
%>
	<table>
		<caption>부서 명단</caption>
		<tr>
			<th>부서번호</th>
			<th>부서이름</th>
			<th>위치</th>
		</tr>
		<%if(!deptList.isEmpty()){
			for(Dept d : deptList){%>
		<tr>
			<td><%=d.getDeptno()%></td>
			<td><%=d.getDname()%></td>
			<td><%=d.getLoc()%></td>
		</tr>
		<% 	}
		}else{%>
		<tr>
			<td colspan="3">데이터가 한개도 없습니다</td>
		</tr>
		<%}%>
	</table>
</body>
</html>
