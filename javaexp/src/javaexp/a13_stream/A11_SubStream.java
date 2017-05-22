package javaexp.a13_stream;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

public class A11_SubStream {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		보조스트림 활용하기..
//		1. 기본 스트림 클래스 선언 및 객체 생성.
		InputStream is = System.in;
//		2. 보조 스트림1 활용.. 생성자에 할당
		InputStreamReader reader = new InputStreamReader(is);
//		3. 보조 스트림2 활용 .. 생성자 할당
		BufferedReader br = new BufferedReader(reader);
		System.out.print("입력:");
		try {
			String lineString = br.readLine();
			System.out.println("출력:"+lineString);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

}
