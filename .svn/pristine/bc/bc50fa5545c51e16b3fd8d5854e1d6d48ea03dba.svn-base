package javahomework.a04_KimDongBeom;

class Account_1{
	String aname;
	int totMoney;
	
	Account_1(String aname){
		this.aname = aname;
	}
	void input(int num){
		System.out.println(aname+" 님 "+num+" 원 입금했습니다.");
		System.out.println("총 잔액 : "+(totMoney+=num));
	}
	void output(int num){
		System.out.println(aname+" 님 "+num+" 원 출금했습니다.");
		System.out.println("총 잔액 : "+(totMoney-=num));
	}
}

public class A0419_Account_1st {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Account_1 a1 = new Account_1("AAA");
		Account_1 a2 = new Account_1("BBB");
		
		a1.input(5000);
		a1.output(4000);
		
		a2.input(5000);
		a2.output(3500);
	}

}
