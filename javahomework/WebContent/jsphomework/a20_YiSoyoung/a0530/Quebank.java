package jspexp.z03_quebank;

public class Quebank {
	private int no;
	private String que;
	private String coransw;
	private String queType;
	public Quebank() { }
	public Quebank(String que, String coransw, String queType) {
		this.que = que;
		this.coransw = coransw;
		this.queType = queType;
	}	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getQue() {
		return que;
	}
	public void setQue(String que) {
		this.que = que;
	}
	public String getCoransw() {
		return coransw;
	}
	public void setCoransw(String coransw) {
		this.coransw = coransw;
	}
	public String getQueType() {
		return queType;
	}
	public void setQueType(String queType) {
		this.queType = queType;
	}
	@Override
	public String toString() {
		return "[no=" + no + ", que=" + que + ", coransw=" + coransw + ", queType=" + queType + "]";
	}
}
