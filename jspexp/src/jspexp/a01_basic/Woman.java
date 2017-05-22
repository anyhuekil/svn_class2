package jspexp.a01_basic;
// jspexp.a01_basic.Woman
public class Woman {
	private String name;
	private String telnum;
	private String height;
	public Woman() {
	}
	public Woman(String name, String telnum, String height) {
		this.name = name;
		this.telnum = telnum;
		this.height = height;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTelnum() {
		return telnum;
	}
	public void setTelnum(String telnum) {
		this.telnum = telnum;
	}
	
	public String getHeight() {
		return height;
	}
	public void setHeight(String height) {
		this.height = height;
	}
	
}
