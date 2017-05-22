package javaexp.a07_inheritance;

/*
상속관계의 클래스 선언하기..
 * */
class Father{
	// 필드
	String name;
	int age;
	// 생성자.
	// 메서드
	void setInfo(String name, int age){
		this.name = name;
		this.age = age;
	}
	void showInfo(){
		System.out.print("이름은 "+name+"이고, ");
		System.out.println("나이는 "+age+"입니다!! ");
	}
}
class Son extends Father{
	String loc;  // 추가 필드 선언
	void setInfo2(String name, int age, String loc ){
		this.name=name;  // 상속관계로 필드사용 가능
		this.age = age;  // 상속관계로 필드사용 가능
		this.loc=loc;
	}
	void showInfo2(){
		showInfo();// 현재 가지고 있는 메서드 구현.(상속)
		System.out.println("사는 곳은 "+loc+"입니다!!!");
	}
	
}

public class A01_basic {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Son s1 = new Son();
		s1.setInfo("아들", 25);		
		s1.showInfo();
		Son s2 = new Son();
		s2.setInfo2("둘째아들", 27, "서울 강남");
		s2.showInfo2();
	}

}
