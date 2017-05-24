package javaexp.a13_stream;

import java.util.Scanner;

public class A09_Scanner {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		Scanner 클래스는 생성자에 System.in통해서 입력 처리한다.
		Scanner scan = new Scanner(System.in);
		System.out.print("이름을 입력하세요:");
		String name=scan.nextLine();
		System.out.println("입력한 이름:"+name);
		System.out.print("점수를 입력하세요:");
		int point = scan.nextInt();
		System.out.println("획득한 점수:"+point);
		System.out.print("키를 입력하세요:");
		double height= scan.nextDouble();
		System.out.println("입력한 키:"+height);
		
	}

}
