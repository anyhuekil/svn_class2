package javaexp.a10_api;

public class A06_timecheck {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		long start = System.currentTimeMillis();
		System.out.println("시작 시간:"+start);
		for(int cnt=1;cnt<100000;cnt++){
			System.out.println("카운트:"+cnt);
		}
		long end = System.currentTimeMillis();
		System.out.println("종료 시간:"+end);
		System.out.println("시간차:"+(end-start));
			
	}

}
