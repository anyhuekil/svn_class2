package javahomework.a04_KimDongBeom;

/*
	생성자1 : 계정명
	생성자2 : ㄴ
*/

class Account{
	String aname;			// 계정명
	int ioMoney;			// 입출금액
	int totMoney;			// 총잔액
	String date;			// 날짜
	String content;			// 내용
	String printf;
	
	Account(String aname){
		this.aname = aname;
		this.printf = aname+" 님의 잔액\n날짜\t입출금액\t잔액\t내용\n";
	}
	Account(String aname, int totMoney){
		this.aname = aname;
		this.totMoney = totMoney;
		this.printf = aname+" 님의 잔액\n날짜\t입출금액\t잔액\t내용\n";
	}
	int save(int ioMoney, String content, String date){
		this.totMoney += ioMoney;
		this.printf += date+"\t+"+ioMoney+"\t"+totMoney+"\t"+content+"\n";
		return this.totMoney;
	}
	int withdraw(int ioMoney, String content, String date){
		this.totMoney -= ioMoney;
		this.printf += date+"\t-"+ioMoney+"\t"+totMoney+"\t"+content+"\n";
		return this.totMoney;
	}
	
	void print(){
		System.out.println(this.printf);
	}
}

public class A0419_Account {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Account a1 = new Account("ABC");
		Account a2 = new Account("DEF",80000);
		
		a1.save(100000, "용돈", "2017/4/15");
		a2.save(150000, "용돈", "2017/4/16");
		
		a1.withdraw(50000, "교재비", "2017/4/15");
		a2.withdraw(200000, "유흥비", "2017/4/17");
		
		a1.print();
		a2.print();
	}

}
