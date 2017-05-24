package javaexp.a07_inheritance;

class Worker{
	String kind;
	public Worker(){}
	public Worker(String kind) {
		this.kind = kind;
	}
	public void working(){
		System.out.println(kind+"가 일을 합니다!");
	}
}
class Engineer extends Worker{
	// 상속에서 생성자는 상위에 구현된 내용으로 정의 되어야 한다.
	public Engineer(){
		super("개발자");
	}
	// 재정의!!!
	public void working(){
		System.out.println(kind+"가 프로그램 개발을 합니다!!");
	}
}
class PoliceMan extends Worker{
	public PoliceMan(){
		super("경찰관");
	}
	public void working(){
		System.out.println(kind+"가 도둑을 잡습니다!");
	}
}
public class A04_OverridingExp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Worker w1 = new Worker("셀러리맨");
		w1.working();
		Engineer w2 = new Engineer();
		w2.working();
		PoliceMan w3 = new PoliceMan();
		w3.working();
	}

}
