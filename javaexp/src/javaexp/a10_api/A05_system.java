package javaexp.a10_api;

public class A05_system {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 임의 상태값이 5일때 종료하고.
		// 그외에는 Security예외발생
		System.setSecurityManager(new SecurityManager(){
			@Override
			public void checkExit(int status) {
				// TODO Auto-generated method stub
				super.checkExit(status);
				if(status!=5){
					throw new SecurityException();
				}
			}		
		});
		for(int cnt=0;cnt<=10;cnt++){
			// count값 출력
			System.out.println("카운트:"+cnt);
			// jvm 종료 요청
			try{
				System.exit(cnt);
			}catch(SecurityException e){
				System.out.println("예외 처리 메시지:"+e.getMessage());
			}
		}
		
	}

}
