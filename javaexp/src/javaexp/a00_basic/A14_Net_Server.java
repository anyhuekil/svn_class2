package javaexp.a00_basic;

import java.io.*;
import java.net.*;

public class A14_Net_Server {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/* Server프로그램..demon
 * 
 * 
 *    client가 접속하면 특정 문자 전달.
 *    
 * Client프로그램  
 * 	  Server에 접속해서 데이터 전달 받음..
 * */
		// 통신을 위해서 ServerSocket 생성..
		ServerSocket s =null;
		//  객체 ServerSocket(port번호)
		try {
			s = new ServerSocket(5433);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// 외부에서 특정한 내용이 들어왔을 때, accept()
		// 서버은 무한으로 demon으로 loading.. ==> client..
		while(true){
			
			try {
				Socket s1 = s.accept();
				// client가 들어오면, 그 client에게 문자열을 넘겨주는 처리.
				// OutputStream() : 출력처리하는 Stream
				OutputStream s1out=s1.getOutputStream();
				// ObjectOutputStream : 문자열을 넘겨주는 처리를 위한 객체..
				ObjectOutputStream dos = new ObjectOutputStream(s1out);
				// writeObject를 통해서 접속한 클라이언트에서 문자열을 넘겨줌..
				dos.writeObject("어서 오세요!! 즐거운 SERVER입니다!!");
				dos.close();
				s1.close();
				
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} // 특정한 network에서 문자나 특정 내용을 보내고자
			// 할 때, Socket 객체를 활용..
			
			
		}
		
		
		
	}

}
