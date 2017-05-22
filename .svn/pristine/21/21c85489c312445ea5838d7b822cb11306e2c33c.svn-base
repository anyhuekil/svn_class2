package javaexp.a06_object;

/*
객체의 구성요소 
 * */
class Movie{
//	field : 객체의 전역변수로 모든 생성자와 메서드에 영향을 
//	        미칠 수 있다.
	String title;
//	 생성자 :선언하지 않으면 기본 생성자가 포함되어 있다..
//	main()  Movie m = new Movie();
//	public Movie(){}
	public Movie(){
		System.out.println("생성자 호출!!!");
	}
//	생성자는 객체 생성시, 같은 참조변수 한번 만 호출하여 사용된다.
//	생성자는 입력값이 다르면, 여러 생성자를 선언하여 사용할 수 있다.
	public Movie(String name){
		title=name;// 생성자로 들어오는 데이터를 전역변수에 할당..
		System.out.println("입력값이 있는 생성자");
	}
// 메서드..
//	메서드는 객체의 기능처리를 한다.
//	1)접근제어자  2)return값 type(없으면void) 3)메서드명 4) (입력값)
//	  붙지 않으면 default
	void show(){
		System.out.println("제목은 "+title+" 입니다!!");
	}
	
}
public class A03_ClassCompo {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Movie m1 = new Movie();// 호출이 가능한 이유는
		// 생성자를 구현하지 않으면 default 생성자가 내부적으로
		// 구현되어 있기 때문이다.
		Movie m2 = new Movie("재미있는 영화");
		Movie m3 = new Movie("나쁜 영화");
		System.out.println("m2객체의 속성title값:"+m2.title);
		System.out.println("m3객체의 속성title값:"+m3.title);
		m2.show();
		m3.show();
	
	}

}
