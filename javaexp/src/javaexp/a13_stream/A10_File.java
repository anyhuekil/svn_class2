package javaexp.a13_stream;

import java.io.File;
import java.io.IOException;

public class A10_File {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		File객체 생성
//		1) 파일생성:생성자에 경로명과 파일명 입력
		String dir="C:/a01_prog/eclipse/workspace_server/javaexp/src/javaexp/a13_stream/test/";
		String fileName="a03_file.txt";
		
		File file01 = new File(dir+fileName);
//		파일이 존재하는지 여부 check : .exists()
		System.out.println("파일 존재여부:"+file01.exists());
		if(!file01.exists()){
			// 파일 생성 메서드 : .createNewFile()
			// 새로운 파일 생성(IO) 예외처리
			try {
				file01.createNewFile();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
//		2) 디렉토리생성:생성자에 경로명 입력
		File dir01 = new File(dir);
//		list() : 디렉토리인 경우에 포함된 파일의 이름을
//		문자열 배열로 가져옮.
		String []list = dir01.list();
		System.out.println("파일 리스트!!");
		for(String fname:list){
			// 포함된 파일의 이름
			System.out.println(fname);
		}
		String dir2="C:/a01_prog/eclipse/workspace_server/javaexp/src/javaexp/a13_stream/";
		File dir02 = new File(dir2);
//		listFiles() : 디렉토리 내 파일 객체..
		File[] files = dir02.listFiles();
		System.out.println("이름\t크기\t타입");
		for(File file:files){
			// getName() : 파일 이름
			System.out.print(file.getName()+"\t");
			// length() : 파일의 크기
			System.out.print(file.length()+"\t");
			// 파일의 형태(dir/file)
			// isDirectory() : 디렉토리 여부
			if(file.isDirectory()){
				System.out.print("디렉토리\n");
			}else{
				System.out.print("파일\n");
			}
		}
		
		
		
	}

}
