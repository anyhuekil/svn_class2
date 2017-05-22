package javaexp.a13_stream;

import java.io.*;

public class A03_Reader {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/**/
		InputStreamReader reader=null;
		System.out.println("문자열입력:");
		InputStream in = System.in;
		reader = new InputStreamReader(in);
		
		try {
			int n = reader.read();
			System.out.println("입력된 문자열:"+(char)n);
			// 입력할 문자열 배열.
			char[] chArr=new char[10];
			int cnt = reader.read( chArr );
			System.out.println("입력할 문자열의 크기:"+cnt);
			System.out.print("입력한 문자:");
			for(char c:chArr){
				System.out.print(c);
			}
			System.out.println();
			System.out.println("입력종료!!");
			
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

}
