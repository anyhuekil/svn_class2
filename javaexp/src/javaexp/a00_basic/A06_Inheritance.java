package javaexp.a00_basic;
/*
상속 : 객체의 상속을 통해 다양한 객체를 사용할 수 있게 만드는
자바에서의 oop(객체지향프로그램)에 합당한 구조를 말한다.
 * */
class Father{
	String name;
	void intro(){
		System.out.println("이름은 "+name+"입니다!!");
	}
}
// Father 클래스를 상속받은 Son 클래스
// class 클래스명 extends 상위클래스명
class Son extends Father{
	int age;
	void intro2(){
		System.out.println("나이는 "+age+"입니다!!");
	}
}
/* 상속을 하게 되면 하위 클래스는 상위클래스가 선언된 내용을
 * 선언하지 않더라도 사용할 수 있게 된다.!!*/

public class A06_Inheritance {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Father f = new Father();
		f.name="홍판서";
		f.intro();
		Son s = new Son();
		s.name = "홍길동";
		// 변수나 메서드 선언되어 있지 않더라도,
		// 상속을 하면 활용할 수 있다.
		s.age=25;
		s.intro();
		s.intro2();
	}
/*
 확인 예제..
 Workman
 	속성값  kind (직업의 종류)
 	메서드 work()  @@@ 가 일을 하다.
 FireMan
 	속성값 wkLoc (일을 하는 장소)
 	메서드  turnoff()  @@@가 @@@에서 불을 끄다.
 	 
 
 
 * */
	
}
