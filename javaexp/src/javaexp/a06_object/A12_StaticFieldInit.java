package javaexp.a06_object;

class Television{
	// static은 객체생성 후, 사용되는 필드가 아니기에
	// 클래스명 바로 밑에서 초기화를 해주는 것이 보통이다.
	static String company="삼성";
	static String model="OLED";
	int price;
	static String info;
	// static{}을 주어서 선언된 초기필드를 초기데이터로 할당할 수 
	// 있다.
	static{
		info = company+" - "+model;
//		static 필드가 아닌 필드는 static{}에서 사용할 수 없다. 
//		price=15000000; (컴파일에러)
		showAll(); // static{}에서는 static 메서드를 사용가능.
//		show(); 일반 메서드는 사용이 불가능하다.(컴파일에러)
	}
	void show(){}
	// static 메서드도  객체생성없이 사용할 수 있다.
	static void showAll(){
		System.out.println(" 좋은 TV 입니다!!!");
//		this.price=2000000; staic메서드 안에서 객체 생성후 현재객체(this)
//		                    필드에 데이터를 할당하지 못 한다.
//		this.show(); static 메서드 안에서 일반메서드를 사용하지 못 한다.
		// static 블록이나 메서드에서 static 필드나 메서드를 사용하기위해서
		// 는 객체생성을 하여야한다.
		Television  t = new Television();
		t.price=2500000;
		
	}
}
public class A12_StaticFieldInit {
	int number;
	static int stNumber;
	// 메인메서드는 static 메서드 이기에  일반 필드를 객체생성 없이 사용이
	// 불가능하다.
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// static 필드는 객체 생성과 상관없이 메모리에 올리기에.
		// 클래스명.필드로 사용된다.
		System.out.println(Television.info);
		Television.showAll();
		// API에 있는 static키워드가 있는 필드나 메서드는 클래스명.메서드/필드
		// 사용한다.
		System.out.println(Math.random());
		// 사용불가.
//		number=25;
		stNumber=27; // static 필드이기에 사용이 가능.
		
	}

}
