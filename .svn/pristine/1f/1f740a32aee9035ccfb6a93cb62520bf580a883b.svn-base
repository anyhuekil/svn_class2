package javahomework.a26_dongchulchoi;

class Account{
	String name;
	String aName;
	String cal;
	int money;	
	int tot;
	
	Account(String name, String aName){
		this.name=name;
		tot=10000000;
		System.out.println(name+"님의 "+aName+" 계좌입니다.");
		System.out.println("현 통장잔고는 "+tot+"원입니다.");
	}
	
	int withdraw(int money){
		this.money=money;
		this.cal="인출";
		tot-=money;
		return tot; 
	}
	
	int deposit(int money){
		this.money=money;
		this.cal="입금";
		tot+=money;
		return tot;
	}
	
	void calCu(){
		System.out.println(name+"님, "+money+"원 "+cal+"했습니다."+"(현 잔액 : "+tot+"원)");
	}

}


public class A20170419_hw1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Account a1 = new Account("Choi","주택청약");
		
		a1.withdraw(5000);
		a1.calCu();
		a1.deposit(10000000);
		a1.calCu();
	}

}
