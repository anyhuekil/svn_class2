package javaexp.a13_stream;

import java.io.IOException;
import java.io.InputStream;

public class A01_Stream {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/* 키보드 입력 */
//		입력의 최상위 Stream : InputStream
		InputStream is=null;
//		키보드 입력 : System.in.read() 로 처리..
//		System.in ==> InputStream의 실제객체
		is =System.in;
		
//		read()라는 메서드를 통해 문자 한자를 입력 받을 수 있다.
//		기본적으로 int으로 char으로 전환 casting하면 문자를 받을 수 있다.
//		io(input/output)이 발생하면 예외처리(Exception)을 해준다.
		System.out.print("문자를 입력하세요:");
		try {
			int n = is.read();
			// 받은 내용을 출력한다.
			System.out.println(n+",문자로 변환:"+(char)n);
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		

	}

}
