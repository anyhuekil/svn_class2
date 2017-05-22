package jspexp.z01_database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
// A00_DB.conn()
public class A00_DB {
	private static Connection con;
	public static Connection conn() throws ClassNotFoundException, SQLException{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String conInfo="jdbc:oracle:thin:@localhost:1521:xe";
		con = DriverManager.getConnection(conInfo, "scott", "tiger");
		System.out.println("정상 접속 성공!!");
		return con;
	}
}
