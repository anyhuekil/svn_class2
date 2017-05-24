package javaexp.a12_collection;

import java.util.ArrayList;
class Person{
	String name="기본값";
}
class Woman{
	private String name;
	public Woman(String name) {
		this.name = name;
	}
	public String getName() {
		return name;
	}
}
public class A01_basic {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/* 제너릭을 사용할지 않았을 때.
 * */		
		ArrayList list = new ArrayList();
		list.add("홍길동");  // 다양한 객체들을 할당 Object
		list.add(new Person());
		System.out.println(list.get(0));
		// 해당 객체의 멤버를 사용하지 못함.
		//  ==> 상속한 상위 객체이기 때문에.
//		System.out.println(list.get(1).name);
//		사용할려면 type casting이 필요하다.
		Person p = (Person)(list.get(1));
		System.out.println(p.name);
//  동일한 객체type으로 ArrayList를 사용할 필요가 있다.
//	이 때, 선언하는 것이 제너릭이다.
//		1) String 제너릭 선언
		ArrayList<String> fruits = new ArrayList<String>();
		fruits.add("사과");
		fruits.add("바나나");
//		fruits.add(new Person()); 다른 객체type은 할당하지 못 한다.
//		2) Woman 제너릭 선언
		ArrayList<Woman> ladies = new ArrayList<Woman>();
//		ladies.add("사과"); 다른  객체type 할당X
		ladies.add(new Woman("줄리아로봇"));
		ladies.add(new Woman("레이디가가"));
		ladies.add(new Woman("김가을"));
		// 제너릭을 선언했기 때문에, type casting 없이도,
		// 해당 멤버를 사용할 수 있다.
		System.out.println(ladies.get(0).getName());
		System.out.println(ladies.get(1).getName());
		System.out.println(ladies.get(2).getName());
		
		

	}

}
