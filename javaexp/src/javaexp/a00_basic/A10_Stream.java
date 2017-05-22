package javaexp.a00_basic;

import java.io.IOException;
import java.io.InputStream;

public class A10_Stream {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
Stream : 데이터가 흘러가는 것을 추상화하여 만든 객체로
자바에서는 Stream을 활용하여 데이터를 입력, 출력,  전달을
처리하고 있다.
기본적으로 local에서 데이터를 입/출력하는 것, 파일을 생성하여
입력/출력하는 것, 네트워크망에서 데이터를 입/출력하는 것들 모두가
이 Stream을 활용하여 처리하다.
단, 이러한 데이터 입출력이 일어나기에 발생하는 여러 예외상황(네트워크,
데이터 유실, 보안문제)등에 대비하여,  Stream은 반드시 Exception 
처리를 해 주어야 한다.
*/
		System.out.println("데이터를 입력하세요!!");
		// InputStream :입력하는 Stream이라는 말로, 입력할 때, 활용되는
		// 최상 클래스이다.
		// System.in : JVM에서 지원하는 기본 입력처리 객체..
		InputStream is = System.in;
		try {
			
			int n = is.read();
			System.out.println("입력값:"+(char)n);
			// 스트림은 자원을 잡고 있기에, 해당 내용을 처리한 후에는
			// close() 메서드를 통해 명시적으로 자원을 해제해 준다..
			is.close();
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
