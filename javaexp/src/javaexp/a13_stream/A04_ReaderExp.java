package javaexp.a13_stream;

import java.io.IOException;
import java.io.InputStreamReader;

public class A04_ReaderExp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.print("오늘의 점심은?");
		// 입력받은 문자
		char inArry[]=new char[20];
		InputStreamReader isr = new InputStreamReader(System.in);	
		try {
		
			isr.read(inArry);
			System.out.print("선택한 점심은 ");
			for(char c:inArry){
				System.out.print(c);
			}
			System.out.println();
			System.out.println("String으로 처리..");
			String chLunch = new String(inArry);
			System.out.println("선택한 점심:"+chLunch);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
