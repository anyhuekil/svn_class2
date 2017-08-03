<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="jspexp.z02_vo.Student, java.util.ArrayList, java.sql.*"%>
<%	request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
table#list {
	width: 700px;
	margin: 0 auto;
	background-color: white;
}

table#list th {
	background-color: #43BDE6;
	color: white;
	padding: 10px;
	text-align: center;
}

table#list td {
	background-color: #AFE0F0;
	padding: 10px;
	text-align: center;
}

table#list caption {
	padding: 5px 5px 10px;
	font-size: 2em;
	font-weight: bold;
}

table#insert {
	width: 500px;
	margin: 20px auto;
	background-color: white;
}

table#insert th {
	background-color: #706207;
	padding: 10px;
	text-align: center;
}

table#insert td {
	background-color: #D9CC77;
	padding: 10px;
	text-align: center;
}

table#insert caption {
	padding: 5px 5px 10px;
	color: #706207;
}

table#insert input[type=submit] {
	padding: 10px;
}

table#search {
	width: 500px;
	margin: 20px auto;
	background-color: white;
}

table#search th {
	background-color: #706207;
	padding: 10px;
	text-align: center;
}

table#search td {
	background-color: #D9CC77;
	padding: 10px;
	text-align: center;
}

table#search caption {
	padding: 5px 5px 10px;
	color: #706207;
}

table#search input[type=button] {
	padding: 10px;
}
</style>
</head>
<body>
	<%
	String searchName = request.getParameter("searchName");
	if(searchName==null) searchName="";
	else searchName = searchName.trim();
	String sql = "SELECT * FROM STUDENT WHERE NAME LIKE '%"+searchName+"%' ";
	String no = request.getParameter("no");
	if(no==null) no="hakno";
	String searchNo = request.getParameter("searchNo");
	if(searchNo==null) searchNo="";
	else searchNo = searchNo.trim();
	if(!searchNo.equals("") && no.equals("hakno")) {
		sql += "AND HAKNO ="+searchNo + " ";
	}else if(!searchNo.equals("") && no.equals("classno")){
		sql += "AND CLASSNO ="+searchNo  + " ";
	}
	String score = request.getParameter("score");
	if(score==null) score = "kor";
	String scoreNo = request.getParameter("scoreNo");
	if(scoreNo==null) scoreNo="";
	else scoreNo = scoreNo.trim();
	if(!scoreNo.equals("") && score.equals("kor")) {
		sql += "AND KOR ="+scoreNo + " ";
	}else if(!searchNo.equals("") && score.equals("eng")){
		sql += "AND ENG ="+scoreNo  + " ";
	}else if(!searchNo.equals("") && score.equals("mat")){
		sql += "AND MAT ="+scoreNo  + " ";
	}
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	ArrayList<Student> studentList = new ArrayList<Student>();
	Student student = null;
	try {
		Class.forName(driver); // 1. 드라이버로드
		conn = DriverManager.getConnection(url,"scott","tiger");//2. DB연결
		stmt = conn.createStatement(); // 3. sql 처리 기본 객체생성
		rs = stmt.executeQuery(sql);// 4. sql문 전송 5. 결과값 받기
		
		while(rs.next()){
			String name = rs.getString("name");
			int hakno = rs.getInt("hakno");
			int classno = rs.getInt("classno");
			int kor = rs.getInt("kor");
			int eng = rs.getInt("eng");
			int mat = rs.getInt("mat");
			student = new Student(name, hakno, classno, kor, eng, mat);
			studentList.add(student);
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
	<form action="">
		<table id="list">
			<caption>학생 명단</caption>
			<tr>
				<td colspan="7">이름 <input type="text" name="searchName"
					value="<%=searchName%>" size="10" /> <select name="no">
						<option value="hakno" <%if(no.equals("hakno")){ %>
							selected="selected" <%} %>>학년</option>
						<option value="classno" <%if(no.equals("classno")){ %>
							selected="selected" <%} %>>반</option>
				</select> <input type="text" name="searchNo" value="<%=searchNo%>" size="2" />
					<select name="score">
						<option value="kor" <%if(score.equals("eng")){ %>
							selected="selected" <%} %>>국어</option>
						<option value="eng" <%if(score.equals("eng")){ %>
							selected="selected" <%} %>>영어</option>
						<option value="mat" <%if(score.equals("mat")){ %>
							selected="selected" <%} %>>수학</option>
				</select> <input type="text" name="scoreNo" value="<%=scoreNo%>" size="2" />
					<input type="submit" value="검색">
				</td>
			</tr>
			<tr>
				<th>이름</th>
				<th>학년</th>
				<th>반</th>
				<th>국어</th>
				<th>영어</th>
				<th>수학</th>
				<th>총점</th>
			</tr>
			<% if(!studentList.isEmpty()){
			for(Student s : studentList){%>
			<tr>
				<td><%=s.getName()%></td>
				<td><%=s.getHakno()%></td>
				<td><%=s.getClassno()%></td>
				<td><%=s.getKor()%></td>
				<td><%=s.getEng()%></td>
				<td><%=s.getMat()%></td>
				<td><%=s.getTot()%></td>
			</tr>
			<% 	}
		}else{%>
			<tr>
				<td colspan="7">데이터가 한개도 없습니다</td>
			</tr>
			<%}%>
		</table>
	</form>
	<form action="a02_studentInsertLogic.jsp">
		<table id="insert">
			<caption>학생 입력</caption>
			<tr>
				<th>이름</th>
				<td><input type="text" name="name" size="30"
					required="required" /></td>
			</tr>
			<tr>
				<th>학년</th>
				<td><input type="text" name="hakno" size="30"
					required="required" /></td>
			</tr>
			<tr>
				<th>반</th>
				<td><input type="text" name="classno" size="30"
					required="required" /></td>
			</tr>
			<tr>
				<th>국어</th>
				<td><input type="text" name="kor" size="30" required="required" /></td>
			</tr>
			<tr>
				<th>영어</th>
				<td><input type="text" name="eng" size="30" required="required" /></td>
			</tr>
			<tr>
				<th>수학</th>
				<td><input type="text" name="mat" size="30" required="required" /></td>
			</tr>
			<tr>
				<td colspan="3"><input type="submit" value="학생추가입력"></td>
			</tr>
		</table>
	</form>
</body>
</html>
