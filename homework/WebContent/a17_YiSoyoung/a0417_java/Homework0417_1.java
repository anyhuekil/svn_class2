package javaexp.a05_reference;
/* 확인예제
 *  args값으로 id와 password를 받아
 *  id는 himan, password는 7777을 입력받으면 인증 성공, 아니면 인증실패
 * */
public class Homework0417_1 {
	public static void main(String[] args) {
		if(args.length ==2){
			String id = new String(args[0]);
			String pw = new String(args[1]);
			if(id.equals("himan")&&pw.equals("7777")){
				System.out.println("★ ☆ ★ ☆ ★ 인증성공 ★ ☆ ★ ☆ ★");
			}else{
				System.out.println("＠ ＠ ＠ ＠ ＠ 인증실패 ＠ ＠ ＠ ＠ ＠");
			}
		}else{
			System.out.println("id와 password를 제대로 입력하지 않았네요");
		}
	}
}
