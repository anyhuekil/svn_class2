package javaexp.a12_collection;

import java.util.ArrayList;

class Dept{
	private int deptno;
	private String dname;
	private String loc;
	public Dept() {
		// TODO Auto-generated constructor stub
	}
	public Dept(int deptno, String dname, String loc) {
		this.deptno = deptno;
		this.dname = dname;
		this.loc = loc;
	}
	public int getDeptno() {
		return deptno;
	}
	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
	
}
public class A05_listObjectExp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ArrayList<Dept> dlist=new ArrayList<Dept>();
		dlist.add(new Dept(10,"회계","뉴욕"));
		dlist.add(new Dept(20,"감사","달라스"));
		dlist.add(new Dept(30,"영업","시카고"));
		for(Dept d:dlist){
			System.out.print(d.getDeptno()+"\t");
			System.out.print(d.getDname()+"\t");
			System.out.print(d.getLoc()+"\n");
		}
		for(int idx=0;idx<dlist.size();idx++){
			System.out.print(dlist.get(idx).getDeptno()+"\t");
			System.out.print(dlist.get(idx).getDname()+"\t");
			System.out.print(dlist.get(idx).getLoc()+"\n");			
		}
				
	}

}
