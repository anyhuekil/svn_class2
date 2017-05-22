package javaexp.a09_exception;

/*
예외에 대한 설명 중 틀린 것은 무엇입니까?

1. 예외는 사용자의 잘못된 조작, 개발자의 잘못된 코딩으로

인한 프로그램 오류를 말한다. ------------------------------

2. RuntimeException의 하위 예외는 컴파일러가 예외 처리

코드를 체크하지 않는다.

3. 예외는 try~catch블록을 사용해서 처리된다.

4. 자바 표준 예외란 프로그램에서 처리할 수 있다.



 try~catch-finally 블록에 대한 설명 중 틀린 것은

무엇입니까?

1. try{}블록에는 예외가 발생할 수 있는 코드를 작성한다.

2. catch{}블록에서 return 블록에서 발생한 예외를 처리하는

블록이다.

3. try{} 블록에서 return 문을 사용하면 finally{} 블록은

실행되지 않는 다.----------------------------------------

4. catch{} 블록은 예외의 종류별로 여러 개를 작성할 수 있다.




throw에 대한 설명으로 틀린 것은 무엇입니까?

1. 예외를 최초로 발생시키는 코드이다. ---------------------------------------------

2. 예외를 호출한 곳으로 떠넘기기 위해 메소드 선언부에

작성된다.

3. throw로 발생된 예외는 일반적으로 생성자나 메소드

선언부에 throws로 떠넘겨진다

4. throw 키워드 뒤에는 예외 객체 생성 코드가 온다. 


 다음과 같은 메소드가 있을 때, 예외를 잘못

처리한 것은 무엇입니까?

1. try{method();}catch(Exception e){}

2. void method2() throws Exception{method1{};} ---------------------------------------

3. try{method1();}catch(Exception

e){}catch(ClassNotFoundException e){}

4. try{method1();}catch(ClassNotFoundException

e){}catch(NumberFormatException e){}



1단계

– PointException : 점수가 특정 점수 이하로 되었을 때,

예외 처리로 “불합격입니다. 재 수강을”

– Exam

 getPoint(임의의 점수) : 예외 처리 메서드

– 입력 받은 점수가 60점이하일 때, 예외 객체 호출

– Main()

 2단계

– PointException

 추가 메서드 : showResult()

– @@과목, @@점 획득 하였는데, 결과는 재수강 입니다.

– Exam

 과목명, 시험점수

 getPoint() : 과목과 Random next()활용

*/


class PointException extends Exception{
	public PointException() {
		super("기본 에러 메시지");
		// TODO Auto-generated constructor stub
	}

	public PointException(String message) {
		super(message);
		// TODO Auto-generated constructor stub
	}

	@Override
	public String getMessage() {
		// TODO Auto-generated method stub
		return "불합격 재수강 매앤~!"+super.getMessage();
	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "60점이하:"+super.toString();
	}
	
}

class GetPoint{
	int point;
	
	public GetPoint(){}
	public void GetPoint(int point) throws PointException{
	
		if(point < 60){
			throw new PointException(point+"점");
		}
		System.out.println(point+"점 합격 ㅊㅋㅊㅋ");
	}
	
	
}




public class z99_homework0501 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try{
			GetPoint p1 = new GetPoint();
			p1.GetPoint(50);
		}catch(PointException e){
			System.out.println(e.getMessage());
	//		System.out.println(e.toString());
		}
	}

}
