package jspexp.z05_homework0518;

public class ProductDTO {
	private int pno;
	private String pname;
	private int ps;
	public ProductDTO() {}
	public ProductDTO(int pno, String pname, int ps) {
		super();
		this.pno = pno;
		this.pname = pname;
		this.ps = ps;
	}
	public int getPno() {
		return pno;
	}
	public void setPno(int pno) {
		this.pno = pno;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public int getPs() {
		return ps;
	}
	public void setPs(int ps) {
		this.ps = ps;
	}
}
