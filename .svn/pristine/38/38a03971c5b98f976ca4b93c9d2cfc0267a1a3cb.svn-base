package springweb.z01_database;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class A01_DBCP_Con {
	// A01_DBCP_Con.getCon()
	public static Connection  getCon() throws SQLException{
		
		// 커넥션 풀을 통해 커넥션 가져오기.
		Connection con=null;
		// jndi
		try {
			Context initCtx = new InitialContext();
			// initCtx에서 lookup메서드를 이용해서 "java:comp/env"에 해당하는 객체 호출.
			Context evnCtx = (Context)initCtx.lookup("java:comp/env");
		// 커넥션 pool
			DataSource ds = (DataSource)evnCtx.lookup("jdbc/orcl");
			// jdbc/orcl을 설정한 것을  WAS단에서 찾아서 connection을 가져옮
			con=ds.getConnection();
			
			
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		



		return con;
	}
}
