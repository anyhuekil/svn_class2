/* 숙제
 은행에 가서(2단계)
 1) Account (계좌계정)
 2) field명 계정명, 입금액, 출금액, 총잔액, 날짜, 내용
 3) 생성자1 계정명 입력
 4) 생성자2 계정명, 초기입금액
 5) save(입금액, 날짜)
 		- 계산처리
 		- return 입금된 금액
 6) withdarw(출금액, 날짜)
 7) print()
 		날짜 용돈 입금액 출금액 총잔액

*/
package javahomework.a13_SeoJunghyo;

class Account{
	String name;
	int depositMoney;
	int withdrawMoney;
	int nowMoney;

	
	Account(String name){
		this.name=name;
	}
	Account(String name, int nowMoney){
		this.name=name;
		this.nowMoney=nowMoney;
	}
	int deposit(int depositMoney, String date, String who){
		this.nowMoney+=depositMoney;
		print(date, "DEPOSIT", depositMoney, withdrawMoney, nowMoney, who);
		return nowMoney;
	}
	int deposit(int depositMoney, String date){
		this.nowMoney+=depositMoney;
		print(date, "DEPOSIT", depositMoney, withdrawMoney, nowMoney, name);
		return nowMoney;
	}
	int withdraw(int withdrawMoney, String date, String who){
		this.nowMoney-=withdrawMoney;
		print(date, "WITHDROW", depositMoney, withdrawMoney, nowMoney, who);
		return nowMoney;
	}
	int withdraw(int withdrawMoney, String date){
		this.nowMoney-=withdrawMoney;
		print(date, "WITHDROW", depositMoney, withdrawMoney, nowMoney, name);
		return nowMoney;
	}
	void print(String date, String staus, int depositMoney, int withdrawMoney, int nowMoney, String name){
		if(nowMoney<0){
			System.out.println(name+"님. 잔고가 "+withdrawMoney+"원 부족하여 출금을 할수가 없습니다.");
		}else{
			System.out.println(date+"\t\t"+staus+" \t"+depositMoney+"$\t\t"+withdrawMoney+"$\t\t"+nowMoney+"$"+"\t\t"+name);
		}
	}
}	
public class a02_homework_bank2_0419 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Account myAccount = new Account("Ronaldo");
		System.out.println("\n"+myAccount.name+"'s Account. BALANCE : "+myAccount.nowMoney+"$");
		System.out.println("DATE\t\t\tSTATUS\t\tDEPOSIT\t\tWITHDRAW\tBALANCE\t\tCUSTOMER");
		myAccount.deposit(20000, "2017-12-17");
		myAccount.deposit(30000, "2017-12-18");
		myAccount.withdraw(10000, "2017-12-18");
		myAccount.withdraw(30000, "2017-12-18");
		myAccount.deposit(30000, "2017-12-18", "Messi");
		myAccount.deposit(30000, "2017-12-18", "Rooney");
		myAccount.deposit(300000, "2017-12-18", "Real Madrid");
		
		Account rivalAccount = new Account("Messi",200);
		System.out.println("\n"+rivalAccount.name+"'s Account. BALANCE : "+rivalAccount.nowMoney+"$");
		System.out.println("DATE\t\t\tSTATUS\t\tDEPOSIT\t\tWITHDRAW\tBALANCE\t\tCUSTOMER");
		rivalAccount.deposit(200,"2017-04-12");
		rivalAccount.deposit(200,"2017-04-12");
		rivalAccount.deposit(20000,"2017-04-12","Neymar");
		rivalAccount.withdraw(20000,"2017-04-12","Neymar");
			
		}

	}


