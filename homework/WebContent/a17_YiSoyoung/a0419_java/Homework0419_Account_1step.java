package javaexp.a06_object;

import java.util.Date;

/*  은행에 가서 1단계
 *  Account1 : 계정명, 총잔액
 *  생성자- 계정명으로 생성
 *  input(입금액){
 *  	@@님 @@원 입금했습니다(현잔액:@@@)
 *  }
 *  output(출금액)
 *  	@@님 @@원 출금했습니다(현잔액:@@@)
 * */
class Account1{
	private String accountName; //계정명
	private int balance; //잔액
	public Account1(String accountName){
		this.accountName = accountName;
		System.out.println("★ ☆ ★ "+ accountName+"계좌을 열어 주셔서 감사합니다 ★ ☆ ★");
	}
	public void input(int inMoney){
		balance+=inMoney;
		System.out.println(accountName+"님\t"+inMoney+"원 입금하셨습니다(현잔액:"+balance+"원)");
	}
	public void output(int outMoney){
		if(balance>=outMoney){
			balance -= outMoney;
			System.out.println(accountName+"님\t"+outMoney+"원 입금하셨습니다(현잔액:"+balance+"원)");
		}else{
			System.out.println("@ @ 잔액이 부족하여 "+outMoney+"원 출금이 불가능합니다(현잔액:"+balance+"원) @ @");
		}
	}
}
public class Homework0419_Account_1step {
	public static void main(String[] args) {
		Account1 acc_hong = new Account1("홍길동_신한_110-12-123");
		acc_hong.input(3000);
		acc_hong.output(5000);
		acc_hong.input(6000);
		acc_hong.output(5000);
	}
}
