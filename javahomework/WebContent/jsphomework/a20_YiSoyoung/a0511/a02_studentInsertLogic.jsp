<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="jspexp.z02_vo.Student, java.sql.*"%>
<%	request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
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

button {
	background-color: #6A9CAD;
	color: white;
	padding: 5px;
}
</style>
</head>
<body>
	<%
	String name = request.getParameter("name");
	int hakno = Integer.parseInt(request.getParameter("hakno"));
	int classno = Integer.parseInt(request.getParameter("classno"));
	int kor = Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));
	int mat = Integer.parseInt(request.getParameter("mat"));
%>
	<%
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String sql = String.format("INSERT INTO STUDENT VALUES ('%s', %d, %d, %d, %d, %d)",name, hakno, classno, kor, eng, mat);
	Connection conn = null;
	Statement stmt = null;
	try {
		Class.forName(driver); // 1. 드라이버로드
		conn = DriverManager.getConnection(url,"scott","tiger");//2. DB연결
		stmt = conn.createStatement(); // 3. sql 처리 기본 객체생성
		int result = stmt.executeUpdate(sql);
		if(result>0){
			response.sendRedirect("a02_student.jsp");			
		}
		
	} catch (ClassNotFoundException e) {
		System.out.println("드라이버예외"+e.getMessage());
	} catch (SQLException e) {
		System.out.println("DB 연결"+e.getMessage());
	} finally {			// 6. 연결 해제
		try {
			if(stmt!=null) stmt.close();
			if(conn!=null) conn.close();
		} catch (SQLException e) {
			System.out.println("닫기예외:"+e.getMessage());
		}
	}
%>
</body>
</html>
