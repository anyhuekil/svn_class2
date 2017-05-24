package javaexp.a00_basic;

/*객체 클래스 선언*/
/*
class 클래스명{

 * */
class Student{
	// 클래스에서 사용될 변수 선언
	String name;
	int age;
	// default생성자 선언..- 생성자 선언이 없을 때는
	// 자동으로 생성된다.
	Student(){}
	// 생성자 : 클래명과 동일한 메서드
	// 객체 생성할 때, 한번 호출.
	Student(String name, int age){
		// 외부에서 입력한 값을 전역변수에 할당.
		this.name = name;
		this.age = age;
	}
	
	// 클래스에서 사용될 메서드 선언
	void printAll(){
		System.out.println("이름:"+name);
		System.out.println("나이:"+age);
	}
}
public class A05_Object {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 선언된 객체 메모리에 호출, 실행..
		// 클래스명 참조변수 = new 클래스명();
		Student st01 = new Student();
		// 객체의 변수에 데이터 할당.
		// 참조변수.변수
		st01.name="홍길동";
		st01.age =25;
		// 메서드 호출..
		// 참조변수.메서드();
		st01.printAll();
		// 입력값이 있는 생성자 생성 및 호출..
		Student st02 = new Student("신길동",27);
		st02.printAll();
/*
확인예제
	Person 객체를 생성하고,
		변수 name(이름), loc(사는 곳)
		show()를 통해서 출력하세요..
		출력형태..
			이름은 @@@이고, 사는 곳은 @@@ 입니다.
 * */		
	}

}
