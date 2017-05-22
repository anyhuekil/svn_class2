package javaexp.a07_inheritance.access.woodhome;

public class Son1 extends WoodCutter {
	void whatWoodCutterInfo(){
		// public
		System.out.println(weddingAnn);
		// default(같은 패키지)
		System.out.println(savingMoney);
		// protected 가능..
		System.out.println(cacheInheri);
		// private(X) :상속관계에서도 접근이 안된다..
//		System.out.println(privSect);
	}
}
