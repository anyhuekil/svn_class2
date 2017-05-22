package javahomework.a11_baeksangwoo;

import java.text.SimpleDateFormat;
import java.util.Date;


/*
 * 숙제
 * 은행에 가서
 * Account(계좌계정)
 * field : 계정명, 입금액, 출금액, 총잔액
 * 생성자1 : 계정명 입력
 * 생성자2 : 계정명, 초기 입금액
 * save(입금액, 날짜) 
 * 	- 계산처리
 * 	- return 입금된 금액
 * withdraw(출금액, 내용, 날짜)
 * print()
 * 날짜 용돈 	[@@@][@@@@][@@@@]
 */
class Account{
	String account_name;
	int deposit;
	int withdrawn;
	int total;
	Date d=new Date();
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
	Account(String account_name){
		this.account_name=account_name;
	}
	Account(String account_name, int deposit ){
		this.account_name=account_name;
		this.deposit=deposit;
		total+=deposit;
	}
	 int save(int deposit){
		total=+deposit;
		return deposit;
	}
	 void withdraw(int withdrawn){
		 String msg="";
		 if(total<withdrawn) {
			msg="금액부족";
		 }
		 else {
			 total-=withdrawn;
			 msg="출금됨";
		 }
		 System.out.println(msg);
	 }
	 void print(){
		 System.out.println("날짜:"+sdf.format(d)+", 계좌번호:"+account_name+", 입금액:"+deposit+", 출금액: "+withdrawn+", 총액: "+total);
	 }
}
/*
 * 은행(1단계)
 * -계좌
 * 	field : 계좌명, (총액)
 * 생성자(계좌명 입력)
 * input(입금액)
 * 		@@님 @@@ 입금했습니다.(현잔액@@)
 * outpunt(출금액)
 * 		@@님 @@@ 출금했습니다.(현잔액@@)
 */
/*
 * 자기소개(1단계)
 * field : 이름, 사는곳, 나이
 * 	생성자(이름입력)
 * 	inputData(사는곳, 나이)
 * 	introMyself(): 출력 처리
 * 		내 이름은 ~~이고, 나이는 ~~, 사는 곳은 ~~
 */
public class Homework_0419 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Account a01=new Account("00-000-0000");
		Account a02=new Account("12-1212-1212", 50000);
		a01.withdraw(10000);
		System.out.println(a01.save(50000));
		a01.print();
		a02.withdraw(5000);
		System.out.println(a02.save(1000));
		a02.print();
	}
}
