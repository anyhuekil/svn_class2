package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
//A00_DB.conn()
public class DB {
	private static Connection con;
	public static Connection conn() throws ClassNotFoundException, SQLException{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String conInfo="jdbc:oracle:thin:@localhost:1521:xe";
		con = DriverManager.getConnection(conInfo, "system", "1111");
		System.out.println("정상 접속 성공!!");
		return con;
	}
}
