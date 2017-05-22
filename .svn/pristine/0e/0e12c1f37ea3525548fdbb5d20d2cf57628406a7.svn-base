package javaexp.a11_thread;
/* 숙제:
 * 자판기 - interface
 * 추상메서드 abs
 * 	display(); @@@@을 판매하는 자판기!
 * 	menu(); 1. @@ :@@@원
 * 			2. @@ : @@@원...
 * 
 * 공통메서드 interface
 * insertCoin(입력값) @@@원이 입력되었습니다.
 * choiceMenu (번호나 문자열)
 * outProduct() @@@이 나옵니다.
 * 				잔액은 @@@입니다
 */

import java.util.stream.IntStream;

interface VendSystem{
	int max_userinput = 10000;
	int min_userinput = 0;
	
	void insertCoin(int userMoney);
	void choiceMenu(int ...userPicks);
	void outProduct(int userPick);
}

abstract class Vending implements VendSystem{
	String userName;	
	public int storeMoney;
	public static final String vendName = "라면";
	//String userName = this.getClass().toString();
	public static final String[] meny = {"진라면","해물라면","간짬뽕","불닭라면"};
	public static final int[] menyPrices = {2000, 3400, 2800, 3200 };
	public static final int[] acceptCoin = {100,500,1000,5000,10000,50000};
	
	Vending(String userName){
		this.userName = userName;
		System.out.println(userName + "님 어서오세요! ");
	}
	
	public void showMenu(){
		String menuMsg =  vendName +"파는 기계입니다.\t 현재사용자: " + this.userName;
		for(int idx = 0; idx< meny.length; idx++){
			menuMsg+= "\n"+(idx+1)+ "번 메뉴: " + meny[idx] + "\t 가격: "+ menyPrices[idx]+"원";
		}
		menuMsg+= "\n 가장 맛잇어보이는걸 선택해주세요 \'ㅂ\'// ";
		System.out.println(menuMsg);
	}
	@Override
	public abstract void insertCoin(int userMoney);
	
	public void choiceMenu(int ...userPicks) {
		for(int userPick: userPicks)
			outProduct(userPick);
	}
	
	public void outProduct(int userPick) {
		// TODO Auto-generated method stub
		if(userPick> meny.length){
			System.out.println("error) 제시된 메뉴판중에서 고르셔야합니다!!!");
			showMenu();
		}
		else if(this.storeMoney > menyPrices[userPick-1]){
			this.storeMoney -= menyPrices[userPick-1];
			System.out.println(meny[userPick-1] + "이 나옵니다. 현재  잔여액: "+ this.storeMoney+ "원 보유중");
		}
		else{
			System.out.println("error) 금액을 충분히 입금하셧나요? 현재  총 "+ this.storeMoney+ "원 보유중");
		}
	}
	
}

class User extends Vending{
	String userName;
	User(String userName){
		super(userName);
		this.userName = userName;
	}
	
	@Override
	public void insertCoin(int userMoney) {
		// TODO Auto-generated method stub
		if(IntStream.of(acceptCoin).anyMatch(x -> x == userMoney)){
			this.storeMoney += userMoney;
			System.out.println(userMoney+"원 입금.  총 "+ this.storeMoney+ "원 보유중" );
		}
		else{
			System.out.println("error) "+userMoney+"원짜리는 우리나라 화폐단위에 없습니다." );
		}
	}
}

public class A16_pracExp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		User u01 = new User("홍길동");
		u01.showMenu();
		u01.insertCoin(1000);
		u01.insertCoin(3000);
		u01.insertCoin(5000);
		u01.insertCoin(500);
		u01.choiceMenu(5,1,2);
		User u02 = new User("김놔라");
		u02.showMenu();
		u02.insertCoin(500);
		
	}

}
