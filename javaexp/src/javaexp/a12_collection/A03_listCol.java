package javaexp.a12_collection;

import java.util.ArrayList;

public class A03_listCol {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ArrayList<String> favors=new ArrayList<String>();
		favors.add("핸드폰"); // add:추가
		System.out.println("add");for(String favor:favors) System.out.println(favor);
		favors.add(0,"자전거"); // 특정 위치에 추가.
		System.out.println("add(idx,)");for(String favor:favors) System.out.println(favor);
		System.out.println("get(1)"); System.out.println(favors.get(1));
		// 삭제 remove(index)
		System.out.println("remove(0)"); favors.remove(0);
		System.out.println("삭제후");for(String favor:favors) System.out.println(favor);
		// 현재 컬렉션이 비어 있는지 여부 조사 : isEmpty()
		System.out.println("isEmpty()"); System.out.println(favors.isEmpty());
		// 남은 객체 삭제 처리 후, 확인
		favors.remove(0);System.out.println(favors.isEmpty());
		favors.add("시계"); for(String favor:favors) System.out.println(favor);
		// set(index, 변경할 객체)
		System.out.println("변경");favors.set(0, "컴퓨터");
		for(String favor:favors) System.out.println(favor);
		
		

		
		
		
	}

}
