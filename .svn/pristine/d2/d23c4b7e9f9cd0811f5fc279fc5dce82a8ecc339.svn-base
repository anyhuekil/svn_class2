/*

Complete - 수정사항없음

*/
package application.util;

import java.sql.*;

public class DbConn {

	public Connection con;
	
	public Connection conn(){		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@192.168.0.156:1521:xe";
			con = DriverManager.getConnection(url,"hr","7777");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
	
	public void disconnect(){
		try {
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
