package z01_database;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CntTime {
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public Date nowT() {
		Date time = null;
		try {
			con = ConnectDB.conn();
			String sql = "select sysdate from dual";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				time = rs.getDate(1);
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return time;
	}
}
