package javahomework.a20_YiSoyoung.a0421;

/* 1단계 : 
 * 	-맛있는 음식점에 가서 (클래스 생성)
 *      orderFood(가변인자처리)
 *  - 출력내용
 *  	주문하신음식은 : @@
 *  	주문하신음식은 : @@ 가변처리
 *  2단계
 *   - 가게이름을 생성자로 입력받게 처리
 *   - orderFood를 통해서 주문된 음식의 종류에 따라 매핑되어 있는 가격을 계산해서 계산서
 *   	까지 출력처리
 * */
class Restaurant2{
	private String name;
	private int price;
	public Restaurant2(String name) {
		this.name = name;
		price = 0;
	}
	public void orderFood(String ...foods){
		// 우리 식당은 짬봉, 짜장, 볶음밥만 메뉴에 있어
		//짬뽕은 5000원 짜장은 4000원 볶음밥은 5500원으로
		System.out.println(" * "+name+" 식당 주문서 * ");
		System.out.println("********************************");
		for(String food : foods){
			if(food.equals("짬뽕")){
				System.out.println("주문하신 음식은 " + food + "\t5000원");
				price += 5000;
			}else if(food.equals("짜장")){
				System.out.println("주문하신 음식은 " + food + "\t4000원");
				price += 4000;
			}else if(food.equals("볶음밥")){
				System.out.println("주문하신 음식은 " + food + "\t5500원");
				price += 5500;
			}
		}
		System.out.println("********************************");
		System.out.println("총 가격 : "+price);
	}
}
public class Homework0421_1_2Step {
	public static void main(String[] args) {
		Restaurant2 restaurant2 = new Restaurant2("홍콩반점");
		restaurant2.orderFood("짜장","볶음밥");
	}
}
