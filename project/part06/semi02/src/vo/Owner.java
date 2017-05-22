package vo;

import java.sql.Date;

public class Owner {
	private String oname;
	private String totalhorse;
	private String cancelhorse;
	private String nowhorse;
	private Date regdate;
	private int totalfight;
	private int first;
	private int second;
	private int third;
	private double totalprize;
	
	public Owner() {}

	public String getOname() {
		return oname;
	}

	public void setOname(String oname) {
		this.oname = oname;
	}

	public String getTotalhorse() {
		return totalhorse;
	}

	public void setTotalhorse(String totalhorse) {
		this.totalhorse = totalhorse;
	}

	public String getCancelhorse() {
		return cancelhorse;
	}

	public void setCancelhorse(String cancelhorse) {
		this.cancelhorse = cancelhorse;
	}

	public String getNowhorse() {
		return nowhorse;
	}

	public void setNowhorse(String nowhorse) {
		this.nowhorse = nowhorse;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public int getTotalfight() {
		return totalfight;
	}

	public void setTotalfight(int totalfight) {
		this.totalfight = totalfight;
	}

	public int getFirst() {
		return first;
	}

	public void setFirst(int first) {
		this.first = first;
	}

	public int getSecond() {
		return second;
	}

	public void setSecond(int second) {
		this.second = second;
	}

	public int getThird() {
		return third;
	}

	public void setThird(int third) {
		this.third = third;
	}

	public double getTotalprize() {
		return totalprize;
	}

	public void setTotalprize(double totalprize) {
		this.totalprize = totalprize;
	}
	
	
	
}
