package javaexp.a00_basic;

import java.sql.*; // java.sql package 하위에 있는 내용은 모두 쓰겠습니다.

public class A12_Database {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*	DB와 java의 만남에 필요한 요소들..
 * 1) 연결하는 다리!!  
 * 		- 메모리 (driver) jdbc
 *      - Class.forName("드라이버")
 * 2) 대상 DB server객체 연결
 * 		- ip, port, sid, 계정, 비밀번호.
 *      - Connection 객체..
 *      - DriverManager.getConnection("ip","id","password")
 * 3) sql을 실행..server에 전달..
 * 		- 연결객체.createStatement()
 *      - Statement의 executeQuery("select * from emp");
 * 4) select 일 경우, 결과값을 받아야..
 *      - ResultSet 으로 Statement의 executeQuery("select * from emp");
 *      - 받은..
 *      - while(rs.next())  
 *      		rs.getString("컬럼명") 
 * */
		// 연결..
		Connection con=null;
		// 대화..
		Statement stmt=null;
		// 대화로 나눈 결과값..select * from emp
		ResultSet rs = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//  ip : localhost
			// port : 1521
			// sid : xe
			// id : scott 
			// pass : tiger
			// jdbc:oracle:thin:@localhost:1521:xe
			//  driver 종류 @ ip:port:sid
			String url ="jdbc:oracle:thin:@localhost:1521:xe";
//			String url ="jdbc:oracle:thin:@localhost:1521:orcl";
			con = DriverManager.getConnection(url, "scott", "tiger");
			stmt = con.createStatement();
			String sql = "SELECT * FROM EMP ";
			rs = stmt.executeQuery(sql);
			// 데이터가 있을 때까지,,,
			while( rs.next()){
				System.out.println(rs.getInt("empno")+"\t"
								+rs.getString("ename"));
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			
			e.printStackTrace();
		}finally{
			try {
				rs.close();
				stmt.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		System.out.println("연결성공!!!");
	}

}
