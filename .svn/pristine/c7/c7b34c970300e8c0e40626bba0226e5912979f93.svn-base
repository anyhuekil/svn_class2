package javaexp.a12_collection;

import java.util.HashSet;
import java.util.Iterator;

public class A06_SetCol {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
// Set은 중복을 허용하지 않고, 순서확보하지 못 한다.
//		HashSet은 Set인터페이스의 대표적인 실제 클래스
		HashSet<String> set = new HashSet<String>();
		// add 통해서 set주머니에 동전, 지폐 삽입.
		set.add("100원");
		set.add("100원");
		set.add("500원");
		set.add("500원");
		set.add("1000원");
		System.out.println("총 주머니에 있는 객체 수:"+set.size());
//		Set은 Iterator를 통해서 가져올 수 있다.
//		iterator() 메서드 활용..
		Iterator<String> iter=set.iterator();
		String elem="";
		while(iter.hasNext()){ // 객체 수만큼 loop
			elem=iter.next(); //  단위 객체를 가져옮
			System.out.println(elem);
		}

		
		
	
	}

}
