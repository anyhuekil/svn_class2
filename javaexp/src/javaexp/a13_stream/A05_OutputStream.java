package javaexp.a13_stream;

import java.io.*;

public class A05_OutputStream {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		System.out: 자바에서 지원하는 출력 기본객체
//		println() : 화면에 출력처리메서드
//
		String fileName="C:/a01_prog/eclipse/workspace_server/javaexp/src/javaexp/a13_stream/test01.txt";
		try {
			OutputStream os = new FileOutputStream(fileName);
			// 파일에 출력할 문자열 지정..
			byte[] data = "Good! Man2".getBytes();
			for(byte b:data){
				os.write(b);
			}
					
			
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
