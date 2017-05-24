package javaexp.a12_collection;

import java.util.ArrayList;

class Emp{   // VO
	private int empno;
	private String ename;
	private int sal;
	private int deptno;
	public Emp() {
		// TODO Auto-generated constructor stub
	}
	public Emp(int empno, String ename, int sal, int deptno) {
		this.empno = empno;
		this.ename = ename;
		this.sal = sal;
		this.deptno = deptno;
	}
	public int getEmpno() {
		return empno;
	}
	public void setEmpno(int empno) {
		this.empno = empno;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public int getSal() {
		return sal;
	}
	public void setSal(int sal) {
		this.sal = sal;
	}
	public int getDeptno() {
		return deptno;
	}
	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}
	
}

public class A04_listObject {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// Emp의 여러 객체를 담을 수 있는 ArrayList 생성..
		// ArrayList<Emp>  ctrl+shift+O : import 자동 처리
		ArrayList<Emp> elist = new ArrayList<Emp>();
		/* 단위 객체 생성과 list에 데이터 담기
		 * DB 처리시, 가장 많이 활용되는 방법
		 * 1. 객체 생성과 메서드를 통해서 데이터 담기
		 * */
		Emp p = new Emp();
		p.setEmpno(7001);
		p.setEname("하이맨");
		p.setSal(2000);
		p.setDeptno(10);
		elist.add(p);
//		2. 생성자를 통해서 생성과 동시에 데이터 담기.
		Emp p2 = new Emp(7002, "홍길동", 3000, 20);
		elist.add(p2);
//		3. 참조변수 없이 객체 바로 생성과 함께 할당.
		elist.add(new Emp(7003, "슈퍼맨", 4000, 30));
/* 할당된 객체 가져오기 
 * 		elist.get(index) ==> 할당된 위치에 있는 객체 (Emp)
 * */
//		두번째 있는 Emp객체의 ename값을 가져온다.
		System.out.println(elist.get(1).getEname());
//		첫번째 있는 Emp 객체의 sal값 가져올려면?
		System.out.println(elist.get(0).getSal());
/*전체 데이터를 list 하는 방법
 * 1) for(단위객체:list형배열)
 * 2) for(int idx=0;idx<크기;idx++)
 * 크기 : elist.size(), elist.get(0)
 * */
		for(Emp emp:elist){
			System.out.print(emp.getEmpno()+"\t");
			System.out.print(emp.getEname()+"\t");
			System.out.print(emp.getSal()+"\t");
			System.out.print(emp.getDeptno()+"\n");
		}
		for(int idx=0;idx<elist.size();idx++){
			System.out.print(elist.get(idx).getEmpno()+"\t");
			System.out.print(elist.get(idx).getEname()+"\t");
			System.out.print(elist.get(idx).getSal()+"\t");
			System.out.print(elist.get(idx).getDeptno()+"\n");
		}
		
	}

}
