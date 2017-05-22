package javaexp.a11_thread;
class Person{}
class Customer01 implements Runnable {
	private String name;
	public Customer01(String name) {
		this.name = name;
	}
	@Override
	public void run() {
		// TODO Auto-generated method stub
		for(int workProc=1;workProc<=10;workProc++){
			System.out.println(name+" 고객님이 "+workProc+"번째 절차를 처리합니다!!");
		}		
	}	
}

class Customer02 implements Runnable{
	private String name;
	
	public Customer02(String name) {
		this.name = name;
	}


	@Override
	public void run() {
		// TODO Auto-generated method stub
		String []prc={"로그인","계정확인","물건구매",
				    "장바구니확인","결재","배송처리","로그아웃"};
		for(int  prodIdx=0;prodIdx<prc.length;prodIdx++){
			System.out.println(name+" 고객님이 "+(prodIdx+1)+"번째 절차 "
					+prc[prodIdx]+"를 처리합니다!!");
		}		
	}	
}
public class A02_basicExp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Customer01[] arrayCus={new Customer01("이정민"),
						new Customer01("오동수"),new Customer01("이미영")};
		Thread t=null;
		for(Customer01 cus:arrayCus){
			t= new Thread(cus);
			t.start();
		}
		
		
		
		Customer02[] arrayCus2={new Customer02("이정민"),
				new Customer02("오동수"),new Customer02("이미영")};
		Thread t2=null;
		for(Customer02 cus:arrayCus2){
			t2= new Thread(cus);
			t2.start();
		}		
		
	}

}
