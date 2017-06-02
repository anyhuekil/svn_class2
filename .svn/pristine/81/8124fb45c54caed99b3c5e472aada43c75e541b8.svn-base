package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class AA_Con {
	
	private static Connection con;
	private static String dirver = "oracle.jdbc.driver.OracleDriver";
	private static String conInfo = "jdbc:oracle:thin:@192.168.0.110:1522:orcl";
	//private static String conInfo = "jdbc:oracle:thin:@localhost:1521:orcl";
	private static String did = "tiger";
	private static String dpw = "scott";
	
	public static Connection conn() throws ClassNotFoundException, SQLException{
		Class.forName(dirver);
		con = DriverManager.getConnection(conInfo,did,dpw);
		System.out.println("정상 접속 성공!!");
		return con;
	}
}
