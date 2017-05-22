package javaexp.a06_object;
/* 확인예제
 * Mart 클래스 - 물건명, 단가, 갯수, cart()
 * */
class Mart{
	private String name;
	private int unitPrice;
	private int ps;
	public Mart(){}
	public int cart(String name, int unitPrice, int ps){
		this.name = name;
		this.unitPrice = unitPrice;
		this.ps = ps;
		calcu();
		return unitPrice*ps;
	}
	private void calcu(){
		System.out.println("물건명 : "+name + "\t단가 : "+unitPrice+"\t갯수 : "+ps);
	}
}
public class Homework0419_2 {
	public static void main(String[] args) {
		int money = 0;
		Mart homeplus = new Mart();
		money += homeplus.cart("새우깡", 1000, 2);
		money += homeplus.cart("맛난우유", 5000, 2);
		System.out.println("■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■");
		System.out.println(" 마트서 쓴 돈이 총 "+money+"원입니다");
	}
}
