package javaexp.a13_stream;

import java.io.*;

public class A07_Writer {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String fold="C:/a01_prog/eclipse/workspace_server/javaexp/src/javaexp/a13_stream/";
		String fname=fold+"test03.txt";
		// Writer를 통해서 File에 쓰는 처리..--> FileWriter
		Writer writer=null;
		try {
			// new FileWriter(fname) 순간 IO 발생으로 예외처리 필수
			writer = new FileWriter(fname);
			char[] data = "이마리".toCharArray();
			for(char ch:data){
				writer.write(ch);
			}
			writer.write("\n하이맨~~~");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				// Writer : 문자열 출력 스트림은 내부에 작은
				// 버퍼가 있어서 데이터가 출력되기 전에 버퍼에 쌓였
				// 다가 순서대로 출력한다.
				// 자원해제시, 버퍼에 잔류하고 있는 데이터를 모두
				// 출력 시키고 자원해제 하는 것이 일반적이다.
				writer.flush();
				writer.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
