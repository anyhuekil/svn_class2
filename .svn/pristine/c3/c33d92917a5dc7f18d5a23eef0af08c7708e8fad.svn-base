package javaexp.a13_stream;

import java.io.IOException;
import java.io.InputStream;

public class A02_StreamByte {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		InputStream is=null;
		// 입력받을 데이터를 byte[]로 선언.
		byte[] barry = new byte[5];
		System.out.println("데이터를 입력하세요!!:");
		is = System.in;
		try {
// 입력받은 데이터 건수 return
			int cnt = is.read( barry );
			System.out.println("입력받을 데이터 크기:"+cnt);
			System.out.println("입력 받은 데이터..");
			for(byte indata:barry){
				System.out.println("입력받은값:"+(char)indata);
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				is.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}// 자원 해제
		}
		
	}

}
