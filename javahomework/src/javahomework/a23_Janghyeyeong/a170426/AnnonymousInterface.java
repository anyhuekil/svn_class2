package javahomework.a23_Janghyeyeong.a170426;
/*
자판기 (인터페이스)
추상메서드
display();	@@@@을 판매하는 자판기
menu(); 	1. @@ : @@@@원….
공통메서드
insertCoin(입력값) @@@ 원이 입력되었습니다.
choiceMenu(번호나 문자열)
outProduct() @@@이 나옵니다. 잔액은 @@@입니다.
*/
interface VendingMachine{
	String NAMES[] = {"아메리카노","캬라멜마끼아또","카페라떼","아포가토"};
	int PRICE[] ={2000,3000,4000,5000};
	
	public void display();
	public void menu();
	default void outProduct(int insertCoin, int choiceMenu){
		System.out.println(insertCoin+"원이 입력되었습니다.");
		if(insertCoin>=PRICE[choiceMenu-1]){
			System.out.println("\""+NAMES[choiceMenu-1]+"\"가 나옵니다.");
			System.out.println("잔액은 "+(insertCoin-PRICE[choiceMenu-1])+"원 입니다.");
		}else
			System.out.println("잔액이 부족합니다.");
		
	};
}

public class AnnonymousInterface {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
		VendingMachine coffee = new VendingMachine(){
	
			@Override
			public void display() {
				// TODO Auto-generated method stub
				System.out.println("###커피를 판매하는 자판기###");
			}

			@Override
			public void menu(){
				for(int i=0; i<NAMES.length; i++){
					System.out.println((i+1)+". "+NAMES[i]+" : "+PRICE[i]);
					if(i==NAMES.length-1){
						System.out.println("\n메뉴의 숫자를 눌러주세요.");
					}
				}
			}
		};
		
		coffee.display();
		coffee.menu();
		coffee.outProduct(5000, 4);
		coffee.outProduct(3000, 4);
	}

}
