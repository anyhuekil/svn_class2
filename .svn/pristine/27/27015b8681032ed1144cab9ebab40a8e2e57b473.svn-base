package javahomework.a20_YiSoyoung.a0426;
/* 자판기 인터페이스(VendingMachine)
 	- 추상메서드 : display() @@@을 판매하는 자판기
 				 menu(); @@ : @@원
 	- 공통메서드 : insertCoin(입력값) @@원이 입력되었습니다
 				 choiceMenu(번호나 문자열)
 				 outProduct() @@이 나옵니다. 잔액은 @@입니다
 * */
interface VendingMachine{
	public static final String MENU = "커피";
	public static final int PRICE = 1500;
	public void display();
	public void menu();
	default void insertCoin(int money){
		System.out.println(money+"원이 입력되었습니다");
	}
	default void chioceMenu(int no){	}
	default void outProduct(){
		System.out.print(MENU+"가 나옵니다");
	}
}
public class A15_annonymous_interface_Homework {
	public static void main(String[] args) {
		VendingMachine vendingMachine = new VendingMachine() {
			int inMoney;
			@Override
			public void menu() {
				System.out.println("1 : "+MENU +" : "+PRICE);
			}
			@Override
			public void display() {
				System.out.println(MENU+"를 판매하는 자판기");
			}
			@Override
			public void insertCoin(int money) {
				inMoney = money;
				VendingMachine.super.insertCoin(money);
			}
			@Override
			public void outProduct() {
				VendingMachine.super.outProduct();
				if(inMoney>PRICE)
					System.out.println((inMoney-PRICE)+"원 잔액입니다");
				else if(inMoney==PRICE)
					System.out.println("잔액이 없습니다");
				else
					System.out.println("잔액이 부족합니다. 꼭 갚으세요");
			}
		};
		vendingMachine.menu();
		vendingMachine.insertCoin(2000);
		vendingMachine.outProduct();
	}
}
