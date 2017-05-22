package javaexp.a07_inheritance;

class Member{
	String name;
	int sal;
	public Member(String name, int sal) {
		this.name = name;
		this.sal = sal;
	}
	public Member() {
		// TODO Auto-generated constructor stub
	}
	public void showInfo(){
		System.out.print("이름은 "+name+"이며, ");
		System.out.println("급여는 "+sal+"만원  입니다! ");
	}
}
class Deputy extends Member{
	String depart;
	public Deputy(String name, int sal, String depart){
		super(name, sal);
		this.depart = depart;
	}
	// 메서드 재정의(overriding)
	public void showInfo(){
		// 상위에 메서드 내용을 활용..
		super.showInfo();
		// 상위의 메서드에서 추가 내용을 처리..
		System.out.println("부서는 "+depart+" 입니다!!");
	}
}

public class A03_Overriding {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Member mem = new Member("김지영", 3000);
		Deputy dep01 = new Deputy("신영희",4000,"IT사업부");
		mem.showInfo();
		dep01.showInfo();
	}

}
