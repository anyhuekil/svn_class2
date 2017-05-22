package javaexp.a11_thread;

/*
쓰레드의 상태를 출력하는 클래스
 * */
class StatePrintThread extends Thread{
	private Thread targetThread;

	// 생성자를 통해서 필드할당 : Thread 상태값 확인
	public StatePrintThread(Thread targetThread) {
		this.targetThread = targetThread;
	}
	@Override
	public void run() {
		// NEW ==> RUNNABLE ==> TIMED_WAITING 
		//   ==> RUNNABLE ==> TERMINATED
		// 처리 프로세스를 무한 loop
		while(true){
			// 상태값을 받아서 할당  및 출력
			Thread.State state= targetThread.getState();
			System.out.println("타겟 쓰레드 상태:"+state);
			// 만일 Thread가 생성만 했을 때..
			if(state == Thread.State.NEW){
				// start()를 통해서 runnable로 진입.
				targetThread.start();
			}
			// life cycle이 끝나게 되면 break 처리..
			if(state == Thread.State.TERMINATED){
				// 반복문 종료처리..
				break;
			}
			// 일시 정지 상태 처리..0.5
			try {
				// Thread.State.TIMED_WAITING 유발
				Thread.sleep(500);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
}
class TargetThead extends Thread{
	public void run() {
		// loop문을 통해서 임의로 프로그램 실행..
		for(long cnt=0;cnt<1000000000;cnt++){}
		// thread 중지 상태를 발생..
		// 1.5초 중지, Thread.sleep() 예외처리반드시
		try {
			Thread.sleep(1500);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// 다시 실행하는 내용
		for(long cnt=0;cnt<1000000000;cnt++){}		
	}
	
}



public class A04_state {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 현재  NEW
		StatePrintThread  thread01 = new StatePrintThread(new TargetThead());
		// RUNNABLE 상태
		thread01.start();
	}

}
