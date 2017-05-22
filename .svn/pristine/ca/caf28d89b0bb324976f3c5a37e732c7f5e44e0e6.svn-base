package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import vo.HorseInfo;

public class DAO_HorseInfo {
	
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	
	public ArrayList<HorseInfo> searchHor(HorseInfo sch){
		ArrayList<HorseInfo> hlist = new ArrayList<HorseInfo>();
		HorseInfo hi = null;
		String sql = "SELECT * FROM HORSE_INFO\n"
				+ "WHERE HORSENAME LIKE '%'||?||'%' \n"
				+ "AND HORSENUM = ? \n"
				+ "AND BIRTHDATE = ? \n"
				+ "AND GENDER = ? \n"
				+ "AND COLOR = ? \n"
				+ "AND REGDATE = ? \n"
				+ "AND COUNTRY = ? \n"
				+ "AND FATHER LIKE '%'||?||'%' \n"
				+ "AND MOTHER LIKE '%'||?||'%' \n"
				+ "AND TRAINERNUM = ? \n"
				+ "AND OWNERNAME LIKE '%'||?||'%'";
		try {
			con = AA_Con.conn();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, sch.getHorsename());
			pstmt.setInt(2, sch.getHorsenum());
			pstmt.setDate(3, sch.getBirthdate());
			pstmt.setString(4, sch.getGender());
			pstmt.setString(5, sch.getColor());
			pstmt.setDate(6, sch.getRegdate());
			pstmt.setString(7, sch.getCountry());
			pstmt.setString(8, sch.getFather());
			pstmt.setString(9, sch.getMother());
			pstmt.setInt(10, sch.getTrainernum());
			pstmt.setString(11, sch.getOwnername());
			
			rs = pstmt.executeQuery();
			while(rs.next()){
				hi = new HorseInfo();
				hi.setHorsename(rs.getString(1));
				hi.setHorsenum(rs.getInt(2));
				hi.setBirthdate(rs.getDate(3));
				hi.setGender(rs.getString(4));
				hi.setColor(rs.getString(5));
				hi.setRegdate(rs.getDate(6));
				hi.setCountry(rs.getString(7));
				hi.setFather(rs.getString(8));
				hi.setMother(rs.getString(9));
				hi.setTrainernum(rs.getInt(10));
				hi.setOwnername(rs.getString(11));
				hlist.add(hi);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			if(rs != null){
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(pstmt != null){
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(con != null){
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		
		return hlist;
	}

}
