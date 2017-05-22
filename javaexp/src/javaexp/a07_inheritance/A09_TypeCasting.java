package javaexp.a07_inheritance;
class Parent{
	void getInfo(){
		System.out.println("부모 클래스[공통메서드]");
	}
}
class Child extends Parent{
	void getInfo(){
		System.out.println("부모 클래스 [메서드 재정의]");
	}
	void childInfo(){
		System.out.println("자식 클래스[추가메서드]");
	}
}
class Child2{
	
}
public class A09_TypeCasting {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Parent p1 = new Child();  // 다형성 처리..
		p1.getInfo();// 상위에 있는 메서드 재정의는 하위에서 재정의 된 내용으로
		             //활용이 가능
//		p1.childInfo(); // 다형성은 하위에서 추가되는 메서드는
//		                          처리하지 못 한다.
		Child c1 = (Child)p1; // 하위에 추가되는 멤버를 처리하고 할 때,
		c1.childInfo();    
		// 1. 참조관계 있는 객체 여부
		Parent p2 = new Parent();
		Child2 c2 = new Child2();
		System.out.println("p2는 Parent의 객체변수인지?"+(p2 instanceof Parent));
		// 2. 상속관계에 있는 상위 /하위 객체를 확인하는 방법
		// Parent p1 = new Child()와 같이 다형성이 일어나면 p1은 Child의 참조한다.
		System.out.println("p1은 Child의 객체변수인지?"+(p1 instanceof Child));
		// c2
	}

}
