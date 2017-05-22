package testt_Project;
import java.sql.*;

public class jdbc_test {
	
	public static void main(String[] args){
		/*
		 * 1. 드라이버 로딩
		 * 2. 데이터베이스 연결
		 * 3. sql문 전송을 위한 쿼리문 생성
		 * 4. DB에 sql문 전송
		 * 5. data를 가져와서 출력
		 * 6. DB와 연결된 자원을 반납
		 * */
		
		// 1. 드라이버 로딩
		// Class.forName("클래스 이름");		=> 직접 로딩. 동적바인딩 method
		// 										(프로그램 실행시 드라이버 로딩)
		// java.lang 패키지에 속해있는 클래스이다.
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("Find!");

		// 2. DB와 연결
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String user = "scott";
			String pw = "tiger";
			Connection con = DriverManager.getConnection(url,user,pw);
			System.out.println("Sucess!");
		
		// 3. 쿼리문(statement 객체를 생성해야함)
			String sql = "select ename from emp";
			Statement st = con.createStatement();
		
		// 4. DB에 sql문 전송
			ResultSet rs = st.executeQuery(sql);
		
		// 5. data를 가져와서 출력
			while(rs.next()){
				String col1 = rs.getString(1);
				System.out.println(col1);
			}
			
		// 6. DB와 연결된 자원 반납 (반납을 해야한단다..)
			if(con!=null) con.close();
			if(st!=null) st.close();
			if(rs!=null) rs.close();
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
