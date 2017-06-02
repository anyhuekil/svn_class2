package project3.vo;

public class Member {
	
	private String memid;
	private String pass;
	private String name;
	private String auth;
	
	public Member(){}
	public Member(String memid, String pass, String name, String auth){
		this.memid = memid;
		this.pass = pass;
		this.name = name;
		this.auth = auth;
	}
	public String getName() {
		return name;
	}
	public String getAuth() {
		return auth;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setAuth(String auth) {
		this.auth = auth;
	}
	public String getMemid() {
		return memid;
	}
	public void setMemid(String memid) {
		this.memid = memid;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}

}
