package javahomework.a20_YiSoyoung.a0427;

import java.util.Scanner;

/* 확인예제
 * 1단계) id를 입력하세요
		id=null; 입력이 안 된 경우, id="himan";
	- catch블럭엔 id값이 입력되지 않았습니다.
 * 2단계) id와 pw 다 처리
 * */
public class A01_exception_homework {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		String id, pw;
		System.out.print(" id ☞ ");
		id = sc.nextLine();
		System.out.print(" password ☞ ");
		pw = sc.nextLine();
		if(id.equals("")||pw.equals("")){
			// id나 pw를 입력하지 않으면 강제로 예외 발생.
			try {
				throw new Exception("id 또는 password를 입력하지 않았습니다");
			} catch (Exception e) {
				System.out.println(e.getMessage());
				id = "himan";
			}
		}
		System.out.println("id : "+id+"\t pw : "+pw);
		sc.close();
	}
}
