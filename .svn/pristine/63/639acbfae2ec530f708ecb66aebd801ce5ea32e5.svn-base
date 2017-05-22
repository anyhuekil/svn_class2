package javaexp.a11_thread;
/*
쓰레드 프로그램은 하나의 프로세스에서 여러 멀티태스킹할 수
있는 쓰레드를 만들어서 효과적이고 빠르게 처리할 수 있게
도와 준다.
은행에 가서 한사람이 절차가 끝나기 까지, 다른 사람이 절차 진행하지
못한다면 비효율적이고 시간도 많이 허비하게 된다.
thread라는 단위 절차가 있어 각각의 단계별로 여러 업무담당자가
처리할 수 있다면, 많은 사람이 동시다발적으로 업무를 처리할 수 있게
된다.
 * */
/*
1.  implements로 Thread 처리..
 * */
class Person01{}
// implements한 내용은 추가 상속이 가능
class Account extends Person01 implements Runnable{
	private String name;	
	public Account(String name) {
		this.name = name;
	}
	@Override
	public void run() {
		// TODO Auto-generated method stub
		for(int workProc=1;workProc<=10;workProc++){
			System.out.println(name+"님이 "+workProc+"번째 절차를 처리합니다!!");
		}
	}	
}
/*
 2. extends Thread를 쓰는 경우
 1) 클래스가  Thread에 상속되었기에..
 2) 클래스와 객체를 바로 활용할 수 있다.
 * */
// extends Person 로 자바에서는 단일 상속만 가능하기에 추가
// 상속이 불가능하다.
// 추가상속이 필요한 경우에는 Runnable interface를 implements
// 해야한다.
class Traveler extends Thread{
	private String name;
	public Traveler(String name) {
		this.name = name;
	}
	@Override
	public void run() {
		String []locs={"서울","대전","대구","부산","남해안","광주","전주"};
		for(int idx=0;idx<locs.length;idx++){
			System.out.println(name+"님이 "+locs[idx]+"로 여행을 갑니다!!");
		}
	}
	
}
public class A01_basic {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 1. Runnable을 implements한 Thread 처리 단계
		//    1) 객체 생성
		//    2) Thread의 생성자로 해당 객체전달
		Account acc01 = new Account("홍길동");
		Thread t1 = new Thread(acc01);
		//    3) start()로 run()를 호출
		t1.start();
		Thread t2 = new Thread(new Account("신길동") );
		t2.start();		
		new Thread(new Account("마길동") ).start();
		// Thead 상속은 바로 활용 가능..
		Traveler t01= new Traveler("이정남");
		Traveler t02= new Traveler("오하나");
		Traveler t03= new Traveler("방미숙");
		t01.start();
		t02.start();
		t03.start();
		
	}

}
