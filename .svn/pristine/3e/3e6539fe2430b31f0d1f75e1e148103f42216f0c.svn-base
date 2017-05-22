package javahomework.a11_baeksangwoo;

import java.util.ArrayList;

public class homework_0509 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ArrayList<String> sellList = new ArrayList<String>();
		ArrayList<String> buyList = new ArrayList<String>();
		String fruitList[] = {"apple", "banana", "strawberry", "orange", "watermelon"};	
		
		for(int i=0; i<fruitList.length; i++){
			sellList.add(i,fruitList[i]);
		}
		System.out.println("1단계 sellLists");
		for(String sl : sellList) System.out.print(sl+" ");
		System.out.println();
		
		buyList.add(fruitList[0]);
		buyList.add(fruitList[2]);
		sellList.remove("apple");
		sellList.remove("strawberry");
		
		System.out.println("2단계 buyList ");
		for(String bl : buyList) System.out.print(bl+" ");
		System.out.println();
		System.out.println("2단계 sellList ");
		for(String sl : sellList) System.out.print(sl+" ");
		System.out.println();
		
		sellList.set(0, "apple");
		System.out.println("3단계 sellList ");
		for(String sl : sellList) System.out.print(sl+" ");
		System.out.println();
		
		buyList.remove("apple");
		buyList.remove("strawberry");
		System.out.println("4단계 buyList ");
		for(String bl : buyList) System.out.print(bl+" ");
		System.out.println("과일 다 먹음");
		
		int whichFruit = (int)(Math.random()*3);
		buyList.add(sellList.get(whichFruit));
		System.out.println("사은품으로 받은 과일명 : "+sellList.get(whichFruit));
		
		
	}
}
/* 사과 바나나 딸기 오렌지 수박 저장 
 * 장보는 사람이 사과와 딸기 구매
 * 
 * remove, add
 * 바나나를 -> 사과로 변경 
 * 장보는 사람이 사과와 딸기 다 먹음
 * 장보는 사람이 가지고 있는 과일이 없다면 과일가게에서 남은 과일 중 하나를 장보는 사람에게 사은품 
 * 
 * 
 * 
 */
