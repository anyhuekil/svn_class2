package javaexp.a13_stream;

import java.io.DataInputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

public class A13_DataInputStream {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
// 파일에 있는 데이터 가져오기..
//		1. FileInputStream : 
//		     파일에 있는 내용 가져오는 기본 Stream
//		2. DataInputStream 
//		    데이터 내용 가져오는 보조 Stream
		String dtfile="C:/a01_prog/eclipse/workspace_server"
				+ "/javaexp/src/javaexp/a13_stream/dataFile.dat";
		// 선언 try{ 객체할당 } : finally{}에서 자원해제를 해야하기
		// 때문에.
		FileInputStream fis = null;
		DataInputStream dis = null;
		try {
			fis=new FileInputStream(dtfile);
			dis = new DataInputStream(fis);
			String name="";
			double score=0.0;
			int num=0;
			
			for(int cnt=1;cnt<=2;cnt++){
				name=dis.readUTF();
				score=dis.readDouble();
				num=dis.readInt();
				System.out.print(name+"\t");
				System.out.print(score+"\t");
				System.out.print(num+"\n");
			}
			
			
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch(Exception e){
			System.out.println("기타 예외발생..");
		}finally{
			try {
				fis.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		
	}

}
