package javaexp.a09_exception;

public class A03_basicExp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 1단계
		try{
			System.out.println("id를 입력하세요!");
//			String id=null;
			String id="himan";
			System.out.println("입력된 id:"+id.toString());
		}catch(NullPointerException e){
			System.out.println("아이디가 입력 되지 않았습니다!");
		}
		System.out.println("1단계종료");
		// 2단계
		try{
			System.out.println("id와 password를 입력하세요!");
//			String id=null;
			String id="himan";
//			String pass=null;
			String pass="7777";
			// 입력이 되지 않았을 때, 예외 던져 짐.
			if(id.equals("himan")&&pass.equals("7777")){
				System.out.println(id+"님 환영합니다.");
			}else{
				System.out.println("인증되지 않는 계정입니다!");
			}
		}catch(NullPointerException e){
			System.out.println("아이디 또는 password가 입력 되지 않았습니다!");
		}	
		System.out.println("2단계종료");
		
	}

}
