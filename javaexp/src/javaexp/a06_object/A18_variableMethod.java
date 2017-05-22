package javaexp.a06_object;

class GoRestaurant1{
	public void orderFood(String ... foods){
		System.out.print("주문한 음식은!! :");
		for(String food:foods){
			System.out.print(food+",");
		}
		System.out.println();
	}	
}
class GoRestaurant2{
	private String name;
	public GoRestaurant2(String name){
		this.name=name;
	}
	public void orderFood(String ... foods){
		System.out.println("어서오세요!! "+name+"입니다");
		System.out.println("주문한 음식은!! :");
		int tot=0;
		int price=0;
		for(String food:foods){
			if(food.equals("짜장면")) price=4000; 
			if(food.equals("짬뽕")) price=6000;
			if(food.equals("탕수육")) price=12000;
			System.out.print(food+"("+price+"),");
			tot+=price;
		}
		System.out.println();
		System.out.println("총합산:"+tot);
	}	
}
public class A18_variableMethod {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		GoRestaurant1 g1 = new GoRestaurant1();
		g1.orderFood("짜장면");
		g1.orderFood("짜장면","짬뽕");
		GoRestaurant2 g2 = new GoRestaurant2("불나는 짜장!!");
		g2.orderFood("짜장면");
		g2.orderFood("짜장면","짜장면");
		g2.orderFood("짬뽕","짜장면","탕수육");		
	}

}
