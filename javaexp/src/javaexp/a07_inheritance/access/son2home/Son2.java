package javaexp.a07_inheritance.access.son2home;

import javaexp.a07_inheritance.access.woodhome.WoodCutter;

// 다른 package에 WoodCutter를 상속
public class Son2 extends WoodCutter {
	void whatWoodCutterInfo(){
		// public
		System.out.println(weddingAnn);

		// protected 가능..
//		상속관계에 있으면 protected이상의 접근제어는
//		접근이 가능하다.
		System.out.println(cacheInheri);
		// default(같은 패키지)
//		 상속이 있더라도 같은 package가 아니기에 접근 안됨.
//		System.out.println(savingMoney);		
		// private(X) :상속관계에서도 접근이 안된다..
//		System.out.println(privSect);
	}
}

