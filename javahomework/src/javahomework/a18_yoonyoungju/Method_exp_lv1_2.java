package javahomework.a18_yoonyoungju;
/*
은행
 - 계좌
	field: 계좌명, (총액)
	생성자(계좌명 입력)
	input( 입금액) 
 @@@ 님 @@@ 원 입금했습니다 ( 현잔액 @@)
	output(출금액)
@@@ 님 @@@ 원 출금했습니다 ( 현잔액 @@)

*/
class Bank{
	String accountname;
	int total;
	int inprice;
	int outprice;
	
	Bank(String accountname){
		this.accountname=accountname;
	}
	int input(int inprice){
		return this.inprice=inprice;
	}
	int output(int outprice){
		return this.outprice=(-outprice);
	}
}
public class Method_exp_lv1_2 {
	public static void main(String[] args) {
			// TODO Auto-generated method stub
			Bank b = new Bank("윤영주");
			int sum=b.input(12000);
			System.out.println(b.accountname+"님"+b.inprice+"원 입금했습니다 ( 현잔액"+sum+")");
			sum += b.output(5000);
			System.out.println(b.accountname+"님"+b.outprice+"원 출금했습니다 ( 현잔액"+sum+")");
	}
}





