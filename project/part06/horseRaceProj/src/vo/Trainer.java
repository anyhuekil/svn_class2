package vo;

import java.sql.Date;

public class Trainer {

	private int tnum;
	private String tname;
	private int section;
	private Date debutdate;
	private int total;
	private int first;
	private int second;
	private int third;
	private int havehorse;
	public Trainer() {}
	public int getTnum() {
		return tnum;
	}
	public void setTnum(int tnum) {
		this.tnum = tnum;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public int getSection() {
		return section;
	}
	public void setSection(int section) {
		this.section = section;
	}
	public Date getDebutdate() {
		return debutdate;
	}
	public void setDebutdate(Date debutdate) {
		this.debutdate = debutdate;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
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
	public int getHavehorse() {
		return havehorse;
	}
	public void setHavehorse(int havehorse) {
		this.havehorse = havehorse;
	}
	
	
}
