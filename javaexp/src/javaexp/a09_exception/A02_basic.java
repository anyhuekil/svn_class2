package javaexp.a09_exception;

public class A02_basic {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try{
			// 예외가 발생 가망성 있는 코드.
			System.out.println("안녕하세요!!1");
			System.out.println("안녕하세요!!2");
			String name="홍길동"; // 데이터 입력이 불확실 할 때..
			System.out.println(name.toString()); // throw 예외 객체
			                                    // NullPointerException()
			System.out.println("안녕하세요!!3");
			System.out.println("안녕하세요!!4");
			System.out.println("안녕하세요!!5");
		}catch(NullPointerException e){
			// 예외가 발생했을 때, 처리할 코드.
			// NullPointerException클래스 이상의 상위클래스 선언..
			System.out.println("예외가 발생 했네요~~ 이렇게 처리하겠습니다!!");
		}
		System.out.println("프로그램 수행 종료!!");
		
	}

}
