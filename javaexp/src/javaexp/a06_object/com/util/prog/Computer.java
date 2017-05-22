package javaexp.a06_object.com.util.prog;

import javaexp.a06_object.com.util.Pen;

public class Computer {
//	다른 package에 있는 클래스를 호출할 때..
//	1) package명.클래스명으로 선언해야 한다.
	javaexp.a06_object.com.util.Note 
		note01 = new javaexp.a06_object.com.util.Note();
//	2) 사용하고자 하는 package명.클래스명 import하여 활용할 수 있다.
	Pen p = new Pen();
//	** 패키지끼리 접근이 가능할려면 class선언시,
//	@@@ class 클래스명
//	1) 같은 package일때, @@@에 제어자가 없거나 public
//	2) 다른 package일때는 @@@에 public이 선언되어야 한다.
}
