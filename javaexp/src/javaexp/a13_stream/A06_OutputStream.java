package javaexp.a13_stream;

import java.io.*;

public class A06_OutputStream {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		InputStream is = System.in;
		
		System.out.println("파일에 저장할 내용 입력:");
		byte[] inputData=new byte[30];
		OutputStream os=null;
		try {
			// read(byte[], 시작index, 마지막index)
			is.read(inputData, 0, 30-2);
			
			String fileName="C:/a01_prog/eclipse/workspace_server/javaexp/src/javaexp/a13_stream/test02.txt";
			os = new FileOutputStream(fileName);
			for(byte b:inputData){
				os.write(b);
			}
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				os.close();
				is.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		
	}

}
