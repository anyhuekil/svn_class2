package javaexp.a13_stream;
/* 1단계 : 아래의 데이터를 prodData.dat에 저장하고 호출
		물건명	가격		갯수
		사과		3000	2
		바나나	4000	2
		배		6000	3
 * 2단계 : Scanner 클래스를 활용하여 위와 같은 데이터를 입력하여 데이터 파일에 저장, 저장된 파일의 데이터를 불러 리스트하는 처리.
 * */
import java.io.*;
import java.util.Scanner;
public class A14_homework0518 {
	public static void main(String[] args) {
		String dataFile = "C:/a01_prog/prodData.dat";
		OutputStream fos = null;
		DataOutputStream dos = null;
		FileInputStream fis = null;
		DataInputStream dis = null;
		Scanner scanner = new Scanner(System.in);
		try{
			fos = new FileOutputStream(dataFile, false);
			dos = new DataOutputStream(fos);
			for(int i=0 ; i<3 ; i++){
				System.out.print("물건명 : ");
				dos.writeUTF(scanner.next());
				System.out.print("가격 : ");
				dos.writeInt(scanner.nextInt());
				System.out.print("갯수 : ");
				dos.writeInt(scanner.nextInt());
			}
			System.out.println("이상 파일 입력 끝. 아래는 입력된 파일을 출력한다");
			fis = new FileInputStream(dataFile);
			dis = new DataInputStream(fis);
			String pName; int price; int ps;
			System.out.println("물건명\t가격\t갯수");
			System.out.println("■■■■■■■■■■■■■■■■■■■■■■■■■■■■");
			for(int i=0 ; i<3 ; i++){
				pName = dis.readUTF();
				price = dis.readInt();
				ps = dis.readInt();
				System.out.println(pName+"\t"+price+"\t"+ps);
			}
		}catch (IOException e) {
			System.out.println(e.getMessage());
		}finally {
			try{
				if(dis!=null){ dis.close(); }
				if(fis!=null){ fis.close(); }
				if(dos!=null){ dos.flush(); dos.close(); }
				if(fos!=null){ fos.flush(); fos.close(); }
			}catch (Exception ignore) { }
		}
		scanner.close();
	}
}
