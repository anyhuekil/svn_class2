package javaexp.a13_stream;

import java.io.DataOutputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class A12_DataOutputStream {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String dtfile="C:/a01_prog/eclipse/workspace_server"
				+ "/javaexp/src/javaexp/a13_stream/dataFile.dat";
		// 문자열을 저장 호출
		// 데이터를 해당 type을 저장과 호출
		// FileOutputStream : 파일를 쓰는 스트림 클래스
		// DataOutputStream : 데이터를 쓰는 보조 스트림 클래스
		FileOutputStream fos=null;
		DataOutputStream dos=null;
		
		// 데이터 파일 불러오기..
		
		try {
			
			fos = new FileOutputStream(dtfile);
			dos = new DataOutputStream(fos);
			// 데이터를 해당 파일에 쓰기..
			// 홍길동, 95.5(실수), 1(정수)
			dos.writeUTF("홍길동"); // 문자열쓰기..
			dos.writeDouble(95.5); // 실수쓰기
			dos.writeInt(1); // 정수쓰기
			dos.writeUTF("신길동"); // 문자열쓰기..
			dos.writeDouble(80.5); // 실수쓰기
			dos.writeInt(2); // 정수쓰기			
			
			
			
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch(Exception e){
			System.out.println("기타 예외발생");
		}finally{
			try { // 자원 해제..
				dos.flush();//Buff메모리 활용시
				dos.close();
				fos.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
	}

}
