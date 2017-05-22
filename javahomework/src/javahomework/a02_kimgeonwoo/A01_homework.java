package javahomework.a02_kimgeonwoo;

import java.util.ArrayList;

class Bank{
	
	int account;
	String name;
	int total;
	ArrayList logSave = new ArrayList();
	ArrayList logWithDraw = new ArrayList();
	ArrayList logSaveContent = new ArrayList();
	ArrayList logWithDrawContent = new ArrayList();
	ArrayList logSaveDate = new ArrayList();
	ArrayList logWithDrawDate = new ArrayList();
	
	Bank(){}
	
	Bank(int account){
		this.account = account;
	}
	
	Bank(int account, String name, int total){
		this(account);
		this.name = name;
		this.total = total;
	}
	public int save(int money, String content, String Date){
		this.total += money;
		this.logSave.add(money);
		this.logSaveContent.add(content);
		this.logSaveDate.add(Date);
		return money;
	}
	public void withdraw(int money, String content, String Date){
		this.total -= money;
		this.logWithDraw.add(money);
		this.logWithDraw.add(content);
		this.logWithDrawDate.add(Date);
	}
	public void print(){
		System.out.println("입금내역");
		System.out.println("날짜\t용돈\t");
		for(int idx = 0 ; idx < this.logSaveDate.size(); idx++){
			System.out.println(this.logSaveDate.get(idx).toString() + '\t' + this.total + '\t' 
					+ this.logSaveContent.get(idx).toString() + '\t' + this.logSave.get(idx).toString());
		}
		System.out.println();
		System.out.println("출금내역");
		System.out.println("날짜\t용돈\t");
		for(int idx = 0 ; idx < this.logWithDrawDate.size(); idx++){
			System.out.println(this.logWithDrawDate.get(idx).toString() + '\t' + this.total + '\t' 
					+ this.logWithDrawContent.get(idx).toString() + '\t' + this.logWithDraw.get(idx).toString());
		}

	}
}


public class A01_homework {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Bank a = new Bank(12345465, "김건우", 1200000);
		a.save(5000, "입금", "2017/04/04");
		a.withdraw(5000, "출금", "2017/04/05");
		a.print();
	}

}
