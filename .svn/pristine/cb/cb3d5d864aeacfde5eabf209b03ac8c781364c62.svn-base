package javahomework.a20_YiSoyoung.a0509;

import java.util.ArrayList;

/* Foods 클래스 : 음식명, 가격
 * 	ArrayList에 3건 넣고 출력(add()이용)
 * 	형식은
 * No 음식명  가격
 * 1  XXX    XX
 * 2  XXX    XX
 * 3  XXX    XX
 */
class Foods{
	private static int cnt = 0;
	private int no;
	private String name;
	private int price;
	public Foods(){}
	public Foods(String name, int price){
		no = ++cnt;
		this.name = name;
		this.price = price;
	}
	@Override
	public String toString() {
		String temp = no+"\t "+name+"\t"+price;
		return temp;
	}
}
public class A02_Exp2 {
	public static void main(String[] args) {
		ArrayList<Foods> foods = new ArrayList<Foods>();
		foods.add(new Foods("불고기덮밥",7000));
		foods.add(new Foods("치즈돈가스",7500));
		foods.add(new Foods("버섯불고기",8000));
		System.out.println("NO\t음식명\t\t가격");
		System.out.println("■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■");
		for(Foods food : foods)
			System.out.println(food);
	}
}
