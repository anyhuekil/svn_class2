package HW;

public class Homework_0419 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		// HW01
		Person p1 = new Person("Yunha Park");
		p1.inputInfo("Seoul", 27);
		p1.introMyself();
		
		
		// HW02
		Account myAccount = new Account("Park");
		
		System.out.println("Name\t\tSave\tWithdraw\tTotal\tDate\t\tContent");
		myAccount.save(100, "savings", "2017-01-01");
		myAccount.save(100, "savings", "2017-02-01");
		myAccount.save(100, "savings", "2017-03-01");
		
		myAccount.withdraw(50, "pay bill", "2017-03-10");
		myAccount.withdraw(50, "pay bill", "2017-04-10");
		myAccount.withdraw(50, "pay bill", "2017-05-10");
		
	}

}

/*
 * 은행 (1단계)
 * - 계좌
 * 	* field: account-name,
 *  * constructor: input -> account-name,
 *  * method
 *  	input(money)
 *  	print : Mr. XXX save 0000
 *  	output(money)
 *  	print : Mr. XXX withdraw 000 currentMoney 000
 * */
class Account {
	private String name;
	private int currentMoney;
	
	Account(String name) {
		this.name = name;
	}
	
	Account(String name, int initCapital) {
		this.name = name;
		this.currentMoney = initCapital;
	}
	
	int save(int saveMoney, String content, String date) {
		this.currentMoney += saveMoney;
		printLog("save", saveMoney, this.currentMoney, date, content);
		
		return saveMoney;
	}
	
	int withdraw(int withdrawMoney, String content, String date) {
		this.currentMoney -= withdrawMoney;
		printLog("withdraw", withdrawMoney, this.currentMoney, date, content);
		
		return withdrawMoney;
	}
	
	void printLog(String type, int money, int totalMoney, String date, String content) {
		// date	content input output total
		
		if(type == "save") {
			System.out.println("Mr."+this.name+"\t\t$"+money+"\t\t\t$"+totalMoney+"\t"+date+"\t"+content);
		} else if(type == "withdraw") {
			System.out.println("Mr."+this.name+"\t\t\t$"+money+"\t\t$"+totalMoney+"\t"+date+"\t"+content);
		}
	}
}

class Person {
	private String name;
	private String location;
	private int age;
	
	Person(String name) {
		this.name = name;
	}
	
	void inputInfo(String location, int age) {
		this.location = location;
		this.age = age;
	}
	
	void introMyself() {
		System.out.println("MY name is " + this.name + ". I'm " 
				+ this.age + " year-old and I live in " + this.location);
	}
}


 
