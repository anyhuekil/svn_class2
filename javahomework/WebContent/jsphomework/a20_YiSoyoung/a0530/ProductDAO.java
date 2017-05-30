package jspexp.z05_homework0518;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ProductDAO {
	public ProductDAO(){
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	private Connection getConnection(){
		Connection conn= null;
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String uid = "scott";
		String upw = "tiger";
		try {
			conn = DriverManager.getConnection(url, uid, upw);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
	public ProductDTO getProduct(String searchName){
		ProductDTO dto = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "select * from product where pName = ?";
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, searchName);
			rs = pstmt.executeQuery();
			if(rs.next()){
				int pNo 	 = rs.getInt("pNo");
				String pName = rs.getString("pName");
				int ps 		 = rs.getInt("ps");
				dto = new ProductDTO(pNo, pName, ps);
				System.out.println("찾아서 dto에 넣었음");
			}
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			try{
				if(rs!=null)   rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null) conn.close();
			}catch(Exception e){e.printStackTrace();}
		}
		return dto;
	}
}
