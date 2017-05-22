package javahomework.a20_YiSoyoung.a0509;

import java.util.ArrayList;

/* Food 클래스 : 음식명, 가격
 * 	ArrayList에 3건 넣고 출력(add()와 get()이용)
 * 	형식은
 * No 음식명  가격
 * 1  XXX    XX
 * 2  XXX    XX
 * 3  XXX    XX
 */
class Food{
	private String name;
	private int price;
	public Food(){}
	public Food(String name, int price){
		this.name = name;
		this.price = price;
	}
	@Override
	public String toString() {
		String temp = "\t "+name+"\t"+price;
		return temp;
	}
}
public class A02_Exp {
	public static void main(String[] args) {
		ArrayList<Food> foods = new ArrayList<Food>();
		foods.add(new Food("불고기덮밥",7000));
		foods.add(new Food("치즈돈가스",7500));
		foods.add(new Food("버섯불고기",8000));
		System.out.println("NO\t음식명\t\t가격");
		System.out.println("■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■");
		for(int idx=0 ; idx<foods.size() ; idx++)
			System.out.println(""+(idx+1)+foods.get(idx));
	}
}
