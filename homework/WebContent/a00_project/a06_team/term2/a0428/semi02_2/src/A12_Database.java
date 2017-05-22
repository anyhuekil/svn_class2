package javaexp.a00_basic;

import java.sql.*; // java.sql.* 하위 모든 것 import 하겠다.

public class A12_Database {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		/*
		 * DB 와 java의 만남에 필요한 요소들
		 * 	1) 연결하는 다리
		 * 		- 메모리(driver) jdbc
		 * 		- Class.forName("드라이버")
		 * 
		 * 	2) 대상 DB server 객체 연결
		 * 		- ip, port, sid, id/pw
		 * 		- Connetion 객체
		 * 		- DriverManager.getConnection("ip","id","password")
		 * 
		 * 	3) sql을 실행, server에 전달
		 * 		- 대화객체 createStatement()
		 * 		- Statement의 executeQuery("select * from emp");
		 * 
		 * 	4) select 일 경우, 결과값을 받아야
		 * 		- ResultSet 으로 Statement의 executeQuery("select * from emp");
		 * 		- 을 받는
		 * 		- while(rs.next()){
		 * 			rs.getString("컬럼명")
		 * 		}
		 * */

		//연결
		Connection con=null;
		//대화
		Statement stmt=null;
		//대화를 나눈 결과값 .. select * from emp;
		ResultSet rs=null;

		try {
			// IO 예외처리 해주어야 !
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			// ip : localhost
			// port : 1521
			// sid : xe
			// id : scott
			// pw : tiger
			// jdbc:oracle:thin:@
			// 드라이버 종류 @ ip:port:sid
			// toad - 해당 계정 - properties 에서 확인가능
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			// IO 예외처리
			// ctrl + 1 이후 catch clause 하면 추가적으로 처리된다
			con = DriverManager.getConnection(url,"scott","tiger");
			

			stmt=con.createStatement();
			String sql="SELECT * FROM EMP";
			
			rs=stmt.executeQuery(sql);
			// 데이터가 있을때까지
			while(rs.next()){
				System.out.println(rs.getInt("empno")+"\t"+rs.getString("ename"));
			}
			
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			try {
				// IO 예외처리
				rs.close();
				stmt.close();
				con.close();		
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}		
		// System.out.println("Connection Success");
	}

}
