package javaexp.a06_object.access.story.friendship;

public class Deer {
	void askWhereClothe(){
		WoodCutter w = new WoodCutter();
		//cacheClothe는 접근제어자가 private 이기에
		// 같은 package이더라도 접근이 불가능하다.!!
//		System.out.println(w.cacheClothe);
		// public 선언한 필드접근가능.(같은 패키지는 당연)
		System.out.println(w.weddingAnnounce);
	}
}
