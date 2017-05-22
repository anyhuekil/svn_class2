package javahomework.a22_JangEunA;

/*
은행(1단계)
–계좌
field : 계좌명, (총액)
생성자(계좌명 입력)
input( 입금액 )
– @@@님 @@@원 입금했습니다.(현잔액@@)
output( 출금액)
– @@@님 @@@원 출금했습니다.(현잔액@@)
*/

class Bank{
	String accountName;
	int sum;
	int inputMoney;
	int outputMoney;
	
	Bank(String accountName){
		this.accountName=accountName;
	}
	void input(int inputMoney){
		this.inputMoney=inputMoney;
		sum+=(inputMoney);
		System.out.println(accountName+ "님이 " + inputMoney + "원 입금했습니다. (현잔액: " + sum + ")" );
	}
	void output(int outputMoney){
		this.outputMoney=outputMoney;
		sum-=outputMoney;
		System.out.println(accountName+ "님이 " + outputMoney + "원 출금했습니다. (현잔액: " + sum + ")" );
	}

}

public class H0419_1 {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Bank b01 = new Bank("장은아");
		b01.input(20000);
		b01.output(10000);
		
	}
}
