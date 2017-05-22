package javaexp.a06_object;
/*
은행(1단계)
– 계좌
 field : 계좌명, (총액)
 생성자(계좌명 입력)
 input( 입금액 )
– @@@님 @@@원 입금했습니다.(현잔액@@)
 output( 출금액)
– @@@님 @@@원 출금했습니다.(현잔액@@)

*/
class Bank{
	String accountname;
	int total;
	int inprice;
	int outprice;
	
	Bank(String accountname){
		this.accountname=accountname;
	}
	int money(String accountname, int inprice, int outprice){
		this.accountname=accountname;
		this.inprice=inprice;
		this.outprice=outprice;
		total=inprice+(-outprice);
		return total;
	}
	void input(){
		System.out.print(accountname+"님"+ inprice+"원 입금했습니다.");
		System.out.print("(현잔액"+total+")");
		this.total = total;
		
	}
	void output(){
		System.out.print(accountname+"님"+ outprice+"원 출금했습니다.");
		System.out.print("(현잔액"+total+")");
		this.total = total;
	}
	
}
public class Method_exp_lv1_2 {

	public static void main(String[] args) {
			// TODO Auto-generated method stub
			Bank b = new Bank("윤영주");
			b.money("윤영주", 12000, 0);
			b.input();
			b.money("윤영주", 0, 20000);
			b.output();
	}

}





