package javaexp.a06_object;

import java.util.Date;

/*  은행에 가서 2단계
 *  Account2 : 계정명, 입금액, 출금액, 총잔액
 *  생성자2개 - 계정명, 계정명과 입금액
 *  save(입금액, 내용, 날짜){
 *  	계산처리
 *  	return 입금된 금액
 *  }
 *  withdraw(출금액, 내용, 날짜)
 *  print()
 *  	날짜 용돈 [@@@] [@@@] [@@@] */
class Account2{
	private String accountName; //계정명
	private int inMoney;
	private int outMoney;
	private String memo; //내용
	private Date date;
	private int balance; //잔액
	public Account2(String accountName){
		this.accountName = accountName;
		System.out.println("★ ☆ ★ "+ accountName+"계좌을 열어 주셔서 감사합니다 ★ ☆ ★");
	}
	public Account2(String accountName, int balance){
		this(accountName);
		this.balance = balance;
	}
	public int save(int inMoney, String memo, Date date){
		this.inMoney = inMoney;
		this.memo = memo;
		this.date = date;
		balance+=inMoney;
		return inMoney;
	}
	public void withdraw(int outMoney, String memo, Date date){
		if(balance>=outMoney){
			this.outMoney = outMoney;
			this.memo = memo;
			this.date = date;
			balance -= outMoney;
		}else{
			System.out.println("@ @ 잔액이 부족한 주제에 "+outMoney+"원 출금하려 했습니다. 불가능합니다(현잔액:"+balance+"원) @ @");
		}
	}
	public void print(){
		System.out.printf(accountName+" 날짜:%TF \t 내용:%s \t 잔액:%d\n",date,memo,balance);
	}
}
public class Homework0419_Account_2step {
	public static void main(String[] args) {
		Account2 acc_lee = new Account2("이길동_신한_110-12-123");
		Account2 acc_kim = new Account2("김길동_신한_110-12-123",100000);
		
		acc_lee.save(20000, "월급", new Date());
		acc_lee.print();
		acc_kim.save(20000, "월급", new Date());
		acc_kim.print();
		acc_lee.withdraw(2000, "용돈", new Date());
		acc_kim.print();
	}
}
