package javaexp.a00_basic;

import java.util.ArrayList;

public class A09_Collections {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*  Collection 자바에서는 여러 메모리 구조에 의해
 *   동적인 객체가 따로 지원한다.
 * */
		// 배열이 한번 만들어 지면, 
		// 이 배열로 새로 객체나 변수를 추가할려면, 
		// 새로운 배열을 선언해야 하는 고정적인 특성이 배열에 있다.
		String []names={"홍길동","김길동","신길동"};
		// 동적배열을 위하여 객체가 지원한다.
		// 1) ArrayList<Type>    class명위에 import java.util.ArrayList;
		//   선언.
		ArrayList<String> list = new ArrayList<String>();
		// add(추가객체)
		list.add("사과");
		list.add("바나나");
		list.add("딸기");
		// .size() :  객체의 크기..
		// .get(index) : 해당 객체를 가져옮
		for(int idx=0;idx<list.size();idx++){
			System.out.println( list.get(idx) );
		}
		// .remove(index) : 특정 객체를 삭제 시킴
		// .set(index, 객체) : 특정 객체를 변경함..
		list.remove(0);//첫번째 객체를 삭제..
		System.out.println("삭제 후!!!");
		for(int idx=0;idx<list.size();idx++){
			System.out.println( list.get(idx) );
		}		
		list.set(1, "오렌지");//두번째 객체를 오렌지로 변경함..
		System.out.println("변경 후!!!");
		for(int idx=0;idx<list.size();idx++){
			System.out.println( list.get(idx) );
		}		
	}

}
