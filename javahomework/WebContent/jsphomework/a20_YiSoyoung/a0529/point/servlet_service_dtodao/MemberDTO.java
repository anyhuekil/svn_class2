package jspexp.z04_member;

import java.sql.Date;

public class MemberDTO {
	private String id;
	private String pw;
	private String name;
	private int point;
	private String auth;
	private String email;
	private Date rdate;
	private String address;
	public MemberDTO(){}
	public MemberDTO(String id,String pw,String name,int point,String auth,String email,Date rdate,String address){
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.point = point;
		this.auth = auth;
		this.email = email;
		this.rdate = rdate;
		this.address = address;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public String getAuth() {
		return auth;
	}
	public void setAuth(String auth) {
		this.auth = auth;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getRdate() {
		return rdate;
	}
	public void setRdate(Date rdate) {
		this.rdate = rdate;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
}
