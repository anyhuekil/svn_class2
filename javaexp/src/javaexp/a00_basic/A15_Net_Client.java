package javaexp.a00_basic;
import java.io.*;
import java.net.*;
public class A15_Net_Client {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// Socket (클라이언트 통신 객체)
		// new Socket("접속하고자하는 server ip주소", 해당port);
		// localhost : 자신의 컴퓨터 호출 ip
		try {
			Socket s1 = new Socket("localhost",5433);
			// 입력하는 Stream InputStream
			// 서버 출력 OutputStream --> 클라이언트 InputStream 받음..
			// 출력 기본 객체에 받아옮 InputStream
			InputStream is=s1.getInputStream();
			// client console 화면에 출력하려면 
			// readObject() ==> ObjectInputStream
			ObjectInputStream dis = new ObjectInputStream(is);
			System.out.println(dis.readObject());
			// 자원을 해제..
			dis.close();
			s1.close();
			// 서버 SocketServer를 실행한 후,
			// client Socket으로 받아옮
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
