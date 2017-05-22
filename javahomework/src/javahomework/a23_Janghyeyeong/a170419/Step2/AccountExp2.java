package javahomework.a23_Janghyeyeong.a170419.Step2;

class Account{
	String name;
	String content;
	String date="0000/00/00";
	String print="";
	int inMoney;
	int outMoney;
	int total;
	int idx=0;
	
	Account(String name){
		this.name=name;
	}
	Account(String name, int inMoney){
		this.name=name;
		this.inMoney=inMoney;
		total+=inMoney;
		print+=date+"\t"+content+"\t"+inMoney+"\t\t"+0+"\t\t"+total+"\n";
	}
	
	int save(int inMoney, String content, String date){
		this.inMoney=inMoney;
		this.content=content;
		total+=inMoney;
		print+=date+"\t"+content+"\t"+inMoney+"\t\t0\t\t"+total+"\n";
		return inMoney;
	}
	
	int withdraw(int outMoney, String content,  String date){
		this.outMoney=outMoney;
		this.content=content;
		if(total!=0){
			total-=outMoney;
			print+=date+"\t"+content+"\t0\t\t"+outMoney+"\t\t"+total+"\n";
		}else
			print+="잔액이 부족합니다.\n";
		
		return outMoney;
	}
	
	void print(){
		System.out.println("###### "+name+"님의 계좌 ######");
		System.out.println("날짜\t\t내용\t[입금액]\t\t[출금액]\t\t[총 잔액]");
		System.out.println(print);
		}
	
}
	


public class AccountExp2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Account a1 = new Account("test");
		Account a2 = new Account("test",100000);
		
		a1.save(3000000,"월급","2017/04/17");
		a1.withdraw(800000,"아이패드","2017/04/17");
		a1.withdraw(400000,"플스","2017/04/17");
		a1.withdraw(1800000,"파산","2017/04/17");
		a1.withdraw(1800000,"사치","2017/04/17");
		
		
		a2.withdraw(20000,"식비","2017/04/17");
		a2.save(3000000,"월급","2017/04/17");
		
		a1.print();
		a2.print();
	
	}

}
