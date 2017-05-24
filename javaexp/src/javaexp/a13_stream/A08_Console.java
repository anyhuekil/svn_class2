package javaexp.a13_stream;

import java.io.Console;
// javaexp.a13_stream.A08_Console
public class A08_Console {
/*
실행 방법
bin:path지정, classpth 지정
c:\temp 폴드 생성 및 A08_Console.java copy
A08_Console.java에 패키지 선언(package javaexp.a13_stream;)삭제
cmd창 로딩
cd .. :상위 경로 이동
cd temp : 해당 경로 이동
c:\temp로 이동
javac A08_Console.java
java A08_Console

 * 
 * */
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		System.console()을 통한 콘솔객체 생성
		Console console = System.console();
//		아이디 입력..
		System.out.print("아이디! 입력:");
//		enter키 입력 전에 라인단위 문자열 입력 : .readLine()
		String id = console.readLine();
//		패스워드 입력
		System.out.print("패스워드 입력:");
//		라인단위 패스워드형 문자열 입력 : .readPassword()
//		return형이 char[]
		char[] passChar = console.readPassword();
//		char[] ==> String  new String(char[])
		String password = new String(passChar);
		System.out.println("입력한 id와 password");
		System.out.println("ID:"+id);
		System.out.println("PASSWORD:"+password);
		
		
	}

}
