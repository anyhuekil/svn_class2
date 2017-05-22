package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class AA_Con {
	
	private static Connection con;
	private static String dirver = "oracle.jdbc.driver.OracleDriver";
	private static String conInfo = "jdbc:oracle:thin:@localhost:1521:xe";
	private static String did = "scott";
	private static String dpw = "tiger";
	
	public static Connection conn() throws ClassNotFoundException, SQLException{
		Class.forName(dirver);
		con = DriverManager.getConnection(conInfo,did,dpw);
		System.out.println("정상 접속 성공!!");
		return con;
	}
}
