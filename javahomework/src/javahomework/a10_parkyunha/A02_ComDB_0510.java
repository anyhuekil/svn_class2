package javahomework.a10_parkyunha;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class A02_ComDB_0510 {

	/*
	 * DB접속 처리 모듈 선언 및 처리 완료
	 * */
	private Connection conn;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public void setConn() throws ClassNotFoundException, SQLException {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String connInfo="jdbc:oracle:thin:@localhost:1521:xe";
		conn = DriverManager.getConnection(connInfo, "scott", "tiger");
	}
	
	/*
	 * DB
	 * Name	Year	Class	Korean	English	Math
	 * aa	1		3		90		90		100
	 * bb	2		2		80		80		52
	 * 
	 * 
	 * CREATE TABLE STUDENT90
		(
		   SID            VARCHAR2 (10),
		   SNAME          VARCHAR2 (10),
		   SCOREKOREAN    NUMBER (*, 0),
		   SCOREENGLISH   NUMBER (*, 0),
		   SCOREMATH      NUMBER (*, 0)
		)
		NOCACHE
		LOGGING;
	 * 
	 * */
	public void list(ArrayList<Student> list) throws SQLException {
		String query = "SELECT * from STUDENT90";
		stmt = conn.createStatement();
		rs = stmt.executeQuery(query);
		Student st = null;
		
		while(rs.next()) {
			st = new Student();
			st.setsName(rs.getString("SNAME"));
			st.setScoreKorean(rs.getInt("SCOREKOREAN"));
			st.setScoreEnglish(rs.getInt("SCOREENGLISH"));
			st.setScoreMath(rs.getInt("SCOREMATH"));
			
			list.add(st);
		}
		
		// 연결 해제
		if(rs != null) rs.close();
		if(stmt != null) stmt.close();
		if(conn != null) conn.close();
		
	}
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		A02_ComDB_0510 db = new A02_ComDB_0510();
		ArrayList<Student> studentsList = new ArrayList<Student>();
		
		try {
			db.setConn();
			System.out.println("[+]Connection Estabilshed");
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("[-]Connection Failed");
		}
	
		try {
			db.list(studentsList);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		// 결과 출력
		for(Student st : studentsList) {
			System.out.println(st.getsName()
					+", "+st.getScoreEnglish()
					+", "+st.getScoreKorean()
					+", "+st.getScoreMath());
		}
	}
	
}

class Student {
	private String sName;
	private String sClass;
	private int scoreKorean;
	private int scoreEnglish;
	private int scoreMath;
	public String getsName() {
		return sName;
	}
	public void setsName(String sName) {
		this.sName = sName;
	}
	public String getsClass() {
		return sClass;
	}
	public void setsClass(String sClass) {
		this.sClass = sClass;
	}
	public int getScoreKorean() {
		return scoreKorean;
	}
	public void setScoreKorean(int scoreKorean) {
		this.scoreKorean = scoreKorean;
	}
	public int getScoreEnglish() {
		return scoreEnglish;
	}
	public void setScoreEnglish(int scoreEnglish) {
		this.scoreEnglish = scoreEnglish;
	}
	public int getScoreMath() {
		return scoreMath;
	}
	public void setScoreMath(int scoreMath) {
		this.scoreMath = scoreMath;
	}
	
	
	
}
