package javaexp.a00_basic;

//쓰레드 처리
// class 클래스 extends Thread{}
class Come extends Thread{
	// 쓰레드 처리하는 run()을 재정의!!
	public void run(){
		for(int cnt=0;cnt<1000;cnt++){
			System.out.println("이리 오시오!!!");
		}
	}
}
class Go extends Thread{
	public void run(){
		for(int cnt=0;cnt<1000;cnt++){
			System.out.println("저리  가시오! 당장 나가시오!!!!");
		}
	}
}
class Bank extends Thread{
	String account;
	Bank(String account){
		this.account = account;
	}
	public void run(){
		for(int cnt=1;cnt<1000;cnt++){
			System.out.println(account+"님 "+cnt+"번 절차를 진행합니다!!");
		}
	}
}


public class A11_Thread {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Bank b1 = new Bank("홍길동");
		Bank b2 = new Bank("김길동");
		Bank b3 = new Bank("신길동");
		b1.start();
		b2.start();
		b3.start();
		/*
		Go g = new Go();
		Come c = new Come();
		// Thread 객체의 run는 start()로 호출된다.
		g.start();
		c.start();
		*/
/*
하나의 프로세스내에서 여러 프로그램을 효과적으로 처리할 때가,
프로그램에서는 많이 발생한다.
이것을 Thread라고 하는데, 보통 Server vs Client프로그램이나,
동시적으로 많은 내용을 처리해야 하는 프로그램, 네트워크프로그램에서
활용되고 있다.
순차확보가 정확하게 되지는 않으나, time slicing 방식으로 빠르고
효과적으로 처리할 때 필요한 프로그램이다.
 * */
	}

}
