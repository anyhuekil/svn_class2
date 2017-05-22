package javaexp.a10_api;

class Counter{
	private int cnt;
	public Counter(int cnt) {
		this.cnt = cnt;
	}
	@Override
	protected void finalize() throws Throwable {
		// TODO Auto-generated method stub
		super.finalize();
		System.out.println(cnt+"번 객체가 소멸자 finalized()가 호출됨!");
	}
	
}
public class A04_finalized {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Counter count=null;
		for(int cnt=1;cnt<=100;cnt++){
			// 생성
			count = new Counter(cnt);
			// 쓰레기로 만듦
			count = null;
			// 쓰레기 수집기를 실행 요청..
			// 객체의 finalize()가 호출됨..
			System.gc();
		}
	}

}
