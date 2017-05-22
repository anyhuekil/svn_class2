package javaexp.a05_reference;

public class A01_basic {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/* 
## jvm메모리1
stack영역과 heap영역
stack영역 : 
	1) primitive data type
	   기본 데이터타입(정수, 실수, boolean) 할당
	   변수 저장영역과 실제 데이터의 메모리 영역이 동일.. 
		== : 비교연산자 - 실제 데이터값을 저장영역을 확인할수 있다.
	2) reference data type
	  참조형 데이터타입(객체, 배열, 인터페이스) 할당.
	  변수 저장영역에는 실제 데이터 메모리의 주소값을 할당하고,
	  실제 데이터는  heap영역에 할당되는 것을 말한다.	
	  javaexp.a05_reference.A01_basic@15db9742
	  객체명@heap영역의 주소값을 16진수코드로 할당(JVM에서 자동할당)
	  stack영역에는 15db9742주소만 할당하고, 실제 A01_basic()는
	  heap영역에 15db9742주소에 객체가 할당되어 있다.
heap 영역
	  참조형 데이터가 들어가는 실제 메모리로 stack의 주소값에 의해
	  호출된다.
##메소드영역 : 상수풀, 필드데이터, 메소드 데이터, 메소드 코드, 생성자 코드 등
     을 분류해서 저장한다. jvm이 시작할 때 생성되고 모든 스레드가 공유하는 영역이다.
     
	 
 * */
		int age=25;
		System.out.println(age==25);
		A01_basic  p = new A01_basic();
		System.out.println(p);
/*
메모리의 ==, != 연산자 활용
	stack주소값에 대한 내용으로
	 기본 데이터형의 값이 동일하면 true로.
	 참조형데이터의 값은 객체가 동일하더라도,
	 	 heap 영역에 참조 객체가 다르므로 false가 나온다. 
 * */		
		int num01 = 25;
		int num02 = 25;
		System.out.println("기본데이터형:"+(num01==num02));
		A01_basic a01 = new A01_basic();
		A01_basic a02 = new A01_basic();
		// 동일한 객체를 생성하더라도, heap영역에 다른 위치를 참조하기에
		// stack영역의 주소값이 다르므로 false값이 나온다.
		System.out.println("참조데이터형:"+(a01==a02));
/*
null값의 할당!
실제 참조할 객체를 할당하지 않을 때, 처리 부분.
일반적으로 객체를 초기화할 때, 활용된다.
 * */		
		A01_basic a03=null;
		String name=null;
		System.out.println("참조객체가 없은 참조변수");
		System.out.println("a03:"+a03);
		System.out.println("name:"+name);
//		int num07=null; 기본데이터형은 참조형이 아니기에 null을 할당할 수 없다.
//	  참조형에 데이터를 할당되었을 때와, 할당되지 않았을 때, 에러발생부분..
//		heap영역에 데이터값 즉, 실제 객체가 할당되지 않았기에..
//		하위에 메소드나 변수를 호출하면 NullPointerException  발생한다.
		String name02 = "안녕하세요!!!";// new String("안녕하세요!!!")
		System.out.println("객체가 할당된 경우:"+name02.length());
		// 문자열.length():문자열의 길이..
//		System.out.println("객체가 할당되지 않은 경우:"+name.length());
//		NullPointerException : 참조되는 객체가 없는데, 해당 하위 메서드를 호출
//		                       하시면!!?? 않되죠!!!
//		배열에서도 해당 객체의 데이터가 할당되지 않았을 때..
//		ArrayIndexOutOfBoundsException : 배열의 해당 범위에 데이터가 없을을 나타냄.
//		System.out.println(args[0]);
		System.out.println(args.length);
		// 배열 객체가 생성되지 않았을 때, 해당 내용을 호출하면,  NullPointerException
		// 발생..
		String names[]=null;
	//	System.out.println(names[0]);
/*
 	String값의 주소와 문자열의 비교..
 	1. String은 객체이다..
 		하지만 대입연산자에 의해서 직접적으로 문자열을 할당하면,
 		문자열이 같은 것은 같은 주소에 할당이 된다...
 		
 * */	
		String name05 = "하이맨";
		String name06 = "하이맨";
		System.out.println(name05 == name06);
/*
 	2. 객체를 원칙적으로는  String 참조변수= new String(문자열)로 
 	   생성이 되면, 일반적인 프레임웍나, 데이터 로딩에 의해서 처리 되는 것은
 	   내부적으로 이와 같은 방식으로 처리된다..
 	   이렇게 될 때는 객체의 문자열이 같더라도 다른 참조변수를 활용하기에
 	   다른 주소로 할당되어, 주소값 비교는 false값이 된다.
 * */	
		String name07=new String("홍길동");
		String name08=new String("홍길동");
		System.out.println(name07==name08);// false가 나타남..
/*  문자열 객체에 대한 비교는 원칙적으로 문자열 객체에서 지원하는
 *  메서드(.equals)를 활용해서 처리하여야 한다.
 *     	문자열변수.equals("문자열")
 * */
		System.out.println(name07.equals(name08));
		//문자열이 같을 때, true값이 출력된다.
/* 확인예제..
 * args 값으로   id password
 * args[0] ==> id값으로 할당  new String(args[0]);
 * args[1] ==> password값으로 할당. new String(args[1]);
 * id는 himan
 * password는 7777
   입력받으면 인증성공 , 아니면 인증된 계정이 아닙니다.. 
 * */		
		
	}

}
