package z01_database;

import java.sql.Connection; 
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import z02_vo.SecondPageDTO;


public class SecondPageDAO {
	
	private String url = "jdbc:oracle:thin:@192.168.0.110:1522:orcl";
	private String uid = "cto";
	private String upw = "qqqq";
	
	
	public SecondPageDAO(){
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public ArrayList<SecondPageDTO> SecondPage(){
		
		ArrayList<SecondPageDTO> dtos = new ArrayList<SecondPageDTO>();
		
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			con = DriverManager.getConnection(url,uid,upw);
			stmt = con.createStatement();
			rs = stmt.executeQuery("select * from acornproduct");
			
			while(rs.next()){
				String auction_id = rs.getString("auction_id");
				String auctioneer_id = rs.getString("auctioneer_id");
				String item_name = rs.getString("item_name");
				Date start_date = rs.getDate("start_date");
				Date end_date = rs.getDate("end_date");
				String state = rs.getString("state");
				String cureent_bid_amount = rs.getString("cureent_bid_amount");
				
				SecondPageDTO dto = new SecondPageDTO(auction_id, auctioneer_id,
						item_name,start_date, end_date, state, cureent_bid_amount);
				dtos.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try{
				if(rs != null)rs.close();
				if(stmt != null) stmt.close();
				if(con != null)con.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		return dtos;
	
	
	}
	
	public static void main(String[] args){
		SecondPageDAO dao = new SecondPageDAO();
	
	}
	
	
}

